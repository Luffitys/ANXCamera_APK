.class Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;
.super Lcom/miui/internal/server/CoreJobService$AbstractJob;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/server/CoreJobService$AbstractJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/server/DataUpdateManager;->getInstance()Lcom/miui/internal/server/DataUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/server/DataUpdateManager;->update()V

    invoke-super {p0}, Lcom/miui/internal/server/CoreJobService$AbstractJob;->run()V

    return-void
.end method
