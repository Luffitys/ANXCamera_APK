.class public Landroid/hardware/camera2/legacy/GLThreadManager;
.super Ljava/lang/Object;
.source "GLThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_ALLOW_FRAMES:I = 0x5

.field private static final MSG_CLEANUP:I = 0x3

.field private static final MSG_DROP_FRAMES:I = 0x4

.field private static final MSG_NEW_CONFIGURATION:I = 0x1

.field private static final MSG_NEW_FRAME:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private final mGLHandlerCb:Landroid/os/Handler$Callback;

.field private final mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

.field private final mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;


# direct methods
.method public constructor <init>(IILandroid/hardware/camera2/legacy/CameraDeviceState;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    const-string v1, "GL Preview Producer"

    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    new-instance v0, Landroid/hardware/camera2/legacy/GLThreadManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/GLThreadManager$1;-><init>(Landroid/hardware/camera2/legacy/GLThreadManager;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerCb:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    invoke-direct {v0, p2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CameraDeviceGLThread-%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/hardware/camera2/legacy/RequestHandlerThread;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerCb:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    iput-object p3, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/camera2/legacy/GLThreadManager;Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object p1
.end method

.method static synthetic access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-object v0
.end method


# virtual methods
.method public allowNewFrames()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getCurrentSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public ignoreNewFrames()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public queueNewFrame()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1c

    :cond_15
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    const-string v2, "GLThread dropping frame.  Not consuming frames quickly enough!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    return-void
.end method

.method public quit()V
    .registers 8

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->quitSafely()Z

    :try_start_13
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->join()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_3e

    :catch_19
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Thread %s (%d) interrupted while quitting."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public setConfigurationAndWait(Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;",
            "Landroid/hardware/camera2/legacy/CaptureCollector;",
            ")V"
        }
    .end annotation

    const-string v0, "collector must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    new-instance v3, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;

    invoke-direct {v3, v1, p1, p2}, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;-><init>(Landroid/os/ConditionVariable;Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->start()V

    return-void
.end method

.method public waitUntilIdle()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilIdle()V

    return-void
.end method

.method public waitUntilStarted()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    return-void
.end method
