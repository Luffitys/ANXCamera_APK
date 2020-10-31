.class public Lmiui/imagefilters/GrayScaleFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "GrayScaleFilter.java"


# instance fields
.field private mBlackColor:I

.field private mWhiteColor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    const/4 v0, -0x1

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v5, v0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    ushr-int/lit8 v6, v5, 0x18

    iget v7, v0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    ushr-int/lit8 v8, v7, 0x18

    ushr-int/lit8 v9, v5, 0x10

    const/16 v10, 0xff

    and-int/2addr v9, v10

    ushr-int/lit8 v11, v7, 0x10

    and-int/2addr v11, v10

    ushr-int/lit8 v12, v5, 0x8

    and-int/2addr v12, v10

    ushr-int/lit8 v13, v7, 0x8

    and-int/2addr v13, v10

    and-int/2addr v5, v10

    and-int/2addr v7, v10

    const/4 v14, 0x0

    :goto_23
    if-ge v14, v2, :cond_6e

    const/4 v15, 0x0

    :goto_26
    if-ge v15, v3, :cond_64

    mul-int v16, v15, v2

    add-int v16, v16, v14

    aget v17, v4, v16

    invoke-static/range {v17 .. v17}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v10

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, v1, v6, v8, v10}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v18

    invoke-static {v0, v1, v9, v11, v10}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v19

    invoke-static {v0, v1, v12, v13, v10}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v20

    invoke-static {v0, v1, v5, v7, v10}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v0

    ushr-int/lit8 v21, v17, 0x18

    move/from16 v22, v2

    mul-int v2, v18, v21

    div-int/2addr v2, v1

    shl-int/lit8 v18, v2, 0x18

    shl-int/lit8 v21, v19, 0x10

    or-int v18, v18, v21

    shl-int/lit8 v21, v20, 0x8

    or-int v18, v18, v21

    or-int v18, v18, v0

    aput v18, v4, v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move v10, v1

    move/from16 v2, v22

    move-object/from16 v1, p1

    goto :goto_26

    :cond_64
    move/from16 v22, v2

    move v1, v10

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_23

    :cond_6e
    return-void
.end method

.method public setBlackColor(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    return-void
.end method

.method public setWhiteColor(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    return-void
.end method
