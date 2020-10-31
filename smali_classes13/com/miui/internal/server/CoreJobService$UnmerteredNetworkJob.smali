.class Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;
.super Lcom/miui/internal/server/CoreJobService$AbstractJob;
.source "CoreJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/CoreJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmerteredNetworkJob"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/server/CoreJobService$AbstractJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/server/DataUpdateManager;->getInstance()Lcom/miui/internal/server/DataUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/server/DataUpdateManager;->update()V

    invoke-super {p0}, Lcom/miui/internal/server/CoreJobService$AbstractJob;->run()V

    return-void
.end method
