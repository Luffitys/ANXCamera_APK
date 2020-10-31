.class public Lmiui/maml/RenderVsyncUpdater;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;,
        Lmiui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderVsyncUpdater"


# instance fields
.field private mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mRendererControllerList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/RendererController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScheduleFrame:Ljava/lang/Runnable;

.field private mStopRefresh:Z

.field private mSyncInterval:I

.field private mVsyncLeft:J


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    const/16 v0, 0x10

    iput v0, p0, Lmiui/maml/RenderVsyncUpdater;->mSyncInterval:I

    new-instance v0, Lmiui/maml/RenderVsyncUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/RenderVsyncUpdater$1;-><init>(Lmiui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.ui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_2f

    :cond_2b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_2f
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, v0}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;-><init>(Lmiui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/RenderVsyncUpdater$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/RenderVsyncUpdater;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->scheduleFrame()V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/RenderVsyncUpdater;)J
    .registers 3

    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    return-wide v0
.end method

.method static synthetic access$222(Lmiui/maml/RenderVsyncUpdater;J)J
    .registers 5

    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    return-wide v0
.end method

.method static synthetic access$300(Lmiui/maml/RenderVsyncUpdater;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/RenderVsyncUpdater;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/RenderVsyncUpdater;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    return v0
.end method

.method private doRunUpdater()V
    .registers 5

    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    goto :goto_1f

    :cond_e
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static getInstance()Lmiui/maml/RenderVsyncUpdater;
    .registers 1

    sget-object v0, Lmiui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;->INSTANCE:Lmiui/maml/RenderVsyncUpdater;

    return-object v0
.end method

.method private scheduleFrame()V
    .registers 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    iget-object v4, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    monitor-enter v4

    :try_start_c
    iget-object v5, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    :goto_15
    if-ltz v7, :cond_50

    iget-object v8, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/RendererController;

    if-nez v8, :cond_2d

    iget-object v9, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_4d

    :cond_2d
    invoke-virtual {v8}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-virtual {v8}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v9

    if-nez v9, :cond_3a

    goto :goto_4d

    :cond_3a
    const/4 v6, 0x0

    invoke-virtual {v8}, Lmiui/maml/RendererController;->hasInited()Z

    move-result v9

    if-nez v9, :cond_44

    invoke-virtual {v8}, Lmiui/maml/RendererController;->init()V

    :cond_44
    invoke-virtual {v8, v0, v1}, Lmiui/maml/RendererController;->updateIfNeeded(J)J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-gez v11, :cond_4d

    move-wide v2, v9

    :cond_4d
    :goto_4d
    add-int/lit8 v7, v7, -0x1

    goto :goto_15

    :cond_50
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_5a

    if-eqz v6, :cond_57

    goto :goto_5a

    :cond_57
    iput-boolean v7, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    goto :goto_63

    :cond_5a
    :goto_5a
    iput-boolean v8, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    const-string v9, "RenderVsyncUpdater"

    const-string v10, "All controllers paused."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_c .. :try_end_64} :catchall_96

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_70

    iput-boolean v8, p0, Lmiui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    goto :goto_72

    :cond_70
    iput-boolean v7, p0, Lmiui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    :goto_72
    iget-boolean v4, p0, Lmiui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    if-nez v4, :cond_95

    iget-boolean v4, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    if-nez v4, :cond_95

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_95

    iget v6, p0, Lmiui/maml/RenderVsyncUpdater;->mSyncInterval:I

    int-to-long v6, v6

    div-long v6, v2, v6

    iput-wide v6, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_90

    const-wide/16 v4, 0x1

    sub-long/2addr v6, v4

    iput-wide v6, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    :cond_90
    iget-object v4, p0, Lmiui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {v4}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    :cond_95
    return-void

    :catchall_96
    move-exception v5

    :try_start_97
    monitor-exit v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v5
.end method


# virtual methods
.method public addRendererController(Lmiui/maml/RendererController;)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_21

    iget-object v3, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/RendererController;

    if-ne v3, p1, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_21
    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public forceUpdate()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->doRunUpdater()V

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->forceUpdate()V

    return-void
.end method

.method public removeRendererController(Lmiui/maml/RendererController;)V
    .registers 7

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_b
    if-ltz v2, :cond_28

    iget-object v3, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/RendererController;

    if-eqz v3, :cond_23

    if-ne v3, p1, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_23
    :goto_23
    iget-object v4, p0, Lmiui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public setSyncInterval(I)V
    .registers 2

    iput p1, p0, Lmiui/maml/RenderVsyncUpdater;->mSyncInterval:I

    return-void
.end method

.method public triggerUpdate()V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->doRunUpdater()V

    return-void
.end method
