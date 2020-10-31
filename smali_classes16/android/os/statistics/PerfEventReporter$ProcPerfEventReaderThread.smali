.class Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;
.super Ljava/lang/Thread;
.source "PerfEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcPerfEventReaderThread"
.end annotation


# static fields
.field private static final sInstance:Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;


# instance fields
.field private latestSendUptimeMillis:J

.field private mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

.field private mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

.field private mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

.field private maxEventCountOfOneBatch:I

.field private myTid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;

    invoke-direct {v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->sInstance:Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "Binder:read-perf-event"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    new-instance v0, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    return-void
.end method

.method private dividePerfEventsFromBuffer(ILandroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_53

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4c

    iget v1, v2, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-ltz v1, :cond_4c

    iget v1, v2, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    const/high16 v3, 0x10000

    if-lt v1, v3, :cond_1d

    goto :goto_4c

    :cond_1d
    iget v1, v2, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    const/high16 v4, 0x10000000

    if-lt v1, v3, :cond_2a

    const/4 v1, 0x1

    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    goto :goto_42

    :cond_2a
    iget v1, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const v3, 0x40001

    and-int/2addr v1, v3

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit16 v3, v3, 0x300

    const/16 v5, 0x100

    if-ne v3, v5, :cond_42

    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    :cond_42
    :goto_42
    if-eqz v1, :cond_48

    invoke-virtual {p2, v2}, Landroid/os/statistics/FilteringPerfEventList;->addLast(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_50

    :cond_48
    invoke-virtual {p3, v2}, Landroid/os/statistics/FilteringPerfEventList;->addLast(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_50

    :cond_4c
    :goto_4c
    invoke-static {v2}, Landroid/os/statistics/FilteringPerfEventCache;->recycle(Landroid/os/statistics/FilteringPerfEvent;)V

    nop

    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_53
    return-void
.end method

.method private fetchPerfEventsFromBuffer(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 5

    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

    # invokes: Landroid/os/statistics/PerfEventReporter;->fetchProcUserspacePerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
    invoke-static {v0}, Landroid/os/statistics/PerfEventReporter;->access$100([Landroid/os/statistics/FilteringPerfEvent;)I

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v0, p1, p2}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->dividePerfEventsFromBuffer(ILandroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_b
    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

    # invokes: Landroid/os/statistics/PerfEventReporter;->fetchProcKernelPerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
    invoke-static {v1}, Landroid/os/statistics/PerfEventReporter;->access$200([Landroid/os/statistics/FilteringPerfEvent;)I

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v0, p1, p2}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->dividePerfEventsFromBuffer(ILandroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_16
    return-void
.end method

.method public static getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;
    .registers 1

    sget-object v0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->sInstance:Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;

    return-object v0
.end method

.method private loopOnce()V
    .registers 10

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    :goto_4
    iget-object v4, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v4, v4, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v5, v5, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/2addr v4, v5

    if-lez v4, :cond_14

    sget v4, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    shr-int/lit8 v4, v4, 0x2

    goto :goto_15

    :cond_14
    const/4 v4, -0x1

    :goto_15
    # invokes: Landroid/os/statistics/PerfEventReporter;->waitForPerfEventArrived(I)V
    invoke-static {v4}, Landroid/os/statistics/PerfEventReporter;->access$000(I)V

    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->getEarliestBeginUptimeMillisOfExecutingRootEvents()J

    move-result-wide v0

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {p0, v5, v6}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->fetchPerfEventsFromBuffer(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v2

    iget-wide v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->latestSendUptimeMillis:J

    sub-long v5, v2, v5

    sget v7, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4b

    iget-wide v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->latestSendUptimeMillis:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4b

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v5, v5, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v6, v6, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->maxEventCountOfOneBatch:I

    if-lt v5, v6, :cond_4a

    goto :goto_4b

    :cond_4a
    goto :goto_4

    :cond_4b
    :goto_4b
    iput-wide v2, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->latestSendUptimeMillis:J

    nop

    iget-object v4, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    new-instance v6, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v6}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    new-instance v6, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v6}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v6, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    invoke-static {}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->send(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;J)V

    return-void
.end method


# virtual methods
.method public hasPendingPerfEvents()Z
    .registers 4

    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mEffectivePerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mSuspectedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    if-eqz v0, :cond_a

    iget v2, v0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-gtz v2, :cond_10

    :cond_a
    if-eqz v1, :cond_12

    iget v2, v1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v2, :cond_12

    :cond_10
    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public run()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/statistics/PerfSuperviser;->setThreadPerfSupervisionOn(Z)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->myTid:I

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->latestSendUptimeMillis:J

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSystemServer()Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x258

    goto :goto_1b

    :cond_19
    const/16 v0, 0xc8

    :goto_1b
    iput v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->maxEventCountOfOneBatch:I

    new-array v0, v0, [Landroid/os/statistics/FilteringPerfEvent;

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/FilteringPerfEvent;

    iget v0, p0, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->myTid:I

    const/16 v1, -0xa

    invoke-static {v0, v1}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    :goto_28
    invoke-direct {p0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->loopOnce()V

    goto :goto_28
.end method
