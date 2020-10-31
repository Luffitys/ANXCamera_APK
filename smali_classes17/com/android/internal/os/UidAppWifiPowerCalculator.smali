.class public Lcom/android/internal/os/UidAppWifiPowerCalculator;
.super Ljava/lang/Object;
.source "UidAppWifiPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UidAppWifiPowerCalculator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWifiPowerPerPacket:D

.field private final mWifiPowerScan:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/UidAppWifiPowerCalculator;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/UidAppWifiPowerCalculator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/internal/os/UidAppWifiPowerCalculator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/UidAppWifiPowerCalculator;->mWifiPowerPerPacket:D

    const-string/jumbo v1, "wifi.scan"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/UidAppWifiPowerCalculator;->mWifiPowerScan:D

    return-void
.end method

.method private static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .registers 7

    const-wide/32 v0, 0xf4240

    const-string/jumbo v2, "wifi.active"

    invoke-virtual {p0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v2, v4

    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    return-wide v4
.end method


# virtual methods
.method public calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V
    .registers 14

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getNetworkActivityPackets(II)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    const/4 v1, 0x3

    invoke-virtual {p2, v1, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getNetworkActivityPackets(II)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    invoke-virtual {p2, v0, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getNetworkActivityBytes(II)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    invoke-virtual {p2, v1, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getNetworkActivityBytes(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/os/UidAppWifiPowerCalculator;->mWifiPowerPerPacket:D

    mul-double/2addr v0, v2

    invoke-virtual {p2, p3, p4, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getWifiScanTime(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v4, v2

    iget-wide v6, p0, Lcom/android/internal/os/UidAppWifiPowerCalculator;->mWifiPowerScan:D

    mul-double/2addr v4, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v4, v6

    add-double v6, v0, v4

    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method
