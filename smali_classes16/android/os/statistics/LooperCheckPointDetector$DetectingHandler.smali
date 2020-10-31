.class Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
.super Landroid/os/Handler;
.source "LooperCheckPointDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperCheckPointDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetectingHandler"
.end annotation


# instance fields
.field private final detectingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final lockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    return-void
.end method

.method private decodeDetectingBeginUptimeMs(Landroid/os/Message;)J
    .registers 6

    iget v0, p1, Landroid/os/Message;->arg2:I

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private decodeDetectingThread(Landroid/os/Message;)Ljava/lang/Thread;
    .registers 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method private decodeDetectingTid(Landroid/os/Message;)I
    .registers 3

    iget v0, p1, Landroid/os/Message;->arg2:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;
    .registers 8

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide v1, 0xffffffffL

    and-long/2addr v1, p3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x20

    shr-long v1, p3, v1

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget v1, v0, Landroid/os/Message;->arg2:I

    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method


# virtual methods
.method public beginLoopOnce(IJ)V
    .registers 9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1b

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;

    move-result-object v1

    # getter for: Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->access$000()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public endLooperOnce()V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    # getter for: Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->access$000()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_68

    :cond_5
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/16 v1, -0xa

    invoke-static {v0, v1}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingThread(Landroid/os/Message;)Ljava/lang/Thread;

    move-result-object v0

    # getter for: Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->access$000()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1d
    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_69

    if-eqz v2, :cond_68

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingTid(Landroid/os/Message;)I

    move-result v1

    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingBeginUptimeMs(Landroid/os/Message;)J

    move-result-wide v3

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v5

    new-instance v7, Landroid/os/statistics/LooperCheckPoint;

    invoke-direct {v7}, Landroid/os/statistics/LooperCheckPoint;-><init>()V

    const/4 v8, 0x5

    iput v8, v7, Landroid/os/statistics/LooperCheckPoint;->eventFlags:I

    iput-wide v3, v7, Landroid/os/statistics/LooperCheckPoint;->beginUptimeMillis:J

    iput-wide v5, v7, Landroid/os/statistics/LooperCheckPoint;->endUptimeMillis:J

    sget v8, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    invoke-static {v8, v1}, Landroid/os/statistics/PerfEvent;->generateCoordinationId(II)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/os/statistics/LooperCheckPoint;->inclusionId:J

    invoke-virtual {v7}, Landroid/os/statistics/LooperCheckPoint;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v8

    check-cast v8, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    sget v9, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    iput v9, v8, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->pid:I

    iput v1, v8, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadId:I

    invoke-static {v7}, Landroid/os/statistics/PerfEventReporter;->report(Landroid/os/statistics/PerfEvent;)V

    invoke-direct {p0, v0, v1, v5, v6}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;

    move-result-object v9

    # getter for: Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->access$000()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v10

    const-wide/16 v11, 0x7d0

    invoke-virtual {v10, v9, v11, v12}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_68
    :goto_68
    return-void

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method
