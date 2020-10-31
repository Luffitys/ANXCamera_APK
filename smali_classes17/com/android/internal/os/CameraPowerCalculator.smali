.class public Lcom/android/internal/os/CameraPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CameraPowerCalculator.java"


# instance fields
.field private final mCameraPowerOnAvg:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string v0, "camera.avg"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/CameraPowerCalculator;->mCameraPowerOnAvg:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .registers 15

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p3, p4, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    long-to-double v3, v1

    iget-wide v5, p0, Lcom/android/internal/os/CameraPowerCalculator;->mCameraPowerOnAvg:D

    mul-double/2addr v3, v5

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v5

    iput-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    goto :goto_24

    :cond_1c
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    :goto_24
    return-void
.end method
