.class public Lcom/android/internal/os/WifiPowerEstimator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerEstimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerEstimator"


# instance fields
.field private mTotalAppWifiRunningTimeMs:J

.field private final mWifiPowerBatchScan:D

.field private final mWifiPowerOn:D

.field private final mWifiPowerPerPacket:D

.field private final mWifiPowerScan:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    invoke-static {p1}, Lcom/android/internal/os/WifiPowerEstimator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    const-string/jumbo v0, "wifi.on"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    const-string/jumbo v0, "wifi.scan"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    const-string/jumbo v0, "wifi.batchedscan"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    return-void
.end method

.method private static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .registers 7

    const-wide/32 v0, 0x989680

    const-string/jumbo v2, "wifi.active"

    invoke-virtual {p0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v2, v4

    const-wide v4, 0x408312d000000000L    # 610.3515625

    div-double v4, v2, v4

    return-wide v4
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p7

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    const/4 v7, 0x3

    invoke-virtual {v2, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    invoke-virtual {v2, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    invoke-virtual {v2, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    mul-double/2addr v6, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iget-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    iget-wide v12, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v8, v12

    iput-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v8, v8

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    mul-double/2addr v8, v12

    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double/2addr v8, v12

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v14

    div-long/2addr v14, v10

    long-to-double v10, v14

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    mul-double/2addr v10, v14

    div-double/2addr v10, v12

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    move/from16 v12, v20

    :goto_5b
    const/4 v13, 0x5

    if-ge v12, v13, :cond_7d

    nop

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v21

    const-wide/16 v16, 0x3e8

    div-long v2, v21, v16

    long-to-double v4, v2

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    mul-double/2addr v4, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v4, v2

    add-double/2addr v14, v4

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p7

    goto :goto_5b

    :cond_7d
    add-double v2, v6, v8

    add-double/2addr v2, v10

    add-double/2addr v2, v14

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .registers 14

    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    return-void
.end method
