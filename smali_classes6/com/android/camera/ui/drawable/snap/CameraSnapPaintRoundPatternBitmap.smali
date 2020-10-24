.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;
.super Lcom/android/camera/ui/drawable/snap/PaintPattern;
.source ""


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field protected scaleCurrent:F

.field protected scaleDst:F

.field protected scaleSrc:F


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;-><init>(Lcom/android/camera/ui/drawable/CameraPaintBase;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private drawCenterBitmap(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mOffsetX:F

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v2, v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mOffsetY:F

    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public directlyResult()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleSrc:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleDst:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->drawCenterBitmap(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public interceptDraw()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareTargetPattern()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleSrc:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleDst:F

    return-void
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->recycle()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public setOffset(FF)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mOffsetX:F

    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mOffsetY:F

    return-void
.end method

.method public setTargetScale(F)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleSrc:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleDst:F

    return-void
.end method

.method public updateValue(F)V
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleSrc:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleDst:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    :cond_0
    return-void
.end method
