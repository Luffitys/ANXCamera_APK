.class public Landroid/os/statistics/FilteringPerfEventFactory;
.super Ljava/lang/Object;
.source "FilteringPerfEventFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFilteringPerfEvent(IIJJJJJJ)Landroid/os/statistics/FilteringPerfEvent;
    .registers 30

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-static {}, Landroid/os/statistics/FilteringPerfEventCache;->obtain()Landroid/os/statistics/FilteringPerfEvent;

    move-result-object v4

    move/from16 v5, p0

    iput v5, v4, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    move/from16 v6, p1

    iput v6, v4, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iput-wide v0, v4, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iput-wide v2, v4, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    move-wide/from16 v7, p6

    iput-wide v7, v4, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    move-wide/from16 v9, p8

    iput-wide v9, v4, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    move-wide/from16 v11, p10

    iput-wide v11, v4, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    move-wide/from16 v13, p12

    iput-wide v13, v4, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const/4 v15, 0x0

    iput-object v15, v4, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    sub-long v5, v2, v0

    long-to-int v5, v5

    iput v5, v4, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    return-object v4
.end method

.method public static createFilteringPerfEvent(Landroid/os/statistics/PerfEvent;)Landroid/os/statistics/FilteringPerfEvent;
    .registers 2

    invoke-static {}, Landroid/os/statistics/FilteringPerfEventCache;->obtain()Landroid/os/statistics/FilteringPerfEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/statistics/FilteringPerfEvent;->set(Landroid/os/statistics/PerfEvent;)V

    return-object v0
.end method
