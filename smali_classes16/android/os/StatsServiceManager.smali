.class public Landroid/os/StatsServiceManager;
.super Ljava/lang/Object;
.source "StatsServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StatsServiceManager$ServiceNotFoundException;,
        Landroid/os/StatsServiceManager$ServiceRegisterer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatsCompanionServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/StatsServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "statscompanion"

    invoke-direct {v0, v1}, Landroid/os/StatsServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getStatsManagerServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/StatsServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "statsmanager"

    invoke-direct {v0, v1}, Landroid/os/StatsServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getStatsdServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;
    .registers 3

    new-instance v0, Landroid/os/StatsServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "stats"

    invoke-direct {v0, v1}, Landroid/os/StatsServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
