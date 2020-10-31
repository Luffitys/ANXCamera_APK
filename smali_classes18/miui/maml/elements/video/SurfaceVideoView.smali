.class public Lmiui/maml/elements/video/SurfaceVideoView;
.super Lmiui/maml/elements/video/BaseVideoView;
.source "SurfaceVideoView.java"


# static fields
.field private static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field private static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceVideoView"


# instance fields
.field private mFormat:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mMamlSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/component/MamlSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mSubLayer:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisibility:I

.field private mWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/component/MamlSurface;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mFormat:I

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mX:F

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mY:F

    new-instance v0, Lmiui/maml/elements/video/SurfaceVideoView$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/video/SurfaceVideoView$1;-><init>(Lmiui/maml/elements/video/SurfaceVideoView;)V

    iput-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lmiui/maml/util/HideSdkDependencyUtils;->Surface_getInstance()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurface:Landroid/view/Surface;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/video/SurfaceVideoView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    return-void
.end method

.method private initSize()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->getWidth()I

    move-result v3

    iput v3, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mWidth:I

    if-gtz v3, :cond_22

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mWidth:I

    :cond_22
    invoke-virtual {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->getHeight()I

    move-result v3

    iput v3, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHeight:I

    if-gtz v3, :cond_2e

    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHeight:I

    :cond_2e
    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->updateSize()V

    return-void
.end method

.method private postUpdateRunnable()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method private updateSize()V
    .registers 4

    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mScaleMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3a

    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    if-lez v0, :cond_3a

    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    if-lez v0, :cond_3a

    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v2, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_24

    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHeight:I

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mWidth:I

    goto :goto_3a

    :cond_24
    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v2, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_3a

    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHeight:I

    :cond_3a
    :goto_3a
    return-void
.end method

.method private updateSurfaceInternal()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3f

    invoke-static {}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_openTransaction()V

    :try_start_7
    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    if-nez v0, :cond_11

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_show(Landroid/view/SurfaceControl;)V

    goto :goto_16

    :cond_11
    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_hide(Landroid/view/SurfaceControl;)V

    :goto_16
    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    invoke-static {v0, v1}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setLayer(Landroid/view/SurfaceControl;I)V

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mX:F

    iget v2, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mY:F

    invoke-static {v0, v1, v2}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setPosition(Landroid/view/SurfaceControl;FF)V

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v2, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHeight:I

    invoke-static {v0, v1, v2}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setBufferSize(Landroid/view/SurfaceControl;II)V

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0, v1}, Lmiui/maml/util/HideSdkDependencyUtils;->Surface_copyFrom(Landroid/view/Surface;Landroid/view/SurfaceControl;)V
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_3a

    invoke-static {}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_closeTransaction()V

    goto :goto_3f

    :catchall_3a
    move-exception v0

    invoke-static {}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_closeTransaction()V

    throw v0

    :cond_3f
    :goto_3f
    return-void
.end method


# virtual methods
.method protected addSurfaceHolderCallback()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/component/MamlSurface;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lmiui/maml/component/MamlSurface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0, v1}, Lmiui/maml/elements/video/SurfaceVideoView;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_18
    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 9

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->initSize()V

    if-eqz p1, :cond_38

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_38

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/component/MamlSurface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lmiui/maml/component/MamlSurface;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    iget v4, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v5, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHeight:I

    iget v6, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mFormat:I

    const-string v3, "SurfaceVideoView"

    invoke-static/range {v1 .. v6}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_getInstance_with_params(Landroid/view/Surface;Landroid/view/SurfaceControl;Ljava/lang/String;III)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    :cond_38
    return-void
.end method

.method protected onSurfaceDestroyed()V
    .registers 4

    const-string v0, "SurfaceVideoView"

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/elements/video/SurfaceVideoView;->releaseMedia(Z)V

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_15
    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1e
    iget-object v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_29

    iget-object v2, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    :cond_29
    return-void
.end method

.method protected setFormat(I)V
    .registers 2

    iput p1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mFormat:I

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    if-eqz p1, :cond_10

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mHeight:I

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->updateSize()V

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_10
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_9
    return-void
.end method

.method public setX(F)V
    .registers 3

    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mX:F

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_b
    return-void
.end method

.method public setY(F)V
    .registers 3

    iget v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mY:F

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_b
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    goto :goto_9

    :cond_6
    const/4 v0, -0x2

    iput v0, p0, Lmiui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    :goto_9
    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    return-void
.end method

.method protected updateVideoSize()V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->updateSize()V

    invoke-direct {p0}, Lmiui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    return-void
.end method
