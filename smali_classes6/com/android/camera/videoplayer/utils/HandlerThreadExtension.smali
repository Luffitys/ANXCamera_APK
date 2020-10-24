.class public Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;
.super Landroid/os/HandlerThread;
.source ""


# static fields
.field private static final SHOW_LOGS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mStart:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$1;

    invoke-direct {p1, p0}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$1;-><init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V

    invoke-virtual {p0, p1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$2;

    invoke-direct {v1, p0}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$2;-><init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postQuit()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$3;

    invoke-direct {v1, p0}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$3;-><init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
