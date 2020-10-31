.class public Lcom/android/internal/os/MemoryPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MemoryPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "MemoryPowerCalculator"


# instance fields
.field private final powerAverages:[D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string/jumbo v0, "memory.bandwidths"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    move-result v1

    new-array v2, v1, [D

    iput-object v2, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_20

    iget-object v3, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    aput-wide v4, v3, v2

    iget-object v3, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    aget-wide v3, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_20
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .registers 8

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .registers 26

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v5

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_40

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    array-length v9, v8

    if-ge v6, v9, :cond_42

    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v9

    long-to-int v9, v9

    aget-wide v8, v8, v9

    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v11, p3

    move/from16 v13, p7

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    long-to-double v10, v14

    mul-double/2addr v10, v8

    const-wide v16, 0x40ed4c0000000000L    # 60000.0

    div-double v10, v10, v16

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    div-double v16, v10, v16

    add-double v1, v1, v16

    add-long/2addr v3, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_40
    move-object/from16 v7, p0

    :cond_42
    move/from16 v13, p7

    iput-wide v1, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iput-wide v3, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    return-void
.end method
