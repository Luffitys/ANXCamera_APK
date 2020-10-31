.class final Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
.super Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;
.source "PerfEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeslicedCheckingEventList"
.end annotation


# direct methods
.method public constructor <init>(IIJII)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;-><init>(IIJIILjava/util/Comparator;)V

    return-void
.end method
