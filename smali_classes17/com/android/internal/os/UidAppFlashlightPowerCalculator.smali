.class public Lcom/android/internal/os/UidAppFlashlightPowerCalculator;
.super Ljava/lang/Object;
.source "UidAppFlashlightPowerCalculator.java"


# instance fields
.field private final mFlashlightPowerOnAvg:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    const-string v1, "camera.flashlight"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/UidAppFlashlightPowerCalculator;->mFlashlightPowerOnAvg:D

    return-void
.end method


# virtual methods
.method public calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V
    .registers 13

    invoke-virtual {p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    long-to-double v3, v1

    iget-wide v5, p0, Lcom/android/internal/os/UidAppFlashlightPowerCalculator;->mFlashlightPowerOnAvg:D

    mul-double/2addr v3, v5

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v5

    iput-wide v3, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    goto :goto_24

    :cond_1c
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    :goto_24
    return-void
.end method
