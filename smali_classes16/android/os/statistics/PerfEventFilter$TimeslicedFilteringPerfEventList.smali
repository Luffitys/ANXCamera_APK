.class public abstract Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TimeslicedFilteringPerfEventList"
.end annotation


# instance fields
.field public final exclusiveMaxPerfEventDurationMillis:I

.field public firstSliceIndex:I

.field public firstSliceUptimeMillis:J

.field public final inclusiveMinPerfEventDurationMillis:I

.field public final outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

.field public perfEventCount:I

.field public final secondaryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/statistics/FilteringPerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final timesliceCount:I

.field public final timesliceMillis:I

.field public final timesliceMillisPower:I

.field public final timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;


# direct methods
.method public constructor <init>(IIJIILjava/util/Comparator;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJII",
            "Ljava/util/Comparator<",
            "Landroid/os/statistics/FilteringPerfEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    # invokes: Landroid/os/statistics/PerfEventFilter;->getCeilingOfPowerByTwo(I)I
    invoke-static {p1}, Landroid/os/statistics/PerfEventFilter;->access$000(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceMillisPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iput v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceMillis:I

    div-int v1, p2, v0

    mul-int/2addr v0, v1

    if-eq v0, p2, :cond_1c

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    iput v1, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceCount:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_28

    goto :goto_29

    :cond_28
    move-wide v2, p3

    :goto_29
    iget v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceMillis:I

    int-to-long v4, v0

    div-long/2addr v2, v4

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceUptimeMillis:J

    iget v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceCount:I

    new-array v0, v0, [Landroid/os/statistics/FilteringPerfEventList;

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    const/4 v0, 0x0

    :goto_38
    iget v2, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceCount:I

    if-ge v0, v2, :cond_48

    new-instance v2, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v2}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_48
    iput p5, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->inclusiveMinPerfEventDurationMillis:I

    iput p6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->exclusiveMaxPerfEventDurationMillis:I

    iput-object p7, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->secondaryComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final add(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 14

    iget-wide v0, p1, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    iget-wide v2, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceUptimeMillis:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    if-ltz v2, :cond_46

    iget v3, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceMillisPower:I

    shr-int v3, v2, v3

    iget v4, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceCount:I

    if-ge v3, v4, :cond_1a

    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    iget v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    add-int/2addr v6, v3

    rem-int/2addr v6, v4

    aget-object v4, v5, v6

    goto :goto_45

    :cond_1a
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    :cond_1c
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    iget v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    aget-object v5, v5, v6

    iget v6, v5, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v6, :cond_29

    invoke-virtual {v4, v5}, Landroid/os/statistics/FilteringPerfEventList;->moveAllFrom(Landroid/os/statistics/FilteringPerfEventList;)V

    :cond_29
    iget v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceCount:I

    rem-int/2addr v6, v7

    iput v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    iget-wide v8, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceUptimeMillis:J

    iget v10, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceMillis:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceUptimeMillis:J

    add-int/lit8 v3, v3, -0x1

    if-ge v3, v7, :cond_1c

    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    add-int/2addr v6, v3

    rem-int/2addr v6, v7

    aget-object v6, v8, v6

    move-object v4, v6

    :goto_45
    goto :goto_48

    :cond_46
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    :goto_48
    move-object v3, v4

    iget-object v5, v3, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    :goto_4b
    if-eq v5, v3, :cond_6c

    iget-object v6, v5, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-wide v6, v6, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    sub-long v8, v6, v0

    long-to-int v8, v8

    if-gez v8, :cond_57

    goto :goto_6c

    :cond_57
    if-lez v8, :cond_5c

    iget-object v5, v5, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    goto :goto_6b

    :cond_5c
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->secondaryComparator:Ljava/util/Comparator;

    if-eqz v9, :cond_6c

    iget-object v10, v5, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    invoke-interface {v9, v10, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gtz v9, :cond_69

    goto :goto_6c

    :cond_69
    iget-object v5, v5, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    :goto_6b
    goto :goto_4b

    :cond_6c
    :goto_6c
    invoke-virtual {v4, v5, p1}, Landroid/os/statistics/FilteringPerfEventList;->addAfter(Landroid/os/statistics/FilteringPerfEventListNode;Landroid/os/statistics/FilteringPerfEvent;)V

    iget v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->perfEventCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->perfEventCount:I

    return-void
.end method

.method public final remove(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/os/statistics/FilteringPerfEventList;->remove(Landroid/os/statistics/FilteringPerfEvent;)V

    iget v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->perfEventCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->perfEventCount:I

    return-void
.end method
