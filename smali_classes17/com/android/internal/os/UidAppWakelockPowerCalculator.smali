.class public Lcom/android/internal/os/UidAppWakelockPowerCalculator;
.super Ljava/lang/Object;
.source "UidAppWakelockPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UidAppWakelockPowerCalculator"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/UidAppWakelockPowerCalculator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V
    .registers 24

    move-object/from16 v0, p1

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/internal/os/UidAppWakelockPowerCalculator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    const-string v3, "cpu.awake"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_15

    const-string v3, "cpu.idle"

    :cond_15
    invoke-virtual {v1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    nop

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_25
    if-ge v10, v9, :cond_45

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    invoke-virtual {v11}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->getWakeTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v12

    if-eqz v12, :cond_3e

    move-wide/from16 v13, p3

    move/from16 v15, p5

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    add-long v6, v6, v16

    goto :goto_42

    :cond_3e
    move-wide/from16 v13, p3

    move/from16 v15, p5

    :goto_42
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    :cond_45
    move-wide/from16 v13, p3

    move/from16 v15, p5

    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v10, v10

    mul-double/2addr v10, v4

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v10, v10, v16

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    return-void
.end method
