.class public Lmiui/imagefilters/TransformFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "TransformFilter.java"


# instance fields
.field private mBasedOnContent:Z

.field private mKeepAspectRatio:Z

.field private mMinVisibleAlpha:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointsMapping:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/imagefilters/TransformFilter;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/TransformFilter;->mBasedOnContent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/TransformFilter;->mKeepAspectRatio:Z

    const/16 v0, 0xa

    iput v0, p0, Lmiui/imagefilters/TransformFilter;->mMinVisibleAlpha:I

    return-void
.end method

.method private scanEdge(II[IZZ)I
    .registers 15

    if-eqz p4, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    if-eqz p4, :cond_9

    move v1, p2

    goto :goto_a

    :cond_9
    move v1, p1

    :goto_a
    const/4 v2, 0x0

    if-eqz p5, :cond_f

    move v3, v2

    goto :goto_11

    :cond_f
    add-int/lit8 v3, v0, -0x1

    :goto_11
    if-eqz p5, :cond_15

    add-int/lit8 v2, v0, -0x1

    :cond_15
    move v4, v3

    :goto_16
    if-eq v4, v2, :cond_38

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v1, :cond_30

    if-eqz p4, :cond_21

    mul-int v6, v5, p1

    add-int/2addr v6, v4

    goto :goto_24

    :cond_21
    mul-int v6, v4, p1

    add-int/2addr v6, v5

    :goto_24
    aget v7, p3, v6

    ushr-int/lit8 v7, v7, 0x18

    iget v8, p0, Lmiui/imagefilters/TransformFilter;->mMinVisibleAlpha:I

    if-le v7, v8, :cond_2d

    return v4

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_30
    if-eqz p5, :cond_35

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_35
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    :cond_38
    const/4 v4, -0x1

    return v4
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .registers 32

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget v8, v7, Lmiui/imagefilters/ImageData;->width:I

    iget v9, v7, Lmiui/imagefilters/ImageData;->height:I

    iget-object v10, v7, Lmiui/imagefilters/ImageData;->pixels:[I

    const/4 v11, 0x0

    const/4 v12, 0x0

    int-to-float v13, v8

    int-to-float v14, v9

    iget-object v0, v6, Lmiui/imagefilters/TransformFilter;->mPointsMapping:[F

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v5, 0x8

    if-nez v0, :cond_39

    new-array v1, v5, [F

    aput v11, v1, v22

    aput v12, v1, v21

    aput v13, v1, v20

    aput v12, v1, v19

    aput v13, v1, v18

    aput v14, v1, v17

    aput v11, v1, v16

    aput v14, v1, v15

    move-object v0, v1

    move-object/from16 v29, v0

    goto :goto_3b

    :cond_39
    move-object/from16 v29, v0

    :goto_3b
    iget-boolean v0, v6, Lmiui/imagefilters/TransformFilter;->mBasedOnContent:Z

    if-eqz v0, :cond_a9

    const/4 v4, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v15, v5

    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v0

    int-to-float v11, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v0

    int-to-float v12, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v0

    int-to-float v13, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v0

    int-to-float v14, v0

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v11, v0

    if-eqz v0, :cond_a8

    cmpl-float v0, v11, v13

    if-eqz v0, :cond_a8

    cmpl-float v0, v12, v14

    if-nez v0, :cond_78

    goto :goto_a8

    :cond_78
    iget-boolean v0, v6, Lmiui/imagefilters/TransformFilter;->mKeepAspectRatio:Z

    if-eqz v0, :cond_aa

    sub-float v0, v13, v11

    sub-float v1, v14, v12

    int-to-float v2, v8

    div-float v2, v0, v2

    int-to-float v3, v9

    div-float v3, v1, v3

    cmpl-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_9a

    int-to-float v2, v8

    div-float v2, v0, v2

    int-to-float v4, v9

    mul-float/2addr v2, v4

    sub-float v4, v2, v1

    div-float/2addr v4, v3

    sub-float/2addr v12, v4

    sub-float v4, v2, v1

    div-float/2addr v4, v3

    add-float/2addr v14, v4

    goto :goto_aa

    :cond_9a
    int-to-float v2, v9

    div-float v2, v1, v2

    int-to-float v4, v8

    mul-float/2addr v2, v4

    sub-float v4, v2, v0

    div-float/2addr v4, v3

    sub-float/2addr v11, v4

    sub-float v4, v2, v0

    div-float/2addr v4, v3

    add-float/2addr v13, v4

    goto :goto_aa

    :cond_a8
    :goto_a8
    return-void

    :cond_a9
    move v15, v5

    :cond_aa
    :goto_aa
    new-array v0, v15, [F

    aput v11, v0, v22

    aput v12, v0, v21

    aput v13, v0, v20

    aput v12, v0, v19

    aput v13, v0, v18

    aput v14, v0, v17

    aput v11, v0, v16

    const/4 v1, 0x7

    aput v14, v0, v1

    move-object/from16 v24, v0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x4

    move-object/from16 v23, v0

    move-object/from16 v26, v29

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-static/range {p1 .. p1}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, v6, Lmiui/imagefilters/TransformFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-static {v2}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v4

    iget-object v4, v4, Lmiui/imagefilters/ImageData;->pixels:[I

    iput-object v4, v7, Lmiui/imagefilters/ImageData;->pixels:[I

    :cond_f0
    return-void
.end method

.method public setBasedOnContent(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/imagefilters/TransformFilter;->mBasedOnContent:Z

    return-void
.end method

.method public setContentKeepAspectRatio(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/imagefilters/TransformFilter;->mKeepAspectRatio:Z

    return-void
.end method

.method public setMinVisibleAlpha(I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lmiui/imagefilters/TransformFilter;->mMinVisibleAlpha:I

    return-void
.end method

.method public setPointsMapping([F)V
    .registers 4
    .annotation runtime Lmiui/imagefilters/FilterParamType;
        value = .enum Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;
    .end annotation

    if-eqz p1, :cond_7

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    :cond_7
    iput-object p1, p0, Lmiui/imagefilters/TransformFilter;->mPointsMapping:[F

    :cond_9
    return-void
.end method
