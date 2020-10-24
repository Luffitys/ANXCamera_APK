.class public Lcom/android/camera/zoommap/ZoomMapController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomMap"

.field private static final ZOOM_RATIO_THRESHOLD:F = 15.0f

.field private static sPreviewSize:Ljava/util/HashMap;


# instance fields
.field private mActivityBase:Lcom/android/camera/ActivityBase;

.field private mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

.field private mGlTextureView:Lcom/android/camera/ui/GLTextureView;

.field private mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMainHandler:Landroid/os/Handler;

.field private mMapRect:Landroid/graphics/Rect;

.field private mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreviewRatio:Ljava/lang/String;

.field private mPreviewSize:Landroid/util/Size;

.field private mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

.field private mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

.field private mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mZoomMapSurface:Landroid/view/Surface;

.field private mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field private mZoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/zoommap/ZoomMapController;->sPreviewSize:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xe4

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    const-string v3, "1x1"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/zoommap/ZoomMapController;->sPreviewSize:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v3, 0x130

    invoke-direct {v1, v3, v2}, Landroid/util/Size;-><init>(II)V

    const-string v3, "4x3"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/zoommap/ZoomMapController;->sPreviewSize:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Size;

    const/16 v3, 0x194

    invoke-direct {v1, v3, v2}, Landroid/util/Size;-><init>(II)V

    const-string v2, "16x9"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-direct {p0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->initGLTextureView(Lcom/android/camera/ActivityBase;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMainHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1x1"

    goto :goto_0

    :cond_0
    const/16 p1, 0xa3

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewRatio:Ljava/lang/String;

    sget-object p1, Lcom/android/camera/zoommap/ZoomMapController;->sPreviewSize:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewRatio:Ljava/lang/String;

    const-string v1, "16x9"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    new-instance p1, Lcom/android/camera/zoommap/RegionHelper;

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p1, v0, v1, p2}, Lcom/android/camera/zoommap/RegionHelper;-><init>(Landroid/view/View;Landroid/util/Size;Z)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    return-void
.end method

.method private synthetic OooO00o(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    return-void
.end method

.method private synthetic OooO0OO()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method private synthetic OooO0o0()V
    .locals 2

    const-string v0, "ZoomMap"

    const-string v1, "removePipWindowTextureView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic OooO0oO(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->addPipWindowTextureViewIfNeeded()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomMapShow()V

    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->animatorInMapView()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->animatorOutMapView()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/zoommap/RegionHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/zoommap/ZoomMapController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/zoommap/ZoomMapController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/ui/GLTextureView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->drawZoomMap()V

    return-void
.end method

.method private addPipWindowTextureViewIfNeeded()V
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ZoomMap"

    const-string v1, "addPipWindowTextureViewIfNeeded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    invoke-virtual {v0}, Lcom/android/camera/zoommap/RegionHelper;->getPipWindowDefaultLocation()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mActivityBase:Lcom/android/camera/ActivityBase;

    const v2, 0x7f09008d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CameraRootView;

    const v2, 0x7f090405

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1, p0, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private animatorInMapView()V
    .locals 8

    const-string v0, "ZoomMap"

    const-string v1, "animatorInMapView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-array v6, v1, [F

    fill-array-data v6, :array_2

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v4, v5, v0

    aput-object v2, v5, v1

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/camera/zoommap/ZoomMapController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/zoommap/ZoomMapController$2;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animatorOutMapView()V
    .locals 7

    const-string v0, "ZoomMap"

    const-string v1, "animatorOutMapView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iput-object v4, p0, Lcom/android/camera/zoommap/ZoomMapController;->mLastAnimatorSet:Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private drawZoomMap()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "ZoomMap"

    if-nez v0, :cond_0

    const-string p0, "drawZoomMap ignore, frame not ready"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "drawZoomMap ignore, don\'t need draw"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->initZoomMapSurfaceTextureIfNeeded()V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/camera/zoommap/ZoomMapRenderManager;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/zoommap/ZoomMapRenderManager;-><init>(Landroid/graphics/SurfaceTexture;Lcom/android/gallery3d/ui/ExtTexture;Landroid/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    invoke-virtual {v0, p0}, Lcom/android/camera/zoommap/ZoomMapRenderManager;->drawZoomMap(Lcom/android/gallery3d/ui/GLCanvas;)Z

    return-void
.end method

.method private initGLTextureView(Lcom/android/camera/ActivityBase;)V
    .locals 1

    new-instance v0, Lcom/android/camera/ui/GLTextureView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/GLTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-instance p1, Lcom/android/camera/zoommap/ZoomMapController$1;

    invoke-direct {p1, p0}, Lcom/android/camera/zoommap/ZoomMapController$1;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initZoomMapSurfaceTextureIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/zoommap/ZoomMapCanvas;

    invoke-direct {v0}, Lcom/android/camera/zoommap/ZoomMapCanvas;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->setSize(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initZoomMapSurfaceTextureIfNeeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomMap"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGLCanvas:Lcom/android/camera/zoommap/ZoomMapCanvas;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ExtTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    return-void
.end method

.method private removePipWindowTextureView()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/zoommap/OooO0OO;

    invoke-direct {v1, p0}, Lcom/android/camera/zoommap/OooO0OO;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->OooO00o(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public synthetic OooO0Oo()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->OooO0OO()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO0o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->OooO0o0()V

    return-void
.end method

.method public synthetic OooO0oo(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->OooO0oO(Z)V

    return-void
.end method

.method public createZoomMapSurfaceIfNeeded()Landroid/view/Surface;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createZoomMapSurfaceIfNeeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomMap"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lcom/android/camera/zoommap/OooO0Oo;

    invoke-direct {v2, p0}, Lcom/android/camera/zoommap/OooO0Oo;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/zoommap/ZoomMapController$PipWindowRender;

    invoke-direct {v0, p0}, Lcom/android/camera/zoommap/ZoomMapController$PipWindowRender;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    new-instance v3, Lcom/android/camera/zoommap/OooO0O0;

    invoke-direct {v3, p0}, Lcom/android/camera/zoommap/OooO0O0;-><init>(Lcom/android/camera/zoommap/ZoomMapController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mGlTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomMapSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public onModuleDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/zoommap/ZoomMapController;->removePipWindowTextureView()V

    return-void
.end method

.method public onZoomRatioUpdate(F)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iput p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomRatio:F

    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRegionHelper:Lcom/android/camera/zoommap/RegionHelper;

    invoke-virtual {p0}, Lcom/android/camera/zoommap/RegionHelper;->initTranslation()V

    :cond_0
    return-void
.end method

.method public setMapRect(Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mIsHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "ZoomMap"

    if-eqz v0, :cond_0

    const-string p0, "setMapRect ignore, pip is hidden"

    :goto_0
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mSubFrameReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "setMapRect ignore, frame not ready"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->left:I

    iget v3, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->top:I

    iget v4, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->height:I

    add-int/2addr v4, v2

    iget v5, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->width:I

    add-int/2addr v5, v3

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mNeedDrawMap:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/zoommap/OooO00o;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/zoommap/OooO00o;-><init>(Lcom/android/camera/zoommap/ZoomMapController;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMapRect update to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mZoomRatio = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mZoomRatio:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController;->mRenderManager:Lcom/android/camera/zoommap/ZoomMapRenderManager;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/camera/zoommap/ZoomMapRenderManager;->updateZoomMapRect(Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method
