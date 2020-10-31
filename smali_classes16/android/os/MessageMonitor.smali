.class public Landroid/os/MessageMonitor;
.super Ljava/lang/Object;
.source "MessageMonitor.java"

# interfaces
.implements Landroid/os/ILooperMonitorable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageMonitor$MessageMonitorInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_MESSAGE_HISTORY_DUMP_DURATION:I = 0x1b7740

.field private static final DELAY_BINDER_INDEX:I = 0x5

.field private static final DELAY_BLKIO_INDEX:I = 0x0

.field private static final DELAY_FREEPAGES_INDEX:I = 0x2

.field private static final DELAY_NUMS:I = 0x7

.field private static final DELAY_RUNNABLE_TIME_INDEX:I = 0x4

.field private static final DELAY_RUNNING_TIME_INDEX:I = 0x3

.field private static final DELAY_SLOW_PATH_INDEX:I = 0x6

.field private static final DELAY_SWAPIN_INDEX:I = 0x1

.field private static final MSG_QUEUE_SIZE:I = 0x200

.field private static final NORMAL_LOG_CHAR_LENGTH:I = 0x100

.field private static final SMALL_LOG_CHAR_LENGTH:I = 0x80

.field private static final TAG:Ljava/lang/String; = "MessageMonitor"

.field private static final TAG_LOOPER:Ljava/lang/String; = "Looper"

.field private static final THREASHOLD_LATE_ACTIVITY_MS:I = 0x12c

.field private static final THREASHOLD_LATE_FRAME_MS:I = 0x12c

.field private static final sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/MessageMonitor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCallbacksLock:Ljava/lang/Object;


# instance fields
.field private mEnableMonitor:Z

.field private mEnableMonitorMessage:Z

.field private mLongMsgHistoryQueue:[Landroid/os/MessageMonitor$MessageMonitorInfo;

.field private mLongMsgIndexNext:I

.field private mMsgHistoryQueue:[Landroid/os/MessageMonitor$MessageMonitorInfo;

.field private mMsgIndexNext:I

.field private final mMsgLock:Ljava/lang/Object;

.field private mNextSeq:J

.field private mQueue:Landroid/os/MessageQueue;

.field private mRunningMessage:Landroid/os/Message;

.field private mRunningMessageInfo:Landroid/os/MessageMonitor$MessageMonitorInfo;

.field private mThreadName:Ljava/lang/String;

.field private mTid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/MessageMonitor;->sCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/MessageMonitor;->sCallbacksLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v1, v0, [Landroid/os/MessageMonitor$MessageMonitorInfo;

    iput-object v1, p0, Landroid/os/MessageMonitor;->mLongMsgHistoryQueue:[Landroid/os/MessageMonitor$MessageMonitorInfo;

    const/4 v1, 0x0

    iput v1, p0, Landroid/os/MessageMonitor;->mLongMsgIndexNext:I

    new-array v0, v0, [Landroid/os/MessageMonitor$MessageMonitorInfo;

    iput-object v0, p0, Landroid/os/MessageMonitor;->mMsgHistoryQueue:[Landroid/os/MessageMonitor$MessageMonitorInfo;

    iput v1, p0, Landroid/os/MessageMonitor;->mMsgIndexNext:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageMonitor;->mMsgLock:Ljava/lang/Object;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/os/MessageMonitor;->mNextSeq:J

    return-void
.end method

.method private addMessageToHistoryIfNeed(Landroid/os/MessageMonitor$MessageMonitorInfo;)V
    .registers 10

    iget-object v0, p0, Landroid/os/MessageMonitor;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/os/MessageMonitor;->mMsgHistoryQueue:[Landroid/os/MessageMonitor$MessageMonitorInfo;

    iget v2, p0, Landroid/os/MessageMonitor;->mMsgIndexNext:I

    aput-object p1, v1, v2

    iget v1, p0, Landroid/os/MessageMonitor;->mMsgIndexNext:I

    const/16 v2, 0x200

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Landroid/os/MessageMonitor;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Landroid/os/MessageMonitor;->mMsgIndexNext:I

    invoke-virtual {p1}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-lez v1, :cond_2c

    iget-object v1, p0, Landroid/os/MessageMonitor;->mLongMsgHistoryQueue:[Landroid/os/MessageMonitor$MessageMonitorInfo;

    iget v4, p0, Landroid/os/MessageMonitor;->mLongMsgIndexNext:I

    aput-object p1, v1, v4

    iget v1, p0, Landroid/os/MessageMonitor;->mLongMsgIndexNext:I

    invoke-static {v1, v3, v2}, Landroid/os/MessageMonitor;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Landroid/os/MessageMonitor;->mLongMsgIndexNext:I

    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private checkActivityLifecycle(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V
    .registers 12

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v3

    if-nez v3, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {v2, v1}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_25

    return-void

    :cond_25
    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "PerfMonitor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " looperActivity : package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms latency="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms running="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " procState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p2, Landroid/os/MessageMonitor$MessageMonitorInfo;->curProcState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransaction;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p2, Landroid/os/MessageMonitor$MessageMonitorInfo;->planTime:J

    invoke-virtual {p0, v7, v8}, Landroid/os/MessageMonitor;->getHistoryMsgInfoString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Looper"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkDoFrame(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V
    .registers 7

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_13

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PerfMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doFrame : time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms vsyncFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/perfdebug/VsyncFrame;->getInstance()Landroid/os/perfdebug/VsyncFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/perfdebug/VsyncFrame;->getCurFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " latency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " procState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/os/MessageMonitor$MessageMonitorInfo;->curProcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Landroid/os/MessageMonitor$MessageMonitorInfo;->planTime:J

    invoke-virtual {p0, v1, v2}, Landroid/os/MessageMonitor;->getHistoryMsgInfoString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Looper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkEssentialMsg(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V
    .registers 4

    invoke-static {p1}, Landroid/os/MessageMonitor;->isActivityTrancaction(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Landroid/os/MessageMonitor;->checkActivityLifecycle(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V

    goto :goto_13

    :cond_a
    invoke-static {p1}, Landroid/os/MessageMonitor;->isDoFrame(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1, p2}, Landroid/os/MessageMonitor;->checkDoFrame(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V

    :cond_13
    :goto_13
    return-void
.end method

.method private checkMsg(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V
    .registers 7

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfMonitor longMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/MessageMonitor$MessageMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/os/MessageMonitor$MessageMonitorInfo;->curProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Looper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    invoke-direct {p0, p1, p2}, Landroid/os/MessageMonitor;->checkEssentialMsg(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V

    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 6

    iget-boolean v0, p0, Landroid/os/MessageMonitor;->mEnableMonitorMessage:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Landroid/os/MessageMonitor;->dumpRunningMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/MessageMonitor;->dumpLtMessageHistory(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    :cond_a
    return-void
.end method

.method private dumpLtMessageHistory(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 14

    iget-object v0, p0, Landroid/os/MessageMonitor;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "History of long time messages on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/MessageMonitor;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/MessageMonitor;->mLongMsgIndexNext:I

    move v2, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    :cond_2b
    const/4 v6, -0x1

    const/16 v7, 0x200

    invoke-static {v2, v6, v7}, Landroid/os/MessageMonitor;->ringAdvance(III)I

    move-result v6

    move v2, v6

    iget-object v6, p0, Landroid/os/MessageMonitor;->mLongMsgHistoryQueue:[Landroid/os/MessageMonitor$MessageMonitorInfo;

    aget-object v6, v6, v2

    if-eqz v6, :cond_6b

    iget-wide v7, v6, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishTime:J

    sub-long v7, v3, v7

    cmp-long v7, v7, p3

    if-lez v7, :cond_42

    goto :goto_6b

    :cond_42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  Msg #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/MessageMonitor$MessageMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-ne v2, v1, :cond_2b

    monitor-exit v0

    return-void

    :cond_6b
    :goto_6b
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method private dumpRunningMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/os/MessageMonitor;->mRunningMessageInfo:Landroid/os/MessageMonitor$MessageMonitorInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current running message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/MessageMonitor;->mRunningMessageInfo:Landroid/os/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v1}, Landroid/os/MessageMonitor$MessageMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static formatCurrentTime(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryMsgInfos(J)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/os/MessageMonitor$MessageMonitorInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Landroid/os/MessageMonitor;->mMsgIndexNext:I

    const/4 v2, -0x1

    const/16 v3, 0x200

    invoke-static {v1, v2, v3}, Landroid/os/MessageMonitor;->ringAdvance(III)I

    move-result v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_2f

    iget-object v5, p0, Landroid/os/MessageMonitor;->mMsgHistoryQueue:[Landroid/os/MessageMonitor$MessageMonitorInfo;

    aget-object v6, v5, v1

    if-eqz v6, :cond_2f

    aget-object v5, v5, v1

    iget-wide v5, v5, Landroid/os/MessageMonitor$MessageMonitorInfo;->finishTime:J

    cmp-long v5, v5, p1

    if-gez v5, :cond_20

    goto :goto_2f

    :cond_20
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/os/MessageMonitor;->mMsgHistoryQueue:[Landroid/os/MessageMonitor$MessageMonitorInfo;

    aget-object v6, v6, v1

    invoke-interface {v0, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v1, v2, v3}, Landroid/os/MessageMonitor;->ringAdvance(III)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method private getThreadInfo()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/MessageMonitor;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/MessageMonitor;->mTid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const-string v1, ""

    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1d

    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_1d
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_68

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_40

    const-string/jumbo v4, "motion"

    goto :goto_42

    :cond_40
    const-string v4, "key"

    :goto_42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " seq="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5b

    const-string v4, " code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    const-string v4, " action="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_68
    const-string v2, ""

    return-object v2
.end method

.method private static isActivityTrancaction(Landroid/os/Message;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.ActivityThread$H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_24

    :cond_1a
    const/16 v1, 0x9f

    iget v2, p0, Landroid/os/Message;->what:I

    const/16 v3, 0x9f

    if-ne v2, v3, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0

    :cond_24
    :goto_24
    return v0
.end method

.method private static isDoFrame(Landroid/os/Message;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3b

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.view.Choreographer$FrameHandler"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3b

    :cond_1a
    const/4 v1, 0x0

    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-nez v2, :cond_21

    return v3

    :cond_21
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.view.Choreographer$FrameDisplayEventReceiver"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move v0, v3

    goto :goto_3a

    :cond_39
    nop

    :goto_3a
    return v0

    :cond_3b
    :goto_3b
    return v0
.end method

.method public static native nGetThreadCpuTime()J
.end method

.method public static native nGetThreadDelay([J)V
.end method

.method private static ringAdvance(III)I
    .registers 5

    add-int v0, p0, p1

    rem-int/2addr v0, p2

    if-gez v0, :cond_8

    add-int v1, v0, p2

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    return v1
.end method

.method private updateCallbackIfNeed(Z)V
    .registers 6

    sget-object v0, Landroid/os/MessageMonitor;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_5
    :try_start_5
    sget-object v3, Landroid/os/MessageMonitor;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    sget-object v3, Landroid/os/MessageMonitor;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    move v1, v2

    goto :goto_20

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_20
    :goto_20
    const/4 v2, -0x1

    if-eqz p1, :cond_30

    if-ne v1, v2, :cond_30

    sget-object v2, Landroid/os/MessageMonitor;->sCallbacks:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_30
    if-nez p1, :cond_39

    if-eq v1, v2, :cond_39

    sget-object v2, Landroid/os/MessageMonitor;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3b

    throw v1
.end method


# virtual methods
.method public checkInputEvent(Landroid/view/InputEvent;)V
    .registers 8

    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gtz v2, :cond_16

    return-void

    :cond_16
    invoke-direct {p0, p1}, Landroid/os/MessageMonitor;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "PerfMonitor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dispatchInputEvent : latency="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/os/MessageMonitor;->getHistoryMsgInfoString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Looper"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void
.end method

.method public dumpAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-wide/32 v0, 0x1b7740

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/MessageMonitor;->dumpAll(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpAll(Ljava/lang/String;J)Ljava/lang/String;
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Dump time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Current looper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/MessageMonitor;->getThreadInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, p2, p3}, Landroid/os/MessageMonitor;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump Looper message took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MessageMonitor"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    iget-boolean v0, p0, Landroid/os/MessageMonitor;->mEnableMonitorMessage:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Landroid/os/MessageMonitor;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    sget-object v1, Landroid/os/MessageMonitor;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/MessageMonitor;

    if-eqz v3, :cond_28

    const-wide/32 v4, 0x1b7740

    invoke-direct {v3, p1, p2, v4, v5}, Landroid/os/MessageMonitor;->dumpLtMessageHistory(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    :cond_28
    goto :goto_e

    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public enableMonitor(Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/MessageMonitor;->mEnableMonitor:Z

    :try_start_d
    iget-object v1, p0, Landroid/os/MessageMonitor;->mQueue:Landroid/os/MessageQueue;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/os/MessageMonitor;->mQueue:Landroid/os/MessageQueue;

    const-string v2, "enableMonitor"

    const-class v3, Ljava/lang/Void;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    move-exception v0

    :cond_1e
    :goto_1e
    goto :goto_21

    :cond_1f
    iput-boolean v0, p0, Landroid/os/MessageMonitor;->mEnableMonitor:Z

    :goto_21
    return-void
.end method

.method public enableMonitorMessage(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/os/MessageMonitor;->mEnableMonitorMessage:Z

    invoke-direct {p0, p1}, Landroid/os/MessageMonitor;->updateCallbackIfNeed(Z)V

    return-void
.end method

.method public getHistoryMsgInfoString(J)Ljava/lang/String;
    .registers 11

    invoke-direct {p0, p1, p2}, Landroid/os/MessageMonitor;->getHistoryMsgInfos(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const-string v1, ""

    return-object v1

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " historyMsgCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_62

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v3}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x32

    cmp-long v4, v4, v6

    if-lez v4, :cond_5f

    const-string v4, " (msgIndex="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " wall="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/MessageMonitor$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/MessageMonitor$MessageMonitorInfo;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getRunningMessage()Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Landroid/os/MessageMonitor;->mRunningMessage:Landroid/os/Message;

    return-object v0
.end method

.method public isMonitorLooper()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/MessageMonitor;->mEnableMonitor:Z

    return v0
.end method

.method public logLateFrameIfNeed(JJ)V
    .registers 5

    return-void
.end method

.method public markDispatch(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V
    .registers 7

    iget-boolean v0, p0, Landroid/os/MessageMonitor;->mEnableMonitorMessage:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceLooper()Z

    move-result v0

    if-eqz v0, :cond_27

    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "looper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_27
    iput-object p1, p0, Landroid/os/MessageMonitor;->mRunningMessage:Landroid/os/Message;

    iput-object p2, p0, Landroid/os/MessageMonitor;->mRunningMessageInfo:Landroid/os/MessageMonitor$MessageMonitorInfo;

    iget-wide v0, p0, Landroid/os/MessageMonitor;->mNextSeq:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/os/MessageMonitor;->mNextSeq:J

    iput-wide v0, p2, Landroid/os/MessageMonitor$MessageMonitorInfo;->mSeq:J

    invoke-virtual {p2, p1}, Landroid/os/MessageMonitor$MessageMonitorInfo;->markDispatch(Landroid/os/Message;)V

    return-void
.end method

.method public markFinish(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V
    .registers 5

    iget-boolean v0, p0, Landroid/os/MessageMonitor;->mEnableMonitorMessage:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->isEnableTraceLooper()Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MessageMonitor;->mRunningMessage:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageMonitor;->mRunningMessageInfo:Landroid/os/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {p2, p1}, Landroid/os/MessageMonitor$MessageMonitorInfo;->markFinish(Landroid/os/Message;)V

    invoke-direct {p0, p1, p2}, Landroid/os/MessageMonitor;->checkMsg(Landroid/os/Message;Landroid/os/MessageMonitor$MessageMonitorInfo;)V

    invoke-direct {p0, p2}, Landroid/os/MessageMonitor;->addMessageToHistoryIfNeed(Landroid/os/MessageMonitor$MessageMonitorInfo;)V

    return-void
.end method

.method public setQueue(Landroid/os/MessageQueue;)V
    .registers 2

    iput-object p1, p0, Landroid/os/MessageMonitor;->mQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method public setThreadNameAndTid(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Landroid/os/MessageMonitor;->mThreadName:Ljava/lang/String;

    iput p2, p0, Landroid/os/MessageMonitor;->mTid:I

    return-void
.end method
