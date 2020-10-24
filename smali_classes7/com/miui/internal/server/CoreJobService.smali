.class public Lcom/miui/internal/server/CoreJobService;
.super Landroid/app/job/JobService;
.source ""


# static fields
.field private static final INTERVAL_DAY:J = 0x5265c00L

.field private static final JOB_ID_DAILY_ANY_NETWORK:I = 0x1

.field private static final JOB_ID_DAILY_UNMERTERED_NETWORK:I = 0x2

.field private static final JOB_SCHEDULER_SERVICE:Ljava/lang/String; = "jobscheduler"

.field private static final TAG:Ljava/lang/String; = "CoreJobService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private executeJob(Lcom/miui/internal/server/CoreJobService$AbstractJob;)V
    .locals 0

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static getDailyAnyNetworkJob(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/miui/internal/server/CoreJobService;->getDailyNetworkJob(Landroid/content/Context;II)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getDailyNetworkJob(Landroid/content/Context;II)Landroid/app/job/JobInfo;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/miui/internal/server/CoreJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, p1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getDailyUnmerteredNetworkJob(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0, v0}, Lcom/miui/internal/server/CoreJobService;->getDailyNetworkJob(Landroid/content/Context;II)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleJobs(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-nez v1, :cond_0

    const-string p0, "CoreJobService"

    const-string v0, "scheduleJobs: get JobScheduler error!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/miui/internal/server/CoreJobService;->getDailyAnyNetworkJob(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown job id: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoreJobService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    new-instance v0, Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/server/CoreJobService;->executeJob(Lcom/miui/internal/server/CoreJobService$AbstractJob;)V

    return v2

    :cond_2
    new-instance v0, Lcom/miui/internal/server/CoreJobService$AnyNetworkJob;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/server/CoreJobService$AnyNetworkJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
