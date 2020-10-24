.class public Lcom/android/camera/ui/AdjustAnimationView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

.field private static final POINTS_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBmp:Landroid/graphics/Bitmap;

.field private mBmpPoints:[F

.field private mCurrentPoints:[F

.field private mEndPoints:[F

.field private mEndTopMargin:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPreviewSize:Landroid/util/Size;

.field private mStartPoints:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/AdjustAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/android/camera/ui/AdjustAnimationView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mCurrentPoints:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701ee

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndTopMargin:I

    return-void
.end method

.method private synthetic OooO00o(Landroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mCurrentPoints:[F

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/AdjustAnimationView;->updateMatrix()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private initBmpPoints()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    iget-object v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x5

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    iget-object p0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x7

    aput p0, v0, v1

    return-void
.end method

.method private initEndPoints(IIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iget v5, v0, Lcom/android/camera/ui/AdjustAnimationView;->mEndTopMargin:I

    int-to-float v6, v1

    int-to-float v7, v2

    div-float v8, v6, v7

    move/from16 v9, p3

    int-to-float v9, v9

    move/from16 v10, p4

    int-to-float v10, v10

    div-float v11, v9, v10

    cmpl-float v8, v8, v11

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/high16 v18, 0x40000000    # 2.0f

    if-lez v8, :cond_0

    mul-float/2addr v9, v7

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    div-float v6, v6, v18

    iget-object v0, v0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    int-to-float v1, v3

    add-float/2addr v1, v6

    aput v1, v0, v17

    int-to-float v3, v5

    aput v3, v0, v16

    add-float v6, v1, v9

    aput v6, v0, v4

    aput v3, v0, v15

    aput v6, v0, v14

    add-int/2addr v5, v2

    int-to-float v2, v5

    aput v2, v0, v13

    aput v1, v0, v12

    aput v2, v0, v11

    move v6, v9

    goto :goto_0

    :cond_0
    mul-float/2addr v10, v6

    div-float/2addr v10, v9

    sub-float/2addr v7, v10

    div-float v7, v7, v18

    iget-object v0, v0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    int-to-float v2, v3

    aput v2, v0, v17

    int-to-float v5, v5

    add-float/2addr v5, v7

    aput v5, v0, v16

    add-int/2addr v3, v1

    int-to-float v1, v3

    aput v1, v0, v4

    aput v5, v0, v15

    aput v1, v0, v14

    add-float/2addr v5, v10

    aput v5, v0, v13

    aput v2, v0, v12

    aput v5, v0, v11

    move v7, v10

    :goto_0
    sget-object v0, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateMatrix()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmpPoints:[F

    iget-object v3, p0, Lcom/android/camera/ui/AdjustAnimationView;->mCurrentPoints:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/AdjustAnimationView;->OooO00o(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public clearBitmap()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public getImageRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object p0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    const/4 v4, 0x5

    aget p0, p0, v4

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object p0, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;[F)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/AdjustAnimationView;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBitmap: ratio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", points = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, p2

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    mul-float/2addr v4, v1

    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mBmp:Landroid/graphics/Bitmap;

    move v1, v8

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_4

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    aget v3, p2, v1

    aput v3, v2, v1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    aget v3, p2, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    iget-object v0, p0, Lcom/android/camera/ui/AdjustAnimationView;->mCurrentPoints:[F

    invoke-static {p2, v8, v0, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sget-object v2, Lcom/android/camera/ui/AdjustAnimationView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bmpWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bmpHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/ui/AdjustAnimationView;->initBmpPoints()V

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/camera/ui/AdjustAnimationView;->initEndPoints(IIII)V

    invoke-direct {p0}, Lcom/android/camera/ui/AdjustAnimationView;->updateMatrix()V

    return-void
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/AdjustAnimationView;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public startAnim(Landroid/animation/Animator$AnimatorListener;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v5, Lcom/android/camera/ui/AdjustAnimationView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/high16 v8, 0x72000000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "color"

    invoke-static {v3, v8, v5, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/Util;->getEnterDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    const/16 v7, 0x8

    new-array v8, v7, [Landroid/animation/PropertyValuesHolder;

    move v9, v4

    :goto_0
    const/4 v10, 0x2

    if-ge v9, v7, :cond_0

    iget-object v11, v0, Lcom/android/camera/ui/AdjustAnimationView;->mStartPoints:[F

    aget v11, v11, v9

    iget-object v12, v0, Lcom/android/camera/ui/AdjustAnimationView;->mEndPoints:[F

    aget v12, v12, v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "point_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v10, v10, [F

    aput v11, v10, v4

    aput v12, v10, v6

    invoke-static {v13, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    new-instance v7, Lcom/android/camera/ui/OooO00o;

    invoke-direct {v7, p0}, Lcom/android/camera/ui/OooO00o;-><init>(Lcom/android/camera/ui/AdjustAnimationView;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-wide/from16 v7, p2

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-array v0, v10, [Landroid/animation/Animator;

    aput-object v3, v0, v4

    aput-object v5, v0, v6

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startBackgroundAnimator()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    sget-object v0, Lcom/android/camera/ui/AdjustAnimationView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "color"

    invoke-static {p0, v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/Util;->getExitDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
