.class public Lcom/android/internal/os/SensorPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SensorPowerCalculator.java"


# instance fields
.field private final mGpsPower:D

.field private final mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;Landroid/os/BatteryStats;JI)V
    .registers 13

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/SensorPowerCalculator;->getAverageGpsPower(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;JI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPower:D

    return-void
.end method

.method private getAverageGpsPower(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;JI)D
    .registers 24

    move-object/from16 v0, p1

    const-string v1, "gps.on"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_f

    return-wide v4

    :cond_f
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_16
    const/4 v8, 0x2

    if-ge v7, v8, :cond_36

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    move/from16 v11, p5

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v12

    add-long/2addr v3, v12

    const-string v14, "gps.signalqualitybased"

    invoke-virtual {v0, v14, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v14

    move-wide/from16 v16, v1

    long-to-double v0, v12

    mul-double/2addr v14, v0

    add-double/2addr v5, v14

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    goto :goto_16

    :cond_36
    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move-wide/from16 v16, v1

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_48

    long-to-double v0, v3

    div-double v1, v5, v0

    goto :goto_4a

    :cond_48
    move-wide/from16 v1, v16

    :goto_4a
    return-wide v1
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_93

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    move-wide/from16 v8, p3

    move/from16 v10, p7

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const/16 v13, -0x2710

    if-eq v6, v13, :cond_72

    iget-object v13, v0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_33
    if-ge v14, v13, :cond_69

    iget-object v15, v0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Sensor;

    move-object/from16 v16, v2

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    if-ne v2, v6, :cond_5e

    move/from16 v17, v3

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    move-object/from16 v18, v5

    long-to-float v5, v11

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getPower()F

    move-result v19

    mul-float v5, v5, v19

    const v19, 0x4a5bba00    # 3600000.0f

    div-float v5, v5, v19

    move/from16 v19, v6

    float-to-double v5, v5

    add-double/2addr v2, v5

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    goto :goto_8b

    :cond_5e
    move/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, v6

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    goto :goto_33

    :cond_69
    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, v6

    goto :goto_8b

    :cond_72
    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, v6

    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    long-to-double v2, v2

    iget-wide v5, v0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPower:D

    mul-double/2addr v2, v5

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v5

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    nop

    :goto_8b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    goto/16 :goto_d

    :cond_93
    return-void
.end method
