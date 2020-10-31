.class abstract Lcom/miui/internal/server/CoreJobService$AbstractJob;
.super Ljava/lang/Object;
.source "CoreJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/CoreJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractJob"
.end annotation


# instance fields
.field private params:Landroid/app/job/JobParameters;

.field private service:Landroid/app/job/JobService;


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->service:Landroid/app/job/JobService;

    iput-object p2, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->params:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->service:Landroid/app/job/JobService;

    iget-object v1, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
