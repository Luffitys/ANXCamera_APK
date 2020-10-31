.class public Lmiui/imagefilters/SpreadFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "SpreadFilter.java"


# instance fields
.field private mIsAlphaSpread:Z

.field private mIsSpreadBlack:Z

.field private mRadius:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    return-void
.end method

.method private static final getColor([IIIII)I
    .registers 7

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p1

    add-int/lit8 v0, p4, -0x1

    invoke-static {v1, p2, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p2

    mul-int v0, p2, p3

    add-int/2addr v0, p1

    aget v0, p0, v0

    return v0
.end method

.method private getLuminance(II)I
    .registers 5

    invoke-static {p1}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v0

    iget-boolean v1, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    if-eqz v1, :cond_a

    rsub-int v0, v0, 0xff

    :cond_a
    mul-int/2addr v0, p2

    return v0
.end method

.method private processPerPixel([IIIII)I
    .registers 21

    move-object v0, p0

    iget v1, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    mul-int/2addr v1, v1

    iget-boolean v2, v0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    const/16 v3, 0xff

    if-eqz v2, :cond_c

    move v2, v3

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const/4 v4, 0x0

    const/4 v5, -0x1

    iget v6, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    neg-int v6, v6

    :goto_12
    iget v7, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    if-gt v6, v7, :cond_5f

    neg-int v7, v7

    :goto_17
    iget v8, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    if-gt v7, v8, :cond_56

    mul-int v8, v6, v6

    mul-int v9, v7, v7

    add-int/2addr v8, v9

    if-le v8, v1, :cond_29

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    goto :goto_53

    :cond_29
    add-int v8, p2, v7

    add-int v9, p3, v6

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static {v10, v8, v9, v11, v12}, Lmiui/imagefilters/SpreadFilter;->getColor([IIIII)I

    move-result v8

    ushr-int/lit8 v9, v8, 0x18

    and-int/2addr v9, v3

    invoke-direct {p0, v8, v9}, Lmiui/imagefilters/SpreadFilter;->getLuminance(II)I

    move-result v13

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v5, v13, :cond_45

    move v4, v8

    :cond_45
    iget-boolean v14, v0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    if-eqz v14, :cond_4e

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_52

    :cond_4e
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_52
    move v2, v14

    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_56
    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_5f
    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    shl-int/lit8 v3, v2, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v4

    or-int/2addr v3, v6

    return v3
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .registers 15

    iget v6, p1, Lmiui/imagefilters/ImageData;->width:I

    iget v7, p1, Lmiui/imagefilters/ImageData;->height:I

    iget-object v8, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->getBackPixels()[I

    move-result-object v9

    const/4 v0, 0x0

    move v10, v0

    :goto_c
    add-int/lit8 v0, v7, -0x1

    if-gt v10, v0, :cond_2c

    const/4 v0, 0x0

    move v11, v0

    :goto_12
    add-int/lit8 v0, v6, -0x1

    if-gt v11, v0, :cond_29

    mul-int v0, v10, v6

    add-int v12, v0, v11

    move-object v0, p0

    move-object v1, v8

    move v2, v11

    move v3, v10

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/SpreadFilter;->processPerPixel([IIIII)I

    move-result v0

    aput v0, v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_2c
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->swapPixels()V

    return-void
.end method

.method public setIsAlphaSpread(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    return-void
.end method

.method public setIsSpreadBlack(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    return-void
.end method

.method public setRadius(I)V
    .registers 2

    iput p1, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    return-void
.end method
