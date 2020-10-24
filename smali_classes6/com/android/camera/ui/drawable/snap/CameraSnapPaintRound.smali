.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source ""


# instance fields
.field private isDown:Z

.field public isRecordingCircle:Z

.field public isRoundingCircle:Z

.field private mBaseRoundRectRadius:F

.field private mCurrentRoundRectRadius:F

.field private mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

.field private mRapidly:Z

.field private mRecordingBgPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mRoundingProgress:F

.field private mShowCenterBitmap:Z

.field private mSrcRoundRectRadius:F

.field private mSrcRoundingProgress:F

.field private mTargetRoundRectRadius:F

.field private mTargetRoundWidthPercent:F

.field private mTargetRoundingProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    const p1, 0x3f266666    # 0.65f

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    const p1, 0x3ea3d70a    # 0.32f

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    return-void
.end method


# virtual methods
.method public clearBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    :cond_0
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mShowCenterBitmap:Z

    if-eqz p0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRecordingCircle:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    const v3, 0x3f0ccccd    # 0.55f

    :goto_0
    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRoundingCircle:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    mul-float v3, v0, v2

    mul-float/2addr v0, v2

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public prepareRecord(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    mul-float/2addr p1, v0

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    :goto_0
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    :goto_1
    mul-float/2addr p1, v0

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    mul-float/2addr p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    :goto_2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    if-eqz p2, :cond_4

    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p1, :cond_3

    const p1, 0x3ed70a3e    # 0.42000002f

    goto :goto_3

    :cond_3
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    :goto_3
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    const p1, 0x3eb33333    # 0.35f

    goto :goto_4

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    iget-boolean p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_4
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    return-void
.end method

.method public resetRecordingState()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRecordingCircle:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRoundingCircle:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    return-void
.end method

.method public setBitmapPatternTargetScale(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->setTargetScale(F)V

    return-void
.end method

.method public setRapidly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    return-void
.end method

.method public setRecordingBgColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setShowCenterBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mShowCenterBitmap:Z

    return-void
.end method

.method public setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    const v0, 0x3e8f5c29    # 0.28f

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    :goto_0
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    const p1, 0x3eb33333    # 0.35f

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    return-object p0
.end method

.method public showTargetBitmap(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mShowCenterBitmap:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    return-void
.end method

.method public updateValue(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/PaintPattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->updateValue(F)V

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->calculateCurrentValue(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    return-void
.end method
