.class public Lcom/android/camera/ui/ZoomView;
.super Landroid/view/View;
.source "ZoomView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomView"


# instance fields
.field private mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

.field private mIsHorizontal:Z

.field private mIsInited:Z

.field private mIsVisible:Z

.field private mIsZoomMoving:Z

.field private mMaxZoomRatio:F

.field private mMinZoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    return-void
.end method


# virtual methods
.method public getCurrentZoomRatio()F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->getCurrentZoomRatio()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public init()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    new-instance v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/ZoomView;->mIsHorizontal:Z

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/ZoomView;->mMinZoomRatio:F

    iget v2, p0, Lcom/android/camera/ui/ZoomView;->mMaxZoomRatio:F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->updateZoomRatio(FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    return p0
.end method

.method public isZoomMoving()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget v5, v2, v1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x1

    aget v2, v2, v6

    int-to-float v2, v2

    sub-float/2addr v5, v2

    float-to-int v2, v5

    invoke-direct {v3, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->startTouchDownAnimation(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v6, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v6, v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v2, v4, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    iget-object v1, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->stopTouchUpAnimation()V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v0, p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->move(Landroid/graphics/Point;)V

    :cond_4
    return v6

    :cond_5
    :goto_0
    return v1
.end method

.method public reInit()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->reset()V

    :cond_0
    return-void
.end method

.method public setCurrentZoomRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setCurrentZoomRatio(F)V

    :cond_0
    return-void
.end method

.method public setIsHorizonal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomView;->mIsHorizontal:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateZoomRatio(FF)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ZoomView;->mMinZoomRatio:F

    iput p2, p0, Lcom/android/camera/ui/ZoomView;->mMaxZoomRatio:F

    iget-object p1, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/android/camera/ui/ZoomView;->mMinZoomRatio:F

    iget p0, p0, Lcom/android/camera/ui/ZoomView;->mMaxZoomRatio:F

    invoke-virtual {p1, p2, p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->updateZoomRatio(FF)V

    :cond_0
    return-void
.end method
