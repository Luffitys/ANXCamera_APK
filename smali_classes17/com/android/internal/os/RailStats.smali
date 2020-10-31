.class public final Lcom/android/internal/os/RailStats;
.super Ljava/lang/Object;
.source "RailStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RailStats$RailInfoData;
    }
.end annotation


# static fields
.field private static final CELLULAR_SUBSYSTEM:Ljava/lang/String; = "cellular"

.field private static final TAG:Ljava/lang/String; = "RailStats"

.field private static final WIFI_SUBSYSTEM:Ljava/lang/String; = "wifi"


# instance fields
.field private mCellularTotalEnergyUseduWs:J

.field private mRailInfoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/os/RailStats$RailInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mRailStatsAvailability:Z

.field private mWifiTotalEnergyUseduWs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return-void
.end method


# virtual methods
.method public getCellularTotalEnergyUseduWs()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    return-wide v0
.end method

.method public getRailStats()Lcom/android/internal/os/RailStats;
    .registers 1

    return-object p0
.end method

.method public getWifiTotalEnergyUseduWs()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-wide v0
.end method

.method public isRailStatsAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return v0
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-void
.end method

.method public resetCellularTotalEnergyUsed()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    return-void
.end method

.method public resetWifiTotalEnergyUsed()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-void
.end method

.method public setRailStatsAvailability(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return-void
.end method

.method public updateRailData(JLjava/lang/String;Ljava/lang/String;JJ)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    const-string/jumbo v10, "wifi"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "cellular"

    if-nez v1, :cond_1a

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    iget-object v1, v0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/internal/os/RailStats$RailInfoData;

    if-nez v9, :cond_6f

    iget-object v6, v0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v5, Lcom/android/internal/os/RailStats$RailInfoData;

    const/16 v16, 0x0

    move-object v1, v5

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v17, v5

    move-object/from16 v5, p4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-wide/from16 v6, p5

    move-object v13, v8

    move-object v12, v9

    move-wide/from16 v8, p7

    move-object/from16 v20, v12

    move-object v12, v10

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/os/RailStats$RailInfoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLcom/android/internal/os/RailStats$1;)V

    move-object/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-void

    :cond_63
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    :cond_6e
    return-void

    :cond_6f
    move-object v13, v8

    move-object/from16 v20, v9

    move-object v12, v10

    move-object/from16 v1, v20

    iget-wide v2, v1, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    move-wide/from16 v4, p5

    sub-long v2, v4, v2

    iget-wide v6, v1, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    sub-long v6, v14, v6

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-ltz v10, :cond_89

    cmp-long v8, v6, v8

    if-gez v8, :cond_8b

    :cond_89
    iget-wide v6, v1, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    :cond_8b
    iput-wide v4, v1, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    iput-wide v14, v1, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    iget-wide v8, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-void

    :cond_9b
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a6

    iget-wide v8, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    :cond_a6
    return-void
.end method
