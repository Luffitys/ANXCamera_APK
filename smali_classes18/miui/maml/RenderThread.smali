.class public Lmiui/maml/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RenderThread$CommandThreadHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lmiui/maml/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mCmdHanlder:Lmiui/maml/RenderThread$CommandThreadHandler;

.field private mCmdThread:Landroid/os/HandlerThread;

.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mSignaled:Z

.field private mSleepSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererController;)V
    .registers 3

    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/RenderThread;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/RenderThread;->setPausedImpl(Z)V

    return-void
.end method

.method private doFinish()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_24

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/RendererController;

    invoke-virtual {v3}, Lmiui/maml/RendererController;->finish()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private doInit()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_27

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/RendererController;

    invoke-virtual {v3}, Lmiui/maml/RendererController;->init()V

    invoke-virtual {v3}, Lmiui/maml/RendererController;->requestUpdate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private doPause()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_21

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/RendererController;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private doResume()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_21

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/RendererController;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public static globalThread()Lmiui/maml/RenderThread;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    return-object v0
.end method

.method public static globalThread(Z)Lmiui/maml/RenderThread;
    .registers 3

    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-nez v1, :cond_e

    new-instance v1, Lmiui/maml/RenderThread;

    invoke-direct {v1}, Lmiui/maml/RenderThread;-><init>()V

    sput-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    :cond_e
    if-eqz p0, :cond_1f

    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    if-nez v1, :cond_1f

    :try_start_18
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Lmiui/maml/RenderThread;->start()V
    :try_end_1d
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_18 .. :try_end_1d} :catch_1e
    .catchall {:try_start_18 .. :try_end_1d} :catchall_23

    goto :goto_1f

    :catch_1e
    move-exception v1

    :cond_1f
    :goto_1f
    :try_start_1f
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_23

    throw v1
.end method

.method public static globalThreadStop()V
    .registers 2

    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-eqz v1, :cond_f

    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Lmiui/maml/RenderThread;->setStop()V

    const/4 v1, 0x0

    sput-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private initCmdThread()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cmd"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lmiui/maml/RenderThread$CommandThreadHandler;

    iget-object v1, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/RenderThread$CommandThreadHandler;-><init>(Lmiui/maml/RenderThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mCmdHanlder:Lmiui/maml/RenderThread$CommandThreadHandler;

    return-void
.end method

.method private setPausedImpl(Z)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mStop:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lmiui/maml/RenderThread;->signal()V

    :cond_7
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-ne v0, p1, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iput-boolean p1, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-nez p1, :cond_18

    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1d

    invoke-virtual {p0}, Lmiui/maml/RenderThread;->signal()V

    return-void

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private final waitSleep(J)V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-nez v0, :cond_21

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b

    goto :goto_21

    :cond_b
    iget-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1e

    if-nez v1, :cond_1c

    :try_start_12
    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_1e

    goto :goto_1c

    :catch_18
    move-exception v1

    :try_start_19
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :goto_21
    return-void
.end method

.method private waiteForResume()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_a
    return-void
.end method


# virtual methods
.method public addRendererController(Lmiui/maml/RendererController;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "RenderThread"

    const-string v2, "addRendererController: RendererController already exists"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_14
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    return-void

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mStarted:Z

    return v0
.end method

.method public removeRendererController(Lmiui/maml/RendererController;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public run()V
    .registers 14

    const-string v0, "RenderThread"

    const-string v1, "RenderThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doInit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mStarted:Z

    :goto_d
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mStop:Z

    if-nez v1, :cond_bc

    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_18} :catch_a1

    :try_start_18
    iget-boolean v2, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v2, :cond_33

    invoke-direct {p0}, Lmiui/maml/RenderThread;->doPause()V

    const-string v2, "RenderThread"

    const-string v3, "RenderThread paused, waiting for signal"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/RenderThread;->waiteForResume()V

    const-string v2, "RenderThread"

    const-string v3, "RenderThread resumed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/RenderThread;->doResume()V

    :cond_33
    monitor-exit v1

    goto :goto_38

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_35

    :try_start_37
    throw v0

    :cond_38
    :goto_38
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mStop:Z

    if-eqz v1, :cond_3e

    goto/16 :goto_bc

    :cond_3e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    iget-object v5, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_37 .. :try_end_4a} :catch_a1

    :try_start_4a
    iget-object v6, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_52
    if-ge v8, v6, :cond_84

    iget-boolean v9, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v9, :cond_59

    goto :goto_84

    :cond_59
    iget-object v9, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/maml/RendererController;

    invoke-virtual {v9}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v10

    if-eqz v10, :cond_6e

    invoke-virtual {v9}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v10

    if-nez v10, :cond_6e

    goto :goto_81

    :cond_6e
    const/4 v7, 0x0

    invoke-virtual {v9}, Lmiui/maml/RendererController;->hasInited()Z

    move-result v10

    if-nez v10, :cond_78

    invoke-virtual {v9}, Lmiui/maml/RendererController;->init()V

    :cond_78
    invoke-virtual {v9, v1, v2}, Lmiui/maml/RendererController;->updateIfNeeded(J)J

    move-result-wide v10

    cmp-long v12, v10, v3

    if-gez v12, :cond_81

    move-wide v3, v10

    :cond_81
    :goto_81
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_84
    :goto_84
    if-eqz v6, :cond_92

    if-eqz v7, :cond_89

    goto :goto_92

    :cond_89
    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_4a .. :try_end_8a} :catchall_9e

    :try_start_8a
    invoke-direct {p0, v3, v4}, Lmiui/maml/RenderThread;->waitSleep(J)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/maml/RenderThread;->mSignaled:Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_90} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8a .. :try_end_90} :catch_a1

    goto/16 :goto_d

    :cond_92
    :goto_92
    :try_start_92
    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    const-string v8, "RenderThread"

    const-string v9, "All controllers paused."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_d

    :catchall_9e
    move-exception v0

    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_92 .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw v0
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a1} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a0 .. :try_end_a1} :catch_a1

    :catch_a1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderThread"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    :catch_af
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderThread"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    :goto_bc
    nop

    :goto_bd
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doFinish()V

    iget-object v0, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "RenderThread"

    const-string v1, "RenderThread stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPaused(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RenderThread;->mCmdHanlder:Lmiui/maml/RenderThread$CommandThreadHandler;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderThread$CommandThreadHandler;->setPause(Z)V

    return-void
.end method

.method public setStop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mStop:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    return-void
.end method

.method public signal()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v1
.end method
