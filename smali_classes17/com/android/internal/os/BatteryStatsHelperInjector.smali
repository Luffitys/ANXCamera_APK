.class public Lcom/android/internal/os/BatteryStatsHelperInjector;
.super Ljava/lang/Object;
.source "BatteryStatsHelperInjector.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryStatsHelperInjector"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processUidAppUsage(Landroid/content/Context;Lcom/android/internal/os/UidAppBatteryStatsImpl;Landroid/os/BatteryStats;IJJ)Ljava/util/List;
    .registers 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl;",
            "Landroid/os/BatteryStats;",
            "IJJ)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    new-instance v8, Lcom/android/internal/os/UidAppWakelockPowerCalculator;

    invoke-direct {v8, v6}, Lcom/android/internal/os/UidAppWakelockPowerCalculator;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/os/UidAppCpuPowerCalculator;

    invoke-direct {v0, v6}, Lcom/android/internal/os/UidAppCpuPowerCalculator;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    new-instance v15, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;

    move-object/from16 v13, p2

    invoke-direct {v15, v6, v13}, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    new-instance v0, Lcom/android/internal/os/UidAppWifiPowerCalculator;

    invoke-direct {v0, v6}, Lcom/android/internal/os/UidAppWifiPowerCalculator;-><init>(Landroid/content/Context;)V

    move-object/from16 v21, v0

    new-instance v27, Lcom/android/internal/os/UidAppSensorPowerCalculator;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p6

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/UidAppSensorPowerCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;JI)V

    new-instance v0, Lcom/android/internal/os/UidAppCameraPowerCalculator;

    invoke-direct {v0, v6}, Lcom/android/internal/os/UidAppCameraPowerCalculator;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/internal/os/UidAppFlashlightPowerCalculator;

    invoke-direct {v1, v6}, Lcom/android/internal/os/UidAppFlashlightPowerCalculator;-><init>(Landroid/content/Context;)V

    move-object/from16 v33, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v1, 0x0

    move v4, v1

    :goto_46
    if-ge v4, v3, :cond_c2

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-direct {v1, v9, v10, v11, v12}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object v9, v1

    move-object v10, v2

    move-wide/from16 v11, p6

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/os/UidAppWakelockPowerCalculator;->calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V

    move/from16 v9, p3

    invoke-virtual {v14, v1, v2, v9}, Lcom/android/internal/os/UidAppCpuPowerCalculator;->calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;I)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-wide/from16 v18, p6

    move/from16 v20, p3

    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-wide/from16 v24, p6

    move/from16 v26, p3

    invoke-virtual/range {v21 .. v26}, Lcom/android/internal/os/UidAppWifiPowerCalculator;->calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move-wide/from16 v30, p6

    move/from16 v32, p3

    invoke-virtual/range {v27 .. v32}, Lcom/android/internal/os/UidAppSensorPowerCalculator;->calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    move v13, v4

    move-wide/from16 v3, p6

    move-object/from16 v16, v5

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/UidAppCameraPowerCalculator;->calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-wide/from16 v36, p6

    move/from16 v38, p3

    invoke-virtual/range {v33 .. v38}, Lcom/android/internal/os/UidAppFlashlightPowerCalculator;->calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V

    invoke-virtual {v10}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v17, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v3, v3, v17

    if-ltz v3, :cond_ba

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ba
    add-int/lit8 v4, v13, 0x1

    move-object/from16 v13, p2

    move v3, v12

    move-object/from16 v5, v16

    goto :goto_46

    :cond_c2
    return-object v7
.end method
