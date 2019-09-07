.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintCenterVV.java"


# static fields
.field private static final RECORDING_ROUND_WIDTH:F = 0.265f


# instance fields
.field private mCurrentRoundRectRadius:F

.field private mDurationText:Ljava/lang/String;

.field private mRectF:Landroid/graphics/RectF;

.field private mRoundingProgress:F

.field private mTextBound:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mRoundingProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const v1, 0x7f10001e

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0701b8

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextBound:Landroid/graphics/Rect;

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mCurrentRoundRectRadius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const v2, -0x15a1c4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mRoundingProgress:F

    mul-float v3, v0, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mDurationText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mDurationText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mDurationText:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
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

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public prepareRecord()V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mCurrentRoundRectRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mRoundingProgress:F

    return-void
.end method

.method public resetRecordingState()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mDurationText:Ljava/lang/String;

    return-void
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mDurationText:Ljava/lang/String;

    return-void
.end method

.method public updateRecordValue(FZ)V
    .locals 2

    const v0, 0x3f266666    # 0.65f

    const v1, 0x3e87ae14    # 0.265f

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mRoundingProgress:F

    iget p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    sub-float v0, p2, v1

    mul-float/2addr v0, p1

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mCurrentRoundRectRadius:F

    goto :goto_0

    :cond_0
    const p2, 0x3eb33333    # 0.35f

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mRoundingProgress:F

    iget p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    sub-float/2addr p2, v1

    mul-float/2addr p2, p1

    add-float/2addr p2, v1

    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->mCurrentRoundRectRadius:F

    :goto_0
    return-void
.end method
