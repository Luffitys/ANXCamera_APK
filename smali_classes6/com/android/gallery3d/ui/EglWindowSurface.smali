.class public Lcom/android/gallery3d/ui/EglWindowSurface;
.super Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;
.source ""


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field private mAvailability:Z

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Lcom/xiaomi/camera/liveshot/gles/EglCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;-><init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mAvailability:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mLock:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/EglWindowSurface;->init(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;Landroid/view/Surface;)V
    .locals 0
    .param p1    # Lcom/xiaomi/camera/liveshot/gles/EglCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;-><init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mAvailability:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mLock:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/EglWindowSurface;->init(Ljava/lang/Object;)V

    return-void
.end method

.method private init(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    instance-of v1, p1, Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mAvailability:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public makeCurrent()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mAvailability:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->makeCurrent()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public releaseEglSurface()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->releaseEglSurface()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mAvailability:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public swapBuffers()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/EglWindowSurface;->mAvailability:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->swapBuffers()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
