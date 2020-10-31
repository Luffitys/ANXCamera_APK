.class public Lmiui/imagefilters/HslFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "HslFilter.java"


# instance fields
.field private mHueAdjust:F

.field private mHueModify:F

.field private mLightnessAdjust:F

.field private mLightnessModify:F

.field private mSaturationAdjust:F

.field private mSaturationModify:F

.field public useHsv:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v2, :cond_d9

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v3, :cond_d5

    mul-int v8, v7, v2

    add-int/2addr v8, v6

    aget v9, v4, v8

    iget-boolean v10, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v10, :cond_20

    invoke-static {v9, v5}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(I[F)V

    goto :goto_23

    :cond_20
    invoke-static {v9, v5}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    :goto_23
    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    const/4 v12, 0x2

    aget v12, v5, v12

    iget v13, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    const/4 v14, 0x0

    if-nez v13, :cond_38

    iget v10, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    goto :goto_50

    :cond_38
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_50

    iget v13, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    add-float/2addr v10, v13

    const/high16 v13, 0x43b40000    # 360.0f

    cmpl-float v15, v10, v13

    if-ltz v15, :cond_4b

    sub-float/2addr v10, v13

    goto :goto_50

    :cond_4b
    cmpg-float v15, v10, v14

    if-gez v15, :cond_50

    add-float/2addr v10, v13

    :cond_50
    :goto_50
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v13, :cond_5d

    iget v11, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    goto :goto_8f

    :cond_5d
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_8f

    iget v13, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    cmpg-float v16, v13, v14

    if-gtz v16, :cond_6f

    add-float/2addr v13, v15

    mul-float/2addr v11, v13

    move v15, v14

    goto :goto_89

    :cond_6f
    const/high16 v16, 0x40000000    # 2.0f

    mul-float v13, v13, v16

    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    const/high16 v18, 0x3f000000    # 0.5f

    sub-float v14, v14, v18

    mul-float v14, v14, v16

    add-float v16, v13, v15

    mul-float v11, v11, v16

    const/4 v15, 0x0

    cmpl-float v17, v14, v15

    if-lez v17, :cond_89

    add-float/2addr v11, v14

    :cond_89
    :goto_89
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v15, v11, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v11

    :cond_8f
    :goto_8f
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_9a

    iget v12, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    goto :goto_b7

    :cond_9a
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_b7

    iget v13, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    const/4 v14, 0x0

    cmpg-float v14, v13, v14

    if-gtz v14, :cond_ae

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v13, v14

    mul-float/2addr v12, v13

    goto :goto_b7

    :cond_ae
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v12

    sub-float v13, v14, v13

    mul-float/2addr v15, v13

    sub-float v12, v14, v15

    :cond_b7
    :goto_b7
    iget-boolean v13, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v13, :cond_c0

    invoke-static {v10, v11, v12}, Lmiui/imagefilters/ImageFilterUtils;->HsvToRgb(FFF)I

    move-result v13

    goto :goto_c4

    :cond_c0
    invoke-static {v10, v11, v12}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v13

    :goto_c4
    const v14, 0xffffff

    and-int/2addr v14, v13

    aget v15, v4, v8

    const/high16 v16, -0x1000000

    and-int v15, v15, v16

    or-int/2addr v14, v15

    aput v14, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    :cond_d5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    :cond_d9
    return-void
.end method

.method public setHueAdjust(F)V
    .registers 4

    const/high16 v0, -0x3ccc0000    # -180.0f

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    return-void
.end method

.method public setHueModify(F)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x43b3fffd    # 359.9999f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    return-void
.end method

.method public setLightnessAdjust(F)V
    .registers 4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    return-void
.end method

.method public setLightnessModify(F)V
    .registers 4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    return-void
.end method

.method public setSaturationAdjust(F)V
    .registers 4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    return-void
.end method

.method public setSaturationModify(F)V
    .registers 4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    return-void
.end method
