.class public Landroid/os/statistics/EventLogSuperviser;
.super Ljava/lang/Object;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/EventLogSuperviser$EventLogFields;,
        Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;,
        Landroid/os/statistics/EventLogSuperviser$EventLogTags;
    }
.end annotation


# static fields
.field private static final emptyEventValueStrs:[Ljava/lang/String;

.field private static final supervisedEventLogTags:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Landroid/os/statistics/EventLogSuperviser;->supervisedEventLogTags:[I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;

    return-void

    :array_e
    .array-data 4
        0xaa8
        0x7538
        0x7588
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;

    return-object v0
.end method

.method private static isSupervised(I)Z
    .registers 2

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/os/statistics/EventLogSuperviser;->supervisedEventLogTags:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static notifyEvent(IF)V
    .registers 3

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public static notifyEvent(II)V
    .registers 3

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public static notifyEvent(IJ)V
    .registers 4

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public static notifyEvent(ILjava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static varargs notifyEvent(I[Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private static notifyEventWithObject(ILjava/lang/Object;)V
    .registers 11

    const/high16 v0, 0x100000

    const/16 v1, 0x7538

    if-ne p0, v1, :cond_2f

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v1

    new-instance v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v3}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    move-object v4, p1

    check-cast v4, [Ljava/lang/Object;

    iget v5, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventFlags:I

    or-int/2addr v0, v5

    iput v0, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventFlags:I

    const-wide/16 v5, 0x2710

    sub-long v5, v1, v5

    iput-wide v5, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->beginUptimeMillis:J

    iput-wide v1, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->endUptimeMillis:J

    const/4 v0, 0x1

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/PerfEvent;->generateCoordinationId(I)J

    move-result-wide v5

    iput-wide v5, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->inclusionId:J

    goto :goto_8f

    :cond_2f
    const/16 v1, 0x7588

    if-ne p0, v1, :cond_81

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x4

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v4, v2, v4

    if-ltz v4, :cond_7e

    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v2, v4

    if-gez v4, :cond_7e

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v4

    new-instance v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v6}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    iget v7, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventFlags:I

    or-int/2addr v0, v7

    iput v0, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventFlags:I

    sub-long v7, v4, v2

    iput-wide v7, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->beginUptimeMillis:J

    iput-wide v4, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->endUptimeMillis:J

    const/4 v0, 0x5

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/PerfEvent;->generateCoordinationId(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->inclusionId:J

    move-object v3, v6

    goto :goto_80

    :cond_7e
    const/4 v0, 0x0

    move-object v3, v0

    :goto_80
    goto :goto_8f

    :cond_81
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v0

    new-instance v2, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v2}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    move-object v3, v2

    iput-wide v0, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->beginUptimeMillis:J

    iput-wide v0, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->endUptimeMillis:J

    :goto_8f
    if-eqz v3, :cond_a8

    invoke-virtual {v3}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    sget v1, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    iput v1, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->pid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->currentTimeMillis:J

    iput p0, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    iput-object p1, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    invoke-static {v3}, Landroid/os/statistics/PerfEventReporter;->report(Landroid/os/statistics/PerfEvent;)V

    :cond_a8
    return-void
.end method
