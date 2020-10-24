.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source ""


# instance fields
.field protected baseAngel:F

.field protected baseLineWidth:F

.field protected commonLineWidthCurrent:F

.field protected commonLineWidthDst:F

.field protected commonLineWidthSrc:F

.field private mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

.field protected motionLineWidthCurrent:F

.field protected motionLineWidthDst:F

.field protected motionLineWidthSrc:F

.field protected quarterAngelCurrent:F

.field protected quarterAngelDst:F

.field protected quarterAngelSrc:F

.field protected squashAngelCurrent:F

.field protected squashAngelDst:F

.field protected squashAngelSrc:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public clearPatternAndExternal()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseAngel:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelCurrent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelCurrent:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseLineWidth:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthCurrent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthCurrent:F

    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->interceptDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x5a

    if-ge v1, v4, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-nez v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/16 v5, 0x4f

    if-le v1, v5, :cond_2

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelCurrent:F

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelCurrent:F

    :goto_1
    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-eqz v5, :cond_7

    cmpl-float v4, v3, v2

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->needZero:Z

    if-eqz v4, :cond_4

    :cond_3
    :goto_2
    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    goto :goto_4

    :cond_4
    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    goto :goto_4

    :cond_6
    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthCurrent:F

    const/16 v5, 0x16

    if-eq v1, v5, :cond_8

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_8

    const/16 v5, 0x44

    if-eq v1, v5, :cond_8

    if-nez v1, :cond_9

    :cond_8
    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthCurrent:F

    :cond_9
    iget v8, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v7, v5, v0

    sub-float/2addr v5, v0

    add-float v9, v5, v4

    iget-object v10, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v8

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    return-void
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseAngel:F

    const/high16 p1, 0x40900000    # 4.5f

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseLineWidth:F

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    return-void
.end method

.method public intoFastPattern()V
    .locals 1

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecondPatternFast;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecondPatternFast;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    return-void
.end method

.method public intoProgressPattern()V
    .locals 1

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecondPatternProgress;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecondPatternProgress;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    return-void
.end method

.method public intoSlowPattern()V
    .locals 1

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecondPatternSlow;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecondPatternSlow;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    return-void
.end method

.method public removePatternOnly()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    return-void
.end method

.method public setResult()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->directlyResult()V

    :cond_0
    return-void
.end method

.method public updateValue(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->updateValue(F)V

    :cond_0
    return-void
.end method
