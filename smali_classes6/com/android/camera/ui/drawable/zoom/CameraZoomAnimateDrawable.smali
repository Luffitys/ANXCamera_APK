.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final VIDEO_SAT_ZOOM_RATIO_DELTA_X:[F

.field private static final VIDEO_SAT_ZOOM_RATIO_DELTA_Y:[F


# instance fields
.field private mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

.field private mContext:Landroid/content/Context;

.field private mDegree:I

.field private mIsHorizontal:Z

.field private mMaxZoomRatio:F

.field private mMinZoomRatio:F

.field private mSpeed:F

.field private mSupportVideoSat:Z

.field private mTouchDownAnimator:Landroid/animation/ValueAnimator;

.field private mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

.field private mTouchUpAnimator:Landroid/animation/ValueAnimator;

.field private mVideoSATZoomSpline:Landroid/util/Spline;

.field private mZoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->VIDEO_SAT_ZOOM_RATIO_DELTA_Y:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->VIDEO_SAT_ZOOM_RATIO_DELTA_X:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f8ccccd    # 1.1f
        0x3fe66666    # 1.8f
        0x3ff33333    # 1.9f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40800000    # 4.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41700000    # 15.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mDegree:I

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsHorizontal:Z

    new-instance v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    sget-object p1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->VIDEO_SAT_ZOOM_RATIO_DELTA_X:[F

    sget-object p2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->VIDEO_SAT_ZOOM_RATIO_DELTA_Y:[F

    invoke-static {p1, p2}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mVideoSATZoomSpline:Landroid/util/Spline;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return p1
.end method

.method static synthetic access$216(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;F)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)Landroid/util/Spline;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mVideoSATZoomSpline:Landroid/util/Spline;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMinZoomRatio:F

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMaxZoomRatio:F

    return p0
.end method

.method private isAnimatorRunning(Landroid/animation/Animator;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public containsSliderTouchRect(Landroid/graphics/Point;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->getSliderTouchRect()Landroid/graphics/Rect;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentZoomRatio()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public move(Landroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->getSpeed(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->move(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->reset()V

    :cond_3
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setCurrentZoomRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->setCurrentZoomRatio(F)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mDegree:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->setOrientation(I)V

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mDegree:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setSmoothSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    return-void
.end method

.method public setSupportVideoSat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSupportVideoSat:Z

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startTouchDownAnimation(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;Z)Z
    .locals 3

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-array p2, v0, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    new-array p2, v0, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    const/4 p0, 0x1

    return p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public stopTouchUpAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->startSliderBackAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;-><init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateZoomRatio(FF)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMinZoomRatio:F

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMaxZoomRatio:F

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->setZoomRange(FF)V

    return-void
.end method
