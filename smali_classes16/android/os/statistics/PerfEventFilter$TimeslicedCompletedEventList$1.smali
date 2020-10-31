.class Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList$1;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;-><init>(IIJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/os/statistics/FilteringPerfEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/FilteringPerfEvent;)I
    .registers 16

    iget-wide v0, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v2, p2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_a

    return v5

    :cond_a
    cmp-long v4, v0, v2

    const/4 v6, -0x1

    if-gez v4, :cond_10

    return v6

    :cond_10
    iget-wide v7, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v9, p2, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_19

    return v6

    :cond_19
    cmp-long v4, v7, v9

    if-gez v4, :cond_1e

    return v5

    :cond_1e
    iget v4, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iget v5, p2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    and-int/lit8 v6, v4, 0x1

    and-int/lit8 v11, v5, 0x1

    invoke-static {v6, v11}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    if-eqz v6, :cond_2d

    return v6

    :cond_2d
    const/high16 v11, 0x40000

    and-int v12, v4, v11

    and-int/2addr v11, v5

    invoke-static {v12, v11}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    if-eqz v6, :cond_39

    return v6

    :cond_39
    and-int/lit8 v11, v4, 0x6

    and-int/lit8 v12, v5, 0x6

    invoke-static {v11, v12}, Ljava/lang/Integer;->compare(II)I

    move-result v11

    return v11
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/os/statistics/FilteringPerfEvent;

    check-cast p2, Landroid/os/statistics/FilteringPerfEvent;

    invoke-virtual {p0, p1, p2}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList$1;->compare(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/FilteringPerfEvent;)I

    move-result p1

    return p1
.end method
