.class public Lcom/android/internal/colorextraction/drawable/ScrimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrimDrawable.java"


# static fields
.field private static final COLOR_ANIMATION_DURATION:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "ScrimDrawable"


# instance fields
.field private mAlpha:I

.field private mColorAnimation:Landroid/animation/ValueAnimator;

.field private mMainColor:I

.field private mMainColorTo:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/colorextraction/drawable/ScrimDrawable;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/colorextraction/drawable/ScrimDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mMainColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMainColor()I
    .registers 2

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mMainColor:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public synthetic lambda$setColor$0$ScrimDrawable(IILandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mMainColor:I

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mAlpha:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mAlpha:I

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public setColor(IZ)V
    .registers 7

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mMainColorTo:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_14
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mMainColorTo:I

    if-eqz p2, :cond_47

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mMainColor:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_4e

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/colorextraction/drawable/-$$Lambda$ScrimDrawable$UWtyAZ9Ss5P5TukFNvAyvh0pNf0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/colorextraction/drawable/-$$Lambda$ScrimDrawable$UWtyAZ9Ss5P5TukFNvAyvh0pNf0;-><init>(Lcom/android/internal/colorextraction/drawable/ScrimDrawable;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/internal/colorextraction/drawable/ScrimDrawable$1;

    invoke-direct {v2, p0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable$1;-><init>(Lcom/android/internal/colorextraction/drawable/ScrimDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    goto :goto_4c

    :cond_47
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mMainColor:I

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->invalidateSelf()V

    :goto_4c
    return-void

    nop

    :array_4e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->invalidateSelf()V

    return-void
.end method
