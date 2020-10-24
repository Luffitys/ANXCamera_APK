.class public Lnet/majorkernelpanic/streaming/gl/SurfaceView;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final ASPECT_RATIO_PREVIEW:I = 0x1

.field public static final ASPECT_RATIO_STRETCH:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private mAspectRatioMode:I

.field private mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

.field private mFrameAvailable:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mRunning:Z

.field private final mSyncObject:Ljava/lang/Object;

.field private mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

.field private mThread:Ljava/lang/Thread;

.field private mVARM:Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;

.field private mViewSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mThread:Ljava/lang/Thread;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mFrameAvailable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mRunning:Z

    iput p2, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mAspectRatioMode:I

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mViewSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mLock:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mSyncObject:Ljava/lang/Object;

    new-instance p1, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;

    invoke-direct {p1, p0}, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;-><init>(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mVARM:Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mAspectRatioMode:I

    return p0
.end method


# virtual methods
.method public addMediaCodecSurface(Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mViewSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-direct {v1, p1, v2}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;-><init>(Landroid/view/Surface;Lnet/majorkernelpanic/streaming/gl/SurfaceManager;)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mSyncObject:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mFrameAvailable:Z

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mVARM:Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->getAspectRatio()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mAspectRatioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mVARM:Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;

    invoke-virtual {v0, p1, p2}, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measure(II)V

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mVARM:Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mVARM:Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;

    invoke-virtual {p2}, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public removeMediaCodecSurface()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestAspectRatio(D)V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mVARM:Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->getAspectRatio()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mVARM:Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;

    invoke-virtual {v0, p1, p2}, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->setAspectRatio(D)V

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lnet/majorkernelpanic/streaming/gl/SurfaceView$1;

    invoke-direct {p2, p0}, Lnet/majorkernelpanic/streaming/gl/SurfaceView$1;-><init>(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    new-instance v0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mViewSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->makeCurrent()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->createTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mSyncObject:Ljava/lang/Object;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    iget-boolean v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mFrameAvailable:Z

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mViewSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->makeCurrent()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->updateFrame()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->drawFrame()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mViewSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->swapBuffer()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->makeCurrent()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->drawFrame()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {v3, v1, v2}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->setPresentationTime(J)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mCodecSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->swapBuffer()V

    goto :goto_1

    :cond_0
    const-string v1, "SurfaceView"

    const-string v2, "No frame received !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mViewSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->release()V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->release()V

    throw v0

    :catch_0
    :cond_2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mViewSurfaceManager:Lnet/majorkernelpanic/streaming/gl/SurfaceManager;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->release()V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->release()V

    return-void
.end method

.method public setAspectRatioMode(I)V
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mAspectRatioMode:I

    return-void
.end method

.method public startGLThread()V
    .locals 2

    const-string v0, "SurfaceView"

    const-string v1, "Thread started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    if-nez v0, :cond_0

    new-instance v0, Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mTextureManager:Lnet/majorkernelpanic/streaming/gl/TextureManager;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/gl/TextureManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mRunning:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->mRunning:Z

    return-void
.end method
