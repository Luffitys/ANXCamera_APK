.class public Lcom/android/internal/os/UidAppCpuPowerCalculator;
.super Ljava/lang/Object;
.source "UidAppCpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MICROSEC_IN_HR:J = 0xd693a400L

.field private static final TAG:Ljava/lang/String; = "UidAppCpuPowerCalculator"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/UidAppCpuPowerCalculator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;I)V
    .registers 23

    move-object/from16 v0, p1

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/internal/os/UidAppCpuPowerCalculator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p2 .. p3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getUserCpuTimeUs(I)J

    move-result-wide v3

    invoke-virtual/range {p2 .. p3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getSystemCpuTimeUs(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v3

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_47

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_27
    if-ge v10, v9, :cond_3e

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual {v11, v4, v10, v12}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getTimeAtCpuSpeed(III)J

    move-result-wide v13

    long-to-double v5, v13

    invoke-virtual {v1, v4, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v17

    mul-double v5, v5, v17

    add-double/2addr v7, v5

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v5, 0x3e8

    goto :goto_27

    :cond_3e
    move-object/from16 v11, p2

    move/from16 v12, p3

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x3e8

    goto :goto_20

    :cond_47
    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getCpuActiveTime()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long v13, v4, v9

    long-to-double v9, v13

    const-string v6, "cpu.active"

    invoke-virtual {v1, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v7, v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getCpuClusterTimes()[J

    move-result-object v6

    if-eqz v6, :cond_a5

    array-length v9, v6

    if-ne v9, v3, :cond_79

    const/4 v9, 0x0

    :goto_66
    if-ge v9, v3, :cond_78

    aget-wide v13, v6, v9

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    long-to-double v13, v13

    invoke-virtual {v1, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCluster(I)D

    move-result-wide v17

    mul-double v13, v13, v17

    add-double/2addr v7, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_66

    :cond_78
    goto :goto_a5

    :cond_79
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " CPU cluster#mismatch: Power Profile# "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " actual # "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UidAppCpuPowerCalculator"

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    :goto_a5
    const-wide v9, 0x41ead27480000000L    # 3.6E9

    div-double v9, v7, v9

    iput-wide v9, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v9, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iget-wide v13, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    cmp-long v9, v9, v13

    if-lez v9, :cond_ba

    iget-wide v9, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iput-wide v9, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    :cond_ba
    return-void
.end method
