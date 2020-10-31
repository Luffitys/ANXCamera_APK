.class public Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;
.super Ljava/lang/Object;
.source "AudioVolumeGroupChangeHandler.java"


# static fields
.field private static final AUDIOVOLUMEGROUP_EVENT_NEW_LISTENER:I = 0x4

.field private static final AUDIOVOLUMEGROUP_EVENT_VOLUME_CHANGED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AudioVolumeGroupChangeHandler"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mJniCallback:J

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$VolumeGroupCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private native native_finalize()V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    if-nez v0, :cond_c

    return-void

    :cond_c
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->handler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1b
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->native_finalize()V

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_10
    return-void
.end method

.method handler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public init()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioVolumeGroupChangeHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    monitor-exit p0

    return-void

    :cond_20
    new-instance v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;-><init>(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->native_setup(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public registerListener(Landroid/media/AudioManager$VolumeGroupCallback;)V
    .registers 5

    const-string/jumbo v0, "volume group callback shall not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1d

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public unregisterListener(Landroid/media/AudioManager$VolumeGroupCallback;)V
    .registers 3

    const-string/jumbo v0, "volume group callback shall not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
