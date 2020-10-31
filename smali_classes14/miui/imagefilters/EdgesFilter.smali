.class public Lmiui/imagefilters/EdgesFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "EdgesFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .registers 21

    move-object/from16 v0, p1

    iget v1, v0, Lmiui/imagefilters/ImageData;->width:I

    iget v2, v0, Lmiui/imagefilters/ImageData;->height:I

    iget-object v3, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v2, v6, v7

    const/4 v8, 0x0

    aput v1, v6, v8

    const-class v9, I

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v2, :cond_35

    const/4 v10, 0x0

    :goto_20
    if-ge v10, v1, :cond_32

    mul-int v11, v9, v1

    add-int/2addr v11, v10

    aget v11, v3, v11

    aget-object v12, v6, v10

    invoke-static {v11}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v13

    aput v13, v12, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_35
    const/4 v9, 0x1

    :goto_36
    add-int/lit8 v10, v2, -0x1

    if-ge v9, v10, :cond_f6

    const/4 v10, 0x1

    :goto_3b
    add-int/lit8 v11, v1, -0x1

    if-ge v10, v11, :cond_f2

    mul-int v11, v9, v1

    add-int/2addr v11, v10

    add-int/lit8 v12, v10, -0x1

    aget-object v12, v6, v12

    add-int/lit8 v13, v9, -0x1

    aget v12, v12, v13

    neg-int v12, v12

    add-int/lit8 v13, v10, -0x1

    aget-object v13, v6, v13

    add-int/lit8 v14, v9, -0x1

    add-int/2addr v14, v5

    aget v13, v13, v14

    add-int/2addr v12, v13

    add-int/lit8 v13, v10, -0x1

    add-int/2addr v13, v7

    aget-object v13, v6, v13

    add-int/lit8 v14, v9, -0x1

    aget v13, v13, v14

    mul-int/2addr v13, v5

    sub-int/2addr v12, v13

    add-int/lit8 v13, v10, -0x1

    add-int/2addr v13, v7

    aget-object v13, v6, v13

    add-int/lit8 v14, v9, -0x1

    add-int/2addr v14, v5

    aget v13, v13, v14

    mul-int/2addr v13, v5

    add-int/2addr v12, v13

    add-int/lit8 v13, v10, -0x1

    add-int/2addr v13, v5

    aget-object v13, v6, v13

    add-int/lit8 v14, v9, -0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    add-int/lit8 v13, v10, -0x1

    add-int/2addr v13, v5

    aget-object v13, v6, v13

    add-int/lit8 v14, v9, -0x1

    add-int/2addr v14, v5

    aget v13, v13, v14

    add-int/2addr v12, v13

    add-int/lit8 v13, v10, -0x1

    aget-object v13, v6, v13

    add-int/lit8 v14, v9, -0x1

    aget v13, v13, v14

    add-int/lit8 v14, v10, -0x1

    aget-object v14, v6, v14

    add-int/lit8 v15, v9, -0x1

    add-int/2addr v15, v7

    aget v14, v14, v15

    mul-int/2addr v14, v5

    add-int/2addr v13, v14

    add-int/lit8 v14, v10, -0x1

    aget-object v14, v6, v14

    add-int/lit8 v15, v9, -0x1

    add-int/2addr v15, v5

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v14, v10, -0x1

    add-int/2addr v14, v5

    aget-object v14, v6, v14

    add-int/lit8 v15, v9, -0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    add-int/lit8 v14, v10, -0x1

    add-int/2addr v14, v5

    aget-object v14, v6, v14

    add-int/lit8 v15, v9, -0x1

    add-int/2addr v15, v7

    aget v14, v14, v15

    mul-int/2addr v14, v5

    sub-int/2addr v13, v14

    add-int/lit8 v14, v10, -0x1

    add-int/2addr v14, v5

    aget-object v14, v6, v14

    add-int/lit8 v15, v9, -0x1

    add-int/2addr v15, v5

    aget v14, v14, v15

    sub-int/2addr v13, v14

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v14, v15

    const/16 v15, 0xff

    invoke-static {v8, v14, v15}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v14

    sub-int/2addr v15, v14

    aget v14, v3, v11

    invoke-static {v14, v4}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    int-to-float v14, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v14, v14, v16

    aput v14, v4, v5

    invoke-static {v4}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb([F)I

    move-result v14

    const v16, 0xffffff

    and-int v16, v14, v16

    aget v17, v3, v11

    const/high16 v18, -0x1000000

    and-int v17, v17, v18

    or-int v16, v16, v17

    aput v16, v3, v11

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3b

    :cond_f2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_36

    :cond_f6
    return-void
.end method
