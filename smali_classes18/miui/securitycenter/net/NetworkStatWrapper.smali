.class public Lmiui/securitycenter/net/NetworkStatWrapper;
.super Ljava/lang/Object;
.source "NetworkStatWrapper.java"


# static fields
.field private static mNMService:Landroid/net/INetworkStatsService;

.field private static mPreSnapshot:Landroid/net/NetworkStats;

.field private static mStatsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lmiui/securitycenter/net/NetworkStatWrapper;->mNMService:Landroid/net/INetworkStatsService;

    if-nez v1, :cond_11

    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    sput-object v1, Lmiui/securitycenter/net/NetworkStatWrapper;->mNMService:Landroid/net/INetworkStatsService;

    :cond_11
    sget-object v1, Lmiui/securitycenter/net/NetworkStatWrapper;->mNMService:Landroid/net/INetworkStatsService;

    invoke-interface {v1, v0}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v1

    return-object v0
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStatsInfo()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lmiui/securitycenter/net/NetworkStatWrapper;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v1, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    return-object v1

    :cond_9
    invoke-static {}, Lmiui/securitycenter/NetworkUtils;->getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    :cond_18
    sget-object v2, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    if-nez v2, :cond_1f

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    goto :goto_7d

    :cond_1f
    sget-object v2, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v2

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    const/4 v3, 0x0

    if-eqz v2, :cond_7d

    const/4 v4, 0x0

    :goto_31
    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v4, v5, :cond_7d

    invoke-virtual {v2, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "uid"

    iget v7, v3, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "iface"

    iget-object v7, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "rxBytes"

    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "txBytes"

    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "tag"

    iget v7, v3, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7e

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_7d
    :goto_7d
    goto :goto_7f

    :catch_7e
    move-exception v0

    :goto_7f
    sget-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
