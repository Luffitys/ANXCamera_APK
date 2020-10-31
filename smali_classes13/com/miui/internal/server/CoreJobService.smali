.class public Lcom/miui/internal/server/CoreJobService;
.super Landroid/app/job/JobService;
.source "CoreJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/CoreJobService$AbstractJob;,
        Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;,
        Lcom/miui/internal/server/CoreJobService$AnyNetworkJob;
    }
.end annotation


# static fields
.field private static final INTERVAL_DAY:J = 0x5265c00L

.field private static final JOB_ID_DAILY_ANY_NETWORK:I = 0x1

.field private static final JOB_ID_DAILY_UNMERTERED_NETWORK:I = 0x2

.field private static final JOB_SCHEDULER_SERVICE:Ljava/lang/String; = "jobscheduler"

.field private static final TAG:Ljava/lang/String; = "CoreJobService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private executeJob(Lcom/miui/internal/server/CoreJobService$AbstractJob;)V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static getDailyAnyNetworkJob(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/miui/internal/server/CoreJobService;->getDailyNetworkJob(Landroid/content/Context;II)Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getDailyNetworkJob(Landroid/content/Context;II)Landroid/app/job/JobInfo;
    .registers 7

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/miui/internal/server/CoreJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, p1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    return-object v2
.end method

.method private static getDailyUnmerteredNetworkJob(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0, v0}, Lcom/miui/internal/server/CoreJobService;->getDailyNetworkJob(Landroid/content/Context;II)Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method

.method public static scheduleJobs(Landroid/content/Context;)V
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    nop

    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-nez v1, :cond_18

    const-string v2, "CoreJobService"

    const-string v3, "scheduleJobs: get JobScheduler error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_38
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-static {p0}, Lcom/miui/internal/server/CoreJobService;->getDailyAnyNetworkJob(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_4a
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_32

    const/4 v3, 0x2

    if-eq v1, v3, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown job id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoreJobService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_29
    new-instance v0, Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v0}, Lcom/miui/internal/server/CoreJobService;->executeJob(Lcom/miui/internal/server/CoreJobService$AbstractJob;)V

    return v2

    :cond_32
    new-instance v0, Lcom/miui/internal/server/CoreJobService$AnyNetworkJob;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/server/CoreJobService$AnyNetworkJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v0}, Lcom/miui/internal/server/CoreJobService;->executeJob(Lcom/miui/internal/server/CoreJobService$AbstractJob;)V

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
