.class public Lcom/android/internal/os/MediaPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MediaPowerCalculator.java"


# static fields
.field private static final MS_IN_HR:I = 0x36ee80


# instance fields
.field private final mAudioAveragePowerMa:D

.field private final mVideoAveragePowerMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MediaPowerCalculator;->mAudioAveragePowerMa:D

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MediaPowerCalculator;->mVideoAveragePowerMa:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move/from16 v4, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide v10, 0x414b774000000000L    # 3600000.0

    const-wide/16 v12, 0x3e8

    if-nez v5, :cond_1e

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    goto :goto_2c

    :cond_1e
    invoke-virtual {v5, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    div-long/2addr v14, v12

    iput-wide v14, v1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    long-to-double v12, v14

    iget-wide v6, v0, Lcom/android/internal/os/MediaPowerCalculator;->mAudioAveragePowerMa:D

    mul-double/2addr v12, v6

    div-double/2addr v12, v10

    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-nez v6, :cond_39

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    goto :goto_49

    :cond_39
    invoke-virtual {v6, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    const-wide/16 v12, 0x3e8

    div-long/2addr v7, v12

    iput-wide v7, v1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    long-to-double v12, v7

    iget-wide v14, v0, Lcom/android/internal/os/MediaPowerCalculator;->mVideoAveragePowerMa:D

    mul-double/2addr v12, v14

    div-double/2addr v12, v10

    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    :goto_49
    return-void
.end method
