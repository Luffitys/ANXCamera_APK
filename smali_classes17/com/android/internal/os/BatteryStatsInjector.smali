.class public Lcom/android/internal/os/BatteryStatsInjector;
.super Ljava/lang/Object;
.source "BatteryStatsInjector.java"


# static fields
.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpSysApp(Ljava/io/PrintWriter;Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_1eb

    iget-object v3, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1eb

    new-instance v3, Lcom/android/internal/os/BatteryStatsInjector$1;

    invoke-direct {v3}, Lcom/android/internal/os/BatteryStatsInjector$1;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    :goto_1d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1e8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_1e2

    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "        App "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lcom/android/internal/os/BatteryStatsInjector;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v4, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpl-double v6, v9, v7

    const-string v9, " timeMs="

    const-string v10, "]"

    if-eqz v6, :cond_7e

    const-string v6, "[cpu="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v4, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-static {v0, v11, v12}, Lcom/android/internal/os/BatteryStatsInjector;->printmAh(Ljava/io/PrintWriter;D)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v4, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    invoke-virtual {v0, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7e
    iget-wide v11, v4, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpl-double v6, v11, v7

    if-eqz v6, :cond_a5

    const-string v6, "[wake="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v4, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-static {v0, v11, v12}, Lcom/android/internal/os/BatteryStatsInjector;->printmAh(Ljava/io/PrintWriter;D)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v4, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a5
    iget-wide v11, v4, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpl-double v6, v11, v7

    const-string v11, ","

    const-string v12, " "

    const-wide/16 v13, 0x0

    if-eqz v6, :cond_fe

    const-string v6, "[radio="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v4, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-static {v0, v7, v8}, Lcom/android/internal/os/BatteryStatsInjector;->printmAh(Ljava/io/PrintWriter;D)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    cmp-long v6, v6, v13

    if-lez v6, :cond_d7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " activeTimeMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d7
    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    cmp-long v6, v6, v13

    if-gtz v6, :cond_e3

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    cmp-long v6, v6, v13

    if-lez v6, :cond_fb

    :cond_e3
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsInjector;->formatBytes(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsInjector;->formatBytes(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_fb
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_fe
    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    const-wide/16 v15, 0x0

    cmpl-double v6, v6, v15

    if-eqz v6, :cond_137

    const-string v6, "[wifi="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-static {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsInjector;->printmAh(Ljava/io/PrintWriter;D)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    cmp-long v6, v6, v13

    if-gtz v6, :cond_11c

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    cmp-long v6, v6, v13

    if-lez v6, :cond_134

    :cond_11c
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsInjector;->formatBytes(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsInjector;->formatBytes(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_134
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_137
    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    const-wide/16 v11, 0x0

    cmpl-double v6, v6, v11

    if-eqz v6, :cond_166

    const-string v6, "[gps="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-static {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsInjector;->printmAh(Ljava/io/PrintWriter;D)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    cmp-long v6, v6, v13

    if-lez v6, :cond_163

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_163
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_166
    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    const-wide/16 v11, 0x0

    cmpl-double v6, v6, v11

    if-eqz v6, :cond_17b

    const-string v6, "[sensor="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-static {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsInjector;->printmAh(Ljava/io/PrintWriter;D)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_17b
    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    const-wide/16 v11, 0x0

    cmpl-double v6, v6, v11

    if-eqz v6, :cond_1aa

    const-string v6, "[camera="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-static {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsInjector;->printmAh(Ljava/io/PrintWriter;D)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    cmp-long v6, v6, v13

    if-lez v6, :cond_1a7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1a7
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1aa
    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    const-wide/16 v11, 0x0

    cmpl-double v6, v6, v11

    if-eqz v6, :cond_1d9

    const-string v6, "[flash="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-static {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsInjector;->printmAh(Ljava/io/PrintWriter;D)V

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    cmp-long v6, v6, v13

    if-lez v6, :cond_1d6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1d6
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1d9
    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    goto :goto_1e4

    :cond_1e2
    move-object/from16 v5, p3

    :goto_1e4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1d

    :cond_1e8
    move-object/from16 v5, p3

    goto :goto_1ed

    :cond_1eb
    move-object/from16 v5, p3

    :goto_1ed
    return-void
.end method

.method private static formatBytes(J)Ljava/lang/String;
    .registers 10

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "%.2fKB"

    if-gez v0, :cond_34

    new-array v0, v4, [Ljava/lang/Object;

    long-to-double v6, p0

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    const-wide/32 v6, 0x40000000

    cmp-long v0, p0, v6

    if-gez v0, :cond_4a

    new-array v0, v4, [Ljava/lang/Object;

    long-to-double v6, p0

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    new-array v0, v4, [Ljava/lang/Object;

    long-to-double v6, p0

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printmAh(Ljava/io/PrintWriter;D)V
    .registers 4

    invoke-static {p1, p2}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
