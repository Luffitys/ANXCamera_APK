.class public Lcom/android/internal/os/MobileRadioPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MobileRadioPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MobileRadioPowerController"


# instance fields
.field private final mPowerBins:[D

.field private final mPowerRadioOn:D

.field private final mPowerScan:D

.field private mStats:Landroid/os/BatteryStats;

.field private mTotalAppMobileActiveMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V
    .registers 13

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    nop

    const-string/jumbo v0, "radio.active"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_20

    iput-wide v3, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    goto :goto_43

    :cond_20
    const-wide/16 v5, 0x0

    const-string/jumbo v0, "modem.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    add-double/2addr v5, v7

    const/4 v0, 0x0

    :goto_2b
    iget-object v7, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v8, v7

    if-ge v0, v8, :cond_3b

    const-string/jumbo v7, "modem.controller.tx"

    invoke-virtual {p1, v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3b
    array-length v0, v7

    add-int/lit8 v0, v0, 0x1

    int-to-double v7, v0

    div-double v7, v5, v7

    iput-wide v7, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    :goto_43
    const-string/jumbo v0, "radio.on"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x0

    :goto_4f
    iget-object v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v5, v2

    if-ge v1, v5, :cond_5d

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_5d
    goto :goto_88

    :cond_5e
    const-string/jumbo v0, "modem.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    mul-double/2addr v6, v0

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    aput-wide v6, v2, v5

    const/4 v2, 0x1

    :goto_74
    iget-object v5, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v6, v5

    if-ge v2, v6, :cond_88

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    div-double v8, v0, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aput-wide v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_88
    :goto_88
    const-wide/16 v0, 0x0

    const-string/jumbo v2, "radio.scanning"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    iput-object p2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method private getMobilePowerPerPacket(JI)D
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-wide/32 v2, 0x30d40

    iget-wide v4, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    const-wide v6, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v6

    iget-object v8, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v10

    add-long v12, v8, v10

    iget-object v14, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v6, p1

    invoke-virtual {v14, v6, v7, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v0, v16, v18

    const-wide/16 v16, 0x0

    cmp-long v14, v12, v16

    if-eqz v14, :cond_3b

    cmp-long v14, v0, v16

    if-eqz v14, :cond_3b

    move-wide/from16 v16, v2

    long-to-double v2, v12

    long-to-double v6, v0

    div-double/2addr v2, v6

    goto :goto_42

    :cond_3b
    move-wide/from16 v16, v2

    const-wide v2, 0x40286a0000000000L    # 12.20703125

    :goto_42
    nop

    div-double v6, v4, v2

    const-wide v14, 0x40ac200000000000L    # 3600.0

    div-double/2addr v6, v14

    return-wide v6
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .registers 14

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v2

    iput v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {p2, v0, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    invoke-virtual {p2, v1, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_47

    iget-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    mul-double/2addr v0, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    goto :goto_54

    :cond_47
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v0, v2

    long-to-double v0, v0

    invoke-direct {p0, p3, p4, p7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->getMobilePowerPerPacket(JI)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    :goto_54
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p7

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    :goto_11
    iget-object v13, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v13, v13

    const-wide/16 v16, 0x3e8

    if-ge v12, v13, :cond_3c

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v18

    div-long v14, v18, v16

    move-wide/from16 v18, v10

    long-to-double v10, v14

    iget-object v13, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    aget-wide v16, v13, v12

    mul-double v10, v10, v16

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v10, v10, v16

    add-double/2addr v6, v10

    add-long/2addr v8, v14

    if-nez v12, :cond_37

    move-wide/from16 v16, v14

    move-wide/from16 v10, v16

    goto :goto_39

    :cond_37
    move-wide/from16 v10, v18

    :goto_39
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_3c
    move-wide/from16 v18, v10

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v10

    div-long v10, v10, v16

    long-to-double v12, v10

    iget-wide v14, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    mul-double/2addr v12, v14

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double/2addr v12, v14

    add-double/2addr v6, v12

    iget-object v14, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14, v3, v4, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v14

    div-long v14, v14, v16

    iget-wide v3, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    sub-long v3, v14, v3

    const-wide/16 v16, 0x0

    cmp-long v20, v3, v16

    if-lez v20, :cond_71

    move-wide/from16 v20, v10

    iget-wide v10, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    move-wide/from16 v22, v12

    long-to-double v12, v3

    mul-double/2addr v10, v12

    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    goto :goto_75

    :cond_71
    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    :goto_75
    const-wide/16 v10, 0x0

    cmpl-double v10, v6, v10

    if-eqz v10, :cond_94

    cmp-long v10, v8, v16

    if-eqz v10, :cond_8a

    move-wide/from16 v10, v18

    long-to-double v12, v10

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v16

    long-to-double v10, v8

    div-double/2addr v12, v10

    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    :cond_8a
    iput-wide v3, v1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-virtual {v2, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v10

    iput v10, v1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    :cond_94
    return-void
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    return-void
.end method

.method public reset(Landroid/os/BatteryStats;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset()V

    iput-object p1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    return-void
.end method
