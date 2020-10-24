.class public Lcom/android/camera/ui/ZoomView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

.field private mIsHorizontal:Z

.field private mIsInited:Z

.field private mIsVisible:Z

.field private mIsZoomMoving:Z

.field private mMaxZoomRatio:F

.field private mMinZoomRatio:F

.field private mPointView:Landroid/graphics/Point;

.field private mSupportVideoSat:Z

.field public mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ZoomView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->reset()V

    :cond_0
    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateHide(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

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

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/ZoomView;->mMinZoomRatio:F

    iget v2, p0, Lcom/android/camera/ui/ZoomView;->mMaxZoomRatio:F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->updateZoomRatio(FF)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPointView:Landroid/graphics/Point;

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

.method public onKeyEventSmoothZoom(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x3c5e7206    # 0.01357699f

    const/16 v3, 0xa8

    if-eq p1, v3, :cond_2

    const/16 v2, 0xa9

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const p1, -0x43a18dfa    # -0.01357699f

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setSmoothSpeed(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setSmoothSpeed(F)V

    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-virtual {p1, v2, v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->startTouchDownAnimation(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne v0, p1, :cond_4

    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->stopTouchUpAnimation(Z)V

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsInited:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPointView:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/ZoomView;->mPointView:Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->containsSliderTouchRect(Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->startTouchDownAnimation(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;->setGestureDetectorEnable(Z)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mPointView:Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->move(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-interface {p1}, Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;->onZoomTouchUp()V

    iget-boolean p1, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    if-nez p1, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomView;->mIsZoomMoving:Z

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->stopTouchUpAnimation(Z)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-interface {p0}, Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;->onZoomTouchDown()V

    :goto_0
    return v2

    :cond_8
    :goto_1
    return v1
.end method

.method public reInit()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ZoomView;->mMinZoomRatio:F

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

.method public setCurrentZoomRatio(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setCurrentZoomRatio(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsHorizonal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomView;->mIsHorizontal:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public setSupportVideoSat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ZoomView;->mSupportVideoSat:Z

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setSupportVideoSat(Z)V

    :cond_0
    return-void
.end method

.method public setZoomValueChangeListener(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ZoomView;->mZoomValueChangeListener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    return-void
.end method

.method public show(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomView;->mIsVisible:Z

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->setOrientation(I)V

    :cond_0
    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    return-void
.end method

.method public updateZoomRatio(FF)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ZoomView;->mMinZoomRatio:F

    iput p2, p0, Lcom/android/camera/ui/ZoomView;->mMaxZoomRatio:F

    iget-object p0, p0, Lcom/android/camera/ui/ZoomView;->mCameraZoomAnimateDrawable:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->updateZoomRatio(FF)V

    :cond_0
    return-void
.end method
