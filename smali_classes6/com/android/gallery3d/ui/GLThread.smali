.class public Lcom/android/gallery3d/ui/GLThread;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "GLThread"


# instance fields
.field private mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

.field private mEglOffscreenSurface:Lcom/android/gallery3d/ui/EglOffscreenSurface;

.field private mGlHandler:Landroid/os/Handler;

.field private mGlHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x2L
            to = 0x3L
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/ui/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/opengl/EGLContext;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x2L
            to = 0x3L
        .end annotation
    .end param
    .param p3    # Landroid/opengl/EGLContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/os/HandlerThread;

    invoke-direct {p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "new Instance with thread id:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " name:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GLThread"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/gallery3d/ui/GLThread$1;

    invoke-direct {p2, p0, p3}, Lcom/android/gallery3d/ui/GLThread$1;-><init>(Lcom/android/gallery3d/ui/GLThread;Landroid/opengl/EGLContext;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/opengl/EGLContext;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/opengl/EGLContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/android/gallery3d/ui/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/GLThread;)Lcom/xiaomi/camera/liveshot/gles/EglCore;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/ui/GLThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/GLThread;Lcom/xiaomi/camera/liveshot/gles/EglCore;)Lcom/xiaomi/camera/liveshot/gles/EglCore;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/ui/GLThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/GLThread;)Lcom/android/gallery3d/ui/EglOffscreenSurface;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/ui/GLThread;->mEglOffscreenSurface:Lcom/android/gallery3d/ui/EglOffscreenSurface;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/GLThread;Lcom/android/gallery3d/ui/EglOffscreenSurface;)Lcom/android/gallery3d/ui/EglOffscreenSurface;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/ui/GLThread;->mEglOffscreenSurface:Lcom/android/gallery3d/ui/EglOffscreenSurface;

    return-object p1
.end method

.method private waitDone()Z
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/gallery3d/ui/GLThread$3;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/ui/GLThread$3;-><init>(Lcom/android/gallery3d/ui/GLThread;Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public getEglCore()Lcom/xiaomi/camera/liveshot/gles/EglCore;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/gallery3d/ui/GLThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHandler to do some thing on egl thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected onGLThreadPrepared()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lcom/android/gallery3d/ui/EglOffscreenSurface;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLThread;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/gallery3d/ui/EglOffscreenSurface;-><init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;II)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLThread;->mEglOffscreenSurface:Lcom/android/gallery3d/ui/EglOffscreenSurface;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->makeCurrent()Z

    return-void
.end method

.method public release()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release with thread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/gallery3d/ui/GLThread$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/GLThread$2;-><init>(Lcom/android/gallery3d/ui/GLThread;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLThread;->mGlHandler:Landroid/os/Handler;

    const-string p0, "release done"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
