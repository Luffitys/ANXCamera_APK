.class abstract Lcom/miui/internal/server/CoreJobService$AbstractJob;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private params:Landroid/app/job/JobParameters;

.field private service:Landroid/app/job/JobService;


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->service:Landroid/app/job/JobService;

    iput-object p2, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->params:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->service:Landroid/app/job/JobService;

    iget-object p0, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->params:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
