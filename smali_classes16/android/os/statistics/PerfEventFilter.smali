.class public final Landroid/os/statistics/PerfEventFilter;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;,
        Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;,
        Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;,
        Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;
    }
.end annotation


# static fields
.field public static final APP_MAX_FILTER_INTERVAL_MILLIS:I

.field public static final APP_ONE_BATCH_MAX_EVENT_COUNT:I = 0xc8

.field public static final DAEMON_MAX_FILTER_INTERVAL_MILLIS:I

.field public static final DAEMON_ONE_BATCH_MAX_EVENT_COUNT:I = 0x7d0

.field public static final MAX_TIME_SPAN_MILLIS:I = 0x10000

.field public static final SYSTEM_SERVER_ONE_BATCH_MAX_EVENT_COUNT:I = 0x258


# instance fields
.field private effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

.field private effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

.field private final isAppSideFilter:Z

.field private latestBatchBeginUptimeMillis:J

.field private latestBatchEndUptimeMillis:J

.field private final maxFilterIntervalMillis:I

.field private final minWaitTimeMillis:I

.field private final suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

.field private final tempBatchTimestampMillis:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    shl-int/lit8 v0, v0, 0x5

    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    shl-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x7d0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Landroid/os/statistics/PerfEventFilter;->DAEMON_MAX_FILTER_INTERVAL_MILLIS:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    iput-boolean p1, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    iput p2, p0, Landroid/os/statistics/PerfEventFilter;->maxFilterIntervalMillis:I

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    goto :goto_13

    :cond_10
    sget v0, Landroid/os/statistics/PerfEventFilter;->APP_MAX_FILTER_INTERVAL_MILLIS:I

    add-int/2addr v0, p2

    :goto_13
    iput v0, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v8

    new-instance v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    const/4 v2, 0x1

    const/16 v3, 0x100

    const/high16 v4, 0x10000

    iget v5, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    move-object v1, v0

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;-><init>(ZIIIJ)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    new-instance v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;-><init>(ZIIIJ)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    new-instance v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    const/4 v2, 0x0

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    const/16 v4, 0x800

    iget v5, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;-><init>(ZIIIJ)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iput-wide v8, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchBeginUptimeMillis:J

    iput-wide v8, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    return-void
.end method

.method static synthetic access$000(I)I
    .registers 2

    invoke-static {p0}, Landroid/os/statistics/PerfEventFilter;->getCeilingOfPowerByTwo(I)I

    move-result v0

    return v0
.end method

.method private checkBlockedEffectiveMicroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z
    .registers 15

    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iget v1, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    and-int/lit16 v2, v0, 0x4000

    if-nez v2, :cond_1c

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_f

    move v2, v1

    move v3, v1

    goto :goto_20

    :cond_f
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_18

    shr-int/lit8 v2, v1, 0x2

    shl-int/lit8 v3, v1, 0x5

    goto :goto_20

    :cond_18
    shr-int/lit8 v2, v1, 0x2

    move v3, v1

    goto :goto_20

    :cond_1c
    shr-int/lit8 v2, v1, 0x5

    shl-int/lit8 v3, v1, 0x5

    :goto_20
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_7f

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v5, v2, v5

    iget-object v7, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v7, v7, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v7, v1, v7

    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v8, v8, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v8, v3, v8

    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-lt v7, v9, :cond_46

    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    add-int/lit8 v7, v9, -0x1

    :cond_46
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-lt v8, v9, :cond_52

    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    add-int/lit8 v8, v9, -0x1

    :cond_52
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move v10, v7

    :goto_57
    if-lt v10, v5, :cond_69

    aget-object v11, v9, v10

    iget v12, v11, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v12, :cond_66

    invoke-direct {p0, p1, v11}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z

    move-result v4

    if-eqz v4, :cond_66

    goto :goto_69

    :cond_66
    add-int/lit8 v10, v10, -0x1

    goto :goto_57

    :cond_69
    :goto_69
    if-nez v4, :cond_7f

    add-int/lit8 v10, v7, 0x1

    :goto_6d
    if-gt v10, v8, :cond_7f

    aget-object v11, v9, v10

    iget v12, v11, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v12, :cond_7c

    invoke-direct {p0, p1, v11}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z

    move-result v4

    if-eqz v4, :cond_7c

    goto :goto_7f

    :cond_7c
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    :cond_7f
    :goto_7f
    if-nez v4, :cond_f3

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-lt v3, v5, :cond_f3

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v5, v2, v5

    iget-object v7, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v7, v7, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v5, v7

    iget-object v7, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v7, v7, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v7, v1, v7

    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v8, v8, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v7, v8

    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v8, v8, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v8, v3, v8

    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v8, v9

    if-gez v5, :cond_ab

    const/4 v5, 0x0

    :cond_ab
    if-gez v7, :cond_ae

    const/4 v7, 0x0

    :cond_ae
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-le v7, v9, :cond_ba

    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    add-int/lit8 v7, v9, -0x1

    :cond_ba
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-lt v8, v9, :cond_c6

    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    add-int/lit8 v8, v9, -0x1

    :cond_c6
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v9, v9, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move v10, v7

    :goto_cb
    if-lt v10, v5, :cond_dd

    aget-object v11, v9, v10

    iget v12, v11, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v12, :cond_da

    invoke-direct {p0, p1, v11}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z

    move-result v4

    if-eqz v4, :cond_da

    goto :goto_dd

    :cond_da
    add-int/lit8 v10, v10, -0x1

    goto :goto_cb

    :cond_dd
    :goto_dd
    if-nez v4, :cond_f3

    add-int/lit8 v10, v7, 0x1

    :goto_e1
    if-gt v10, v8, :cond_f3

    aget-object v11, v9, v10

    iget v12, v11, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v12, :cond_f0

    invoke-direct {p0, p1, v11}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z

    move-result v4

    if-eqz v4, :cond_f0

    goto :goto_f3

    :cond_f0
    add-int/lit8 v10, v10, 0x1

    goto :goto_e1

    :cond_f3
    :goto_f3
    const/4 v5, 0x0

    if-eqz v4, :cond_f7

    return v5

    :cond_f7
    iget v7, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    shl-int/lit8 v8, v1, 0x1

    add-int/2addr v7, v8

    const/high16 v8, 0x10000

    if-le v7, v8, :cond_102

    const/high16 v7, 0x10000

    :cond_102
    iget-wide v8, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    int-to-long v10, v7

    add-long/2addr v8, v10

    iget-wide v10, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_10d

    goto :goto_10e

    :cond_10d
    move v6, v5

    :goto_10e
    return v6
.end method

.method private checkBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)Z
    .registers 15

    iget-wide v0, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    iget v2, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    iget v3, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    iget v4, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    iget-wide v5, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    sub-long/2addr v5, v0

    long-to-int v5, v5

    iget v6, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, v4

    iget-wide v6, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    sub-long/2addr v6, v0

    long-to-int v6, v6

    shr-int/2addr v6, v4

    if-gez v5, :cond_18

    const/4 v5, 0x0

    :cond_18
    if-lt v6, v2, :cond_1c

    add-int/lit8 v6, v2, -0x1

    :cond_1c
    const/4 v7, 0x1

    if-nez v5, :cond_2c

    iget-object v8, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v9, v8, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v9, :cond_2c

    invoke-direct {p0, p1, p2, v8}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)Z

    move-result v9

    if-eqz v9, :cond_2c

    return v7

    :cond_2c
    iget-object v8, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    move v9, v5

    :goto_2f
    if-gt v9, v6, :cond_44

    add-int v10, v3, v9

    rem-int/2addr v10, v2

    aget-object v10, v8, v10

    iget v11, v10, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v11, :cond_41

    invoke-direct {p0, p1, p2, v10}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)Z

    move-result v11

    if-eqz v11, :cond_41

    return v7

    :cond_41
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :cond_44
    const/4 v7, 0x0

    return v7
.end method

.method private checkBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v4, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget v6, v1, Landroid/os/statistics/FilteringPerfEvent;->enoughPeerWaitDuration:I

    const/4 v7, 0x0

    move-object/from16 v8, p3

    iget-object v9, v8, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    :goto_f
    if-eq v9, v8, :cond_a8

    iget-object v10, v9, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-object v9, v9, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v11, v11, v4

    if-ltz v11, :cond_22

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide v15, v2

    goto/16 :goto_ad

    :cond_22
    iget v11, v10, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const/high16 v12, 0x10000

    and-int/2addr v11, v12

    if-eqz v11, :cond_a0

    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_a0

    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v11, v11, v2

    if-lez v11, :cond_a0

    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v11, v11, v13

    if-gtz v11, :cond_a0

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    iget v12, v10, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    invoke-static {v11, v12}, Landroid/os/statistics/PerfEventConstants;->isBlockedBy(II)Z

    move-result v11

    if-nez v11, :cond_4f

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide v15, v2

    goto :goto_a5

    :cond_4f
    iget-wide v11, v10, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    move-wide v15, v2

    iget-wide v2, v10, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v2, v13, v2

    if-gez v2, :cond_5d

    iget-wide v2, v10, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    goto :goto_5f

    :cond_5d
    iget-wide v2, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    :goto_5f
    sub-long/2addr v11, v2

    long-to-int v2, v11

    iget v3, v10, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-eq v2, v3, :cond_79

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinOverlappedDurationMillis:I

    if-lt v2, v3, :cond_74

    shl-int/lit8 v3, v2, 0x5

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-ge v3, v11, :cond_79

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_a5

    :cond_74
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_a5

    :cond_79
    iget-object v3, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v3, v11, v12, v10}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->remove(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V

    iget-object v3, v0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-virtual {v3, v10}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    iget v3, v1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_93

    iget v3, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    goto :goto_99

    :cond_93
    iget v3, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    if-ge v3, v2, :cond_99

    iput v2, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    :cond_99
    :goto_99
    iget v3, v1, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    if-lt v3, v6, :cond_9f

    const/4 v7, 0x1

    goto :goto_ad

    :cond_9f
    goto :goto_a5

    :cond_a0
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide v15, v2

    :goto_a5
    move-wide v2, v15

    goto/16 :goto_f

    :cond_a8
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide v15, v2

    :goto_ad
    return v7
.end method

.method private checkEffectiveEvent(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 9

    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Landroid/os/statistics/PerfEventFilter;->checkBlockedEffectiveMicroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z

    move-result v0

    goto :goto_1a

    :cond_b
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_16

    invoke-direct {p0, p1}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z

    move-result v0

    goto :goto_1a

    :cond_16
    invoke-direct {p0, p1}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z

    move-result v0

    :goto_1a
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_66

    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-virtual {v3, p1}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    iget-object v3, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    if-nez v3, :cond_2d

    iget-wide v3, p1, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_7c

    :cond_2d
    invoke-static {}, Landroid/os/statistics/FilteringPerfEventCache;->obtain()Landroid/os/statistics/FilteringPerfEvent;

    move-result-object v3

    iget v4, p1, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    iput v4, v3, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    iget v4, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iput v4, v3, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    iget-wide v4, p1, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iput-wide v4, v3, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iget-object v4, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    iput-object v4, v3, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    iget v4, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    iput v4, v3, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    const/4 v4, 0x0

    iput-object v4, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    iput-wide v1, p1, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iget-wide v1, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v1, v3, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    invoke-virtual {p2, v3}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_7c

    :cond_66
    iget-object v3, p1, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    if-nez v3, :cond_75

    iget-wide v3, p1, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_71

    goto :goto_75

    :cond_71
    invoke-static {p1}, Landroid/os/statistics/FilteringPerfEventCache;->recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_7c

    :cond_75
    :goto_75
    iget-wide v1, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v1, p1, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    invoke-virtual {p2, p1}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method private checkEffectiveLevel(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 10

    iget-object v0, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v1, v0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v1, :cond_c

    invoke-direct {p0, p1, v0, p2}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    invoke-direct {p0, p1, v0, p2}, Landroid/os/statistics/PerfEventFilter;->completeEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    :cond_c
    iget v1, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    iget v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    iget-object v3, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v1, :cond_24

    add-int v5, v2, v4

    rem-int/2addr v5, v1

    aget-object v0, v3, v5

    iget v6, v0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v6, :cond_21

    invoke-direct {p0, p1, v0, p2}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_24
    return-void
.end method

.method private checkEffectiveMacroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z
    .registers 11

    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shr-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v2, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-ge v1, v2, :cond_27

    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v2, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v2, v1, v2

    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v3, v3, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move v4, v2

    :goto_15
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-ge v4, v5, :cond_27

    aget-object v5, v3, v4

    iget v6, v5, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v6, :cond_24

    invoke-direct {p0, p1, v5}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_27
    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v2, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v2, v1, v2

    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v3, v3, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v2, v3

    if-gez v2, :cond_35

    const/4 v2, 0x0

    :cond_35
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v3, v3, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move v4, v2

    :goto_3a
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-ge v4, v5, :cond_4c

    aget-object v5, v3, v4

    iget v6, v5, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v6, :cond_49

    invoke-direct {p0, p1, v5}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_4c
    iget v4, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    shl-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    const/high16 v5, 0x10000

    if-le v4, v5, :cond_57

    const/high16 v4, 0x10000

    :cond_57
    iget-wide v5, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iget-wide v7, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_63

    const/4 v5, 0x1

    goto :goto_64

    :cond_63
    const/4 v5, 0x0

    :goto_64
    return v5
.end method

.method private checkEffectiveMacroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V
    .registers 14

    iget-wide v0, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    iget v2, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    iget v3, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    iget v4, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    iget-wide v5, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    sub-long/2addr v5, v0

    long-to-int v5, v5

    iget v6, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, v4

    iget-wide v6, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    sub-long/2addr v6, v0

    long-to-int v6, v6

    shr-int/2addr v6, v4

    if-gez v5, :cond_18

    const/4 v5, 0x0

    :cond_18
    if-lt v6, v2, :cond_1c

    add-int/lit8 v6, v2, -0x1

    :cond_1c
    if-nez v5, :cond_27

    iget-object v7, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v8, v7, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v8, :cond_27

    invoke-direct {p0, p1, p2, v7}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_27
    iget-object v7, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    move v8, v5

    :goto_2a
    if-gt v8, v6, :cond_3b

    add-int v9, v3, v8

    rem-int/2addr v9, v2

    aget-object v9, v7, v9

    iget v10, v9, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v10, :cond_38

    invoke-direct {p0, p1, p2, v9}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveMacroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_3b
    return-void
.end method

.method private checkEffectiveMacroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v4, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    move-object/from16 v6, p3

    iget-object v7, v6, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    :goto_b
    if-eq v7, v6, :cond_7e

    iget-object v8, v7, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-object v7, v7, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-wide v9, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1d

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_82

    :cond_1d
    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_79

    iget-wide v9, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v9, v9, v2

    if-lez v9, :cond_79

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const/high16 v10, 0x10000

    and-int/2addr v9, v10

    if-nez v9, :cond_79

    iget-wide v9, v1, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    and-long/2addr v9, v11

    iget-wide v11, v1, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_40

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_b

    :cond_40
    iget-wide v9, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-wide v11, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v13, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v9, v9

    iget v10, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-eq v9, v10, :cond_6a

    sget v10, Landroid/os/statistics/PerfSupervisionSettings;->sMinOverlappedDurationMillis:I

    if-lt v9, v10, :cond_65

    shl-int/lit8 v10, v9, 0x5

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-ge v10, v11, :cond_6a

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_b

    :cond_65
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_b

    :cond_6a
    iget-object v10, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v10, v11, v12, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->remove(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V

    iget-object v10, v0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-virtual {v10, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_b

    :cond_79
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_b

    :cond_7e
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    :goto_82
    return-void
.end method

.method private checkEffectivePerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 5

    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v2, :cond_15

    invoke-direct {p0, v1, p1}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveLevel(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_30

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v2, :cond_2d

    invoke-direct {p0, v1, p1}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveLevel(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_30
    return-void
.end method

.method private checkEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 11

    iget v0, p2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v1, p2, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    invoke-virtual {p2}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    iget v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v3, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    :goto_13
    if-lez v0, :cond_3f

    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    add-int/lit8 v0, v0, -0x1

    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-nez v3, :cond_26

    invoke-direct {p0, v2, p3}, Landroid/os/statistics/PerfEventFilter;->checkEffectiveEvent(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    goto :goto_13

    :cond_26
    iget-object v3, v2, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    if-nez v3, :cond_37

    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_33

    goto :goto_37

    :cond_33
    invoke-static {v2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_13

    :cond_37
    :goto_37
    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    invoke-virtual {p3, v2}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_13

    :cond_3f
    return-void
.end method

.method private checkLevelSuspectedPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;J)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v5, v4, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v5, :cond_f

    invoke-direct {v0, v1, v4}, Landroid/os/statistics/PerfEventFilter;->recycleSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_f
    iget v5, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    iget v6, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    iget v7, v0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    iget v8, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    shl-int/lit8 v8, v8, 0x5

    add-int/2addr v7, v8

    const/high16 v8, 0x10000

    if-le v7, v8, :cond_20

    const/high16 v7, 0x10000

    :cond_20
    iget v9, v0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    iget v10, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->inclusiveMinPerfEventDurationMillis:I

    shl-int/lit8 v10, v10, 0x5

    add-int/2addr v9, v10

    if-le v9, v8, :cond_2b

    const/high16 v9, 0x10000

    :cond_2b
    iget-wide v10, v0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    int-to-long v12, v7

    sub-long/2addr v10, v12

    iget v8, v0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    int-to-long v12, v8

    sub-long v12, v2, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget v8, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    int-to-long v12, v8

    sub-long/2addr v10, v12

    iget-wide v12, v0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    int-to-long v14, v9

    sub-long/2addr v12, v14

    iget v8, v0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    int-to-long v14, v8

    sub-long v14, v2, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget v8, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->inclusiveMinPerfEventDurationMillis:I

    int-to-long v14, v8

    sub-long/2addr v12, v14

    iget-wide v14, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    sub-long v14, v10, v14

    long-to-int v8, v14

    iget v14, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    shr-int/2addr v8, v14

    iget-wide v14, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    sub-long v14, v12, v14

    long-to-int v14, v14

    iget v15, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    shr-int/2addr v14, v15

    if-gez v8, :cond_60

    const/4 v8, 0x0

    :cond_60
    if-lt v8, v5, :cond_64

    add-int/lit8 v8, v5, -0x1

    :cond_64
    if-gez v14, :cond_67

    const/4 v14, 0x0

    :cond_67
    if-lt v14, v5, :cond_6b

    add-int/lit8 v14, v5, -0x1

    :cond_6b
    iget-object v15, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    const/16 v16, 0x0

    move/from16 v20, v16

    move-object/from16 v16, v4

    move/from16 v4, v20

    :goto_75
    if-ge v4, v8, :cond_91

    add-int v17, v6, v4

    rem-int v17, v17, v5

    move/from16 v18, v7

    aget-object v7, v15, v17

    move/from16 v19, v9

    iget v9, v7, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v9, :cond_88

    invoke-direct {v0, v1, v7}, Landroid/os/statistics/PerfEventFilter;->recycleSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_88
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v7

    move/from16 v7, v18

    move/from16 v9, v19

    goto :goto_75

    :cond_91
    move/from16 v18, v7

    move/from16 v19, v9

    move v4, v8

    :goto_96
    if-gt v4, v14, :cond_af

    add-int v7, v6, v4

    rem-int/2addr v7, v5

    aget-object v9, v15, v7

    move/from16 v17, v5

    iget v5, v9, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v5, :cond_a8

    aget-object v5, v15, v7

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/os/statistics/PerfEventFilter;->checkSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;J)V

    :cond_a8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v9

    move/from16 v5, v17

    goto :goto_96

    :cond_af
    return-void
.end method

.method private checkNonBlockedEffectiveMicroEvent(Landroid/os/statistics/FilteringPerfEvent;)Z
    .registers 12

    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iget v1, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shr-int/lit8 v2, v1, 0x5

    move v3, v1

    const v4, 0x10001

    and-int/2addr v4, v0

    const/high16 v5, 0x10000

    if-ne v4, v5, :cond_11

    shl-int/lit8 v3, v1, 0x3

    :cond_11
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v4, v4, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-ge v2, v4, :cond_42

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v4, v4, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v4, v2, v4

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int v5, v3, v5

    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-lt v5, v6, :cond_2f

    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    add-int/lit8 v5, v6, -0x1

    :cond_2f
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move v7, v4

    :goto_34
    if-gt v7, v5, :cond_42

    aget-object v8, v6, v7

    iget v9, v8, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v9, :cond_3f

    invoke-direct {p0, p1, v8}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_42
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v4, v4, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-lt v3, v4, :cond_80

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v4, v4, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v4, v2, v4

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v4, v5

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v5, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int v5, v3, v5

    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v5, v6

    if-gez v4, :cond_61

    const/4 v4, 0x0

    :cond_61
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-lt v5, v6, :cond_6d

    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    add-int/lit8 v5, v6, -0x1

    :cond_6d
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v6, v6, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move v7, v4

    :goto_72
    if-gt v7, v5, :cond_80

    aget-object v8, v6, v7

    iget v9, v8, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v9, :cond_7d

    invoke-direct {p0, p1, v8}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V

    :cond_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    :cond_80
    const/4 v4, 0x0

    return v4
.end method

.method private checkNonBlockedEffectiveMicroEventWithSuspectedLevel(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;)V
    .registers 14

    iget-wide v0, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceUptimeMillis:J

    iget v2, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceCount:I

    iget v3, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->firstSliceIndex:I

    iget v4, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timesliceMillisPower:I

    iget-wide v5, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    sub-long/2addr v5, v0

    long-to-int v5, v5

    iget v6, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->exclusiveMaxPerfEventDurationMillis:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, v4

    iget-wide v6, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    sub-long/2addr v6, v0

    long-to-int v6, v6

    shr-int/2addr v6, v4

    if-gez v5, :cond_18

    const/4 v5, 0x0

    :cond_18
    if-lt v6, v2, :cond_1c

    add-int/lit8 v6, v2, -0x1

    :cond_1c
    if-nez v5, :cond_27

    iget-object v7, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    iget v8, v7, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v8, :cond_27

    invoke-direct {p0, p1, p2, v7}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_27
    iget-object v7, p2, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    move v8, v5

    :goto_2a
    if-gt v8, v6, :cond_3b

    add-int v9, v3, v8

    rem-int/2addr v9, v2

    aget-object v9, v7, v9

    iget v10, v9, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v10, :cond_38

    invoke-direct {p0, p1, p2, v9}, Landroid/os/statistics/PerfEventFilter;->checkNonBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_3b
    return-void
.end method

.method private checkNonBlockedEffectiveMicroEventWithSuspectedSlice(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v4, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    move-object/from16 v6, p3

    iget-object v7, v6, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    :goto_c
    if-eq v7, v6, :cond_98

    iget-object v8, v7, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-object v7, v7, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-wide v9, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v9, v9, v4

    if-ltz v9, :cond_1e

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_9c

    :cond_1e
    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const/high16 v10, 0x10000

    and-int/2addr v9, v10

    if-nez v9, :cond_92

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    cmp-long v9, v11, v13

    if-nez v9, :cond_92

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v9, v11, v2

    if-lez v9, :cond_92

    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v9, v11, v13

    if-gtz v9, :cond_92

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    if-lt v9, v10, :cond_44

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_c

    :cond_44
    iget-wide v11, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v13, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    move-wide v15, v11

    iget-wide v10, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v10, v13, v10

    if-gez v10, :cond_52

    iget-wide v10, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    goto :goto_54

    :cond_52
    iget-wide v10, v1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    :goto_54
    sub-long v11, v15, v10

    long-to-int v10, v11

    iget v11, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-eq v10, v11, :cond_79

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    const v12, 0x10001

    and-int/2addr v11, v12

    const/high16 v9, 0x10000

    if-ne v11, v9, :cond_74

    sget v9, Landroid/os/statistics/PerfSupervisionSettings;->sMinOverlappedDurationMillis:I

    if-lt v10, v9, :cond_74

    shl-int/lit8 v9, v10, 0x5

    iget v11, v1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    if-ge v9, v11, :cond_79

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_c

    :cond_74
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_c

    :cond_79
    iget-object v9, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v9, v11, v12, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->remove(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V

    iget-object v9, v0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-virtual {v9, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iget v13, v1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit8 v13, v13, 0x4

    or-int/2addr v9, v13

    iput v9, v8, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    goto/16 :goto_c

    :cond_92
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_c

    :cond_98
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    :goto_9c
    return-void
.end method

.method private checkSuspectedPerfEvents(J)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v2, :cond_14

    invoke-direct {p0, v1, p1, p2}, Landroid/os/statistics/PerfEventFilter;->checkLevelSuspectedPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;J)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-ge v0, v1, :cond_2e

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    if-lez v2, :cond_2b

    invoke-direct {p0, v1, p1, p2}, Landroid/os/statistics/PerfEventFilter;->checkLevelSuspectedPerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;J)V

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2e
    return-void
.end method

.method private checkSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;J)V
    .registers 15

    move-object v0, p2

    iget-object v1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    :goto_3
    if-eq v1, v0, :cond_44

    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget v5, p0, Landroid/os/statistics/PerfEventFilter;->minWaitTimeMillis:I

    int-to-long v6, v5

    sub-long v6, p3, v6

    cmp-long v3, v3, v6

    const/4 v4, 0x1

    if-gez v3, :cond_17

    const/4 v3, 0x1

    goto :goto_2f

    :cond_17
    iget v3, v2, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shl-int/lit8 v3, v3, 0x5

    add-int/2addr v5, v3

    const/high16 v3, 0x10000

    if-le v5, v3, :cond_22

    const/high16 v5, 0x10000

    :cond_22
    iget-wide v6, v2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iget-wide v8, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    cmp-long v3, v6, v8

    if-gtz v3, :cond_2e

    move v3, v4

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    if-eqz v3, :cond_43

    invoke-virtual {p2, v2}, Landroid/os/statistics/FilteringPerfEventList;->remove(Landroid/os/statistics/FilteringPerfEvent;)V

    iget v5, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    sub-int/2addr v5, v4

    iput v5, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v6, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    invoke-static {v2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V

    :cond_43
    goto :goto_3

    :cond_44
    return-void
.end method

.method private completeEffectiveSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V
    .registers 11

    iget v0, p2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v1, p2, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    invoke-virtual {p2}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    iget v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    iget-object v2, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v3, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    :goto_13
    if-lez v0, :cond_34

    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    add-int/lit8 v0, v0, -0x1

    iget-object v3, v2, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    if-nez v3, :cond_2c

    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    goto :goto_2c

    :cond_28
    invoke-static {v2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_13

    :cond_2c
    :goto_2c
    iget-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v3, v2, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    invoke-virtual {p3, v2}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_13

    :cond_34
    return-void
.end method

.method private static getCeilingOfPowerByTwo(I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_2
    if-ge v1, p0, :cond_a

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    shl-int v1, v2, v0

    goto :goto_2

    :cond_a
    return v0
.end method

.method private moveNewArrivedPerfEvents(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;)V
    .registers 13

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    iget v4, p1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v5, p1, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    invoke-virtual {p1}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    :goto_b
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v4, :cond_45

    iget-object v8, v5, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-object v5, v5, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    add-int/lit8 v4, v4, -0x1

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shr-int/lit8 v6, v9, 0x1

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shr-int/lit8 v9, v9, 0x2

    add-int/2addr v6, v9

    iget v9, v8, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    shr-int/lit8 v9, v9, 0x3

    add-int/2addr v6, v9

    iput v6, v8, Landroid/os/statistics/FilteringPerfEvent;->enoughPeerWaitDuration:I

    iput v7, v8, Landroid/os/statistics/FilteringPerfEvent;->matchedPeerWaitDuration:I

    iget-wide v6, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iput-wide v6, v8, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    invoke-virtual {p2, v8}, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_3a

    iget-wide v6, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_3c

    :cond_3a
    iget-wide v0, v8, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    :cond_3c
    iget-wide v6, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_44

    iget-wide v2, v8, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    :cond_44
    goto :goto_b

    :cond_45
    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aput-wide v0, v8, v7

    aput-wide v2, v8, v6

    return-void
.end method

.method private recycleSuspectedSlice(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 6

    iget v0, p2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    invoke-static {p2}, Landroid/os/statistics/FilteringPerfEventCache;->recycleAllUnchecked(Landroid/os/statistics/FilteringPerfEventList;)V

    iget v1, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->perfEventCount:I

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v2, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    return-void
.end method


# virtual methods
.method public filter(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;J)V
    .registers 7

    :goto_0
    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    if-lez v0, :cond_a

    invoke-direct {p0, p1}, Landroid/os/statistics/PerfEventFilter;->checkEffectivePerfEvents(Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iput-object v1, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEventsWaitingPeer:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v1, v1, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    if-lez v1, :cond_21

    iget-wide v1, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchBeginUptimeMillis:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/os/statistics/PerfEventFilter;->checkSuspectedPerfEvents(J)V

    :cond_21
    return-void
.end method

.method public hasPendingPerfEvents()Z
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    if-gtz v0, :cond_f

    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    iget v0, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    if-lez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public send(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 14

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    iget v4, p1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-lez v4, :cond_1d

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aput-wide v7, v4, v6

    aput-wide v7, v4, v5

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-direct {p0, p1, v4}, Landroid/os/statistics/PerfEventFilter;->moveNewArrivedPerfEvents(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;)V

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aget-wide v0, v4, v6

    aget-wide v2, v4, v5

    :cond_1d
    iget v4, p2, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v4, :cond_40

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aput-wide v7, v4, v6

    aput-wide v7, v4, v5

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;

    invoke-direct {p0, p2, v4}, Landroid/os/statistics/PerfEventFilter;->moveNewArrivedPerfEvents(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;)V

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aget-wide v9, v4, v6

    cmp-long v9, v0, v9

    if-lez v9, :cond_36

    aget-wide v0, v4, v6

    :cond_36
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempBatchTimestampMillis:[J

    aget-wide v9, v4, v5

    cmp-long v6, v2, v9

    if-gez v6, :cond_40

    aget-wide v2, v4, v5

    :cond_40
    cmp-long v4, v0, v7

    if-nez v4, :cond_48

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v0

    :cond_48
    cmp-long v4, v2, v7

    if-nez v4, :cond_50

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v2

    :cond_50
    iget-wide v4, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchBeginUptimeMillis:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchBeginUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/statistics/PerfEventFilter;->latestBatchEndUptimeMillis:J

    return-void
.end method
