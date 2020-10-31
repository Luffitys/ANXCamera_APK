.class Lmiui/securitycenter/powercenter/BatterySipperHelper;
.super Ljava/lang/Object;
.source "BatterySipperHelper.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBatterySipper(Lmiui/securitycenter/powercenter/BatterySipper;Lcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;
    .registers 6

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-object p0
.end method

.method static makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;
    .registers 11

    if-nez p2, :cond_e

    new-instance v6, Lmiui/securitycenter/powercenter/BatterySipper;

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;IID)V

    return-object v6

    :cond_e
    const/4 v0, -0x1

    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_1d

    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v1}, Lmiui/securitycenter/powercenter/UidUtils;->getRealUid(I)I

    move-result v0

    :cond_1d
    new-instance v7, Lmiui/securitycenter/powercenter/BatterySipper;

    iget-wide v5, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;IID)V

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->cpuTime:J

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->gpsTime:J

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRunningTime:J

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->cpuFgTime:J

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->wakeLockTime:J

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->noCoveragePercent:D

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->mobileRxBytes:J

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->mobileTxBytes:J

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRxBytes:J

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iput-wide v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->wifiTxBytes:J

    iget-object v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v2, v1, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    :cond_60
    return-object v1
.end method

.method static makeBatterySipperForSystemApp(Landroid/content/Context;Lcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Lmiui/securitycenter/powercenter/BatterySipper;

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-direct {v0, p0, v1, v2, v3}, Lmiui/securitycenter/powercenter/BatterySipper;-><init>(Landroid/content/Context;Ljava/lang/String;D)V

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuTime:J

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->gpsTime:J

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRunningTime:J

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuFgTime:J

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->wakeLockTime:J

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->noCoveragePercent:D

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileRxBytes:J

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileTxBytes:J

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRxBytes:J

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iput-wide v1, v0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiTxBytes:J

    return-object v0
.end method
