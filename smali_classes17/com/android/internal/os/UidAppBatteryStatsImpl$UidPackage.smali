.class public Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;
.super Ljava/lang/Object;
.source "UidAppBatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidAppBatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidPackage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;,
        Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;,
        Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;
    }
.end annotation


# instance fields
.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

.field mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field public final mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field public final mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mPackageName:Ljava/lang/String;

.field mProcessState:I

.field final mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;",
            ">;"
        }
    .end annotation
.end field

.field final mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field public mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

.field mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x14

    iput v2, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    iput-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mPackageName:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    new-instance v4, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$1;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, -0x1

    invoke-direct {v4, v0, v5, v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$1;-><init>(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iget-object v9, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v9}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v9

    mul-long/2addr v9, v7

    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v5

    mul-long/2addr v5, v7

    iget-object v9, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v9}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v9

    mul-long/2addr v9, v7

    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v12, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v11, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-void
.end method

.method private nullIfAllZeros(Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;I)[J
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->getCountsLocked(I)[J

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_1c

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method


# virtual methods
.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_18
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_18
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method detachFromTimeBase()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$400([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$400([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4d
    if-ltz v1, :cond_5b

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    invoke-virtual {v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->detachFromTimeBase()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4d

    :cond_5b
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_63
    if-ltz v1, :cond_73

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    invoke-virtual {v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->detachFromTimeBase()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_63

    :cond_73
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7b
    if-ltz v1, :cond_8b

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    invoke-virtual {v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->detach()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7b

    :cond_8b
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getCpuActiveTime()J
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuClusterTimes()[J
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->nullIfAllZeros(Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    array-length v1, v0

    if-ge p1, v1, :cond_10

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    array-length v1, v0

    if-ge p1, v1, :cond_10

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :cond_10
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :cond_10
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    if-nez v0, :cond_17

    new-instance v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .registers 14

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    if-nez v0, :cond_1b

    if-nez p2, :cond_e

    const/4 v1, 0x0

    return-object v1

    :cond_e
    new-instance v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_20

    return-object v1

    :cond_20
    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSensorTimersSys:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_39

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSensorTimersSys:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_39
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v6, 0x0

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v10, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v4, v3

    move-object v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v1, v3

    iput-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v1
.end method

.method public getSystemCpuTimeUs(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .registers 8

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_1b

    if-ltz p1, :cond_1b

    array-length v1, v0

    if-ge p1, v1, :cond_1b

    aget-object v0, v0, p1

    if-eqz v0, :cond_1b

    if-ltz p2, :cond_1b

    array-length v1, v0

    if-ge p2, v1, :cond_1b

    aget-object v1, v0, p2

    if-eqz v1, :cond_1b

    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    return-wide v2

    :cond_1b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserCpuTimeUs(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getWakelockTimerLocked(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 11

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_21

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v8

    iput-object v0, p1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_21
    return-object v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getWifiScanTime(JI)J
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNetworkActivity()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method initNetworkActivityLocked()V
    .registers 6

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_2a

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2a
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method public isInBackground()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public noteCameraTurnedOffLocked(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->initNetworkActivityLocked()V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->initNetworkActivityLocked()V

    :cond_7
    if-ltz p1, :cond_1c

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_3c

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown network activity type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "UidAppBatteryStatsImpl"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteStartSensor(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteStartWakeLocked(Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getWakelockTimerLocked(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_11
    return-void
.end method

.method public noteStopSensor(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_a
    return-void
.end method

.method public noteStopWakeLocked(Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getWakelockTimerLocked(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_11
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_20

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_20
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_25
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_c
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 16

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_2e

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v3, v4, p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;)V

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v1, :cond_56

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v4, v5, p0, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;I)V

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v5, v6, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    const/4 v3, 0x0

    :goto_60
    if-ge v3, v2, :cond_78

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v5, v6, v4}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :cond_78
    const/16 v3, 0x14

    iput v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9d

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v11, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v5, v3

    move-object v12, p2

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_9f

    :cond_9d
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :goto_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e6

    const/16 v3, 0xa

    new-array v5, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v5, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    :goto_b0
    if-ge v5, v3, :cond_cf

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v8, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v7, v8, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v7, v6, v5

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v8, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v7, v8, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b0

    :cond_cf
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_ea

    :cond_e6
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :goto_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_fd

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6, p2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_ff

    :cond_fd
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :goto_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_112

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x5

    invoke-direct {v3, v5, v6, p2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_114

    :cond_112
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :goto_114
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_195

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v5, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v5, :cond_149

    sget-object v5, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v5

    if-ne v5, v3, :cond_141

    goto :goto_149

    :cond_141
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string v5, "Incompatible number of cpu clusters"

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_149
    :goto_149
    new-array v5, v3, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    :goto_14e
    if-ge v5, v3, :cond_194

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18d

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v7, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v7, :cond_16f

    sget-object v7, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v7, v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v7

    if-ne v7, v6, :cond_167

    goto :goto_16f

    :cond_167
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string v7, "Incompatible number of cpu speeds"

    invoke-direct {v4, v7}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_16f
    :goto_16f
    new-array v7, v6, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v8, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v7, v8, v5

    const/4 v8, 0x0

    :goto_176
    if-ge v8, v6, :cond_18c

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_189

    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v10, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v10, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v9, v10, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v9, v7, v8

    :cond_189
    add-int/lit8 v8, v8, 0x1

    goto :goto_176

    :cond_18c
    goto :goto_191

    :cond_18d
    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v4, v6, v5

    :goto_191
    add-int/lit8 v5, v5, 0x1

    goto :goto_14e

    :cond_194
    goto :goto_197

    :cond_195
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :goto_197
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c9

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v5, v3

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1cb

    :cond_1c9
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_1cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e7

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v7, 0x0

    const/16 v8, 0x11

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v5, v3

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1e9

    :cond_1e7
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_1e9
    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 5

    new-instance v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;)V

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getWakelockTimerLocked(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_19
    return-void
.end method

.method public reset(JJ)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    or-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$100([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$100([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$200([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    # invokes: Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    invoke-static {v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_65
    if-ltz v2, :cond_7b

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->reset()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_78

    :cond_77
    const/4 v0, 0x1

    :goto_78
    add-int/lit8 v2, v2, -0x1

    goto :goto_65

    :cond_7b
    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_88
    if-ltz v2, :cond_a2

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->reset()Z

    move-result v4

    if-eqz v4, :cond_9e

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_9f

    :cond_9e
    const/4 v0, 0x1

    :goto_9f
    add-int/lit8 v2, v2, -0x1

    goto :goto_88

    :cond_a2
    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_aa
    if-ltz v2, :cond_ba

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->detach()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_aa

    :cond_ba
    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    xor-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public updateOnBatteryBgTimeBase(JJ)Z
    .registers 12

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    move v2, v0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public updateOnBatteryScreenOffBgTimeBase(JJ)Z
    .registers 12

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    move v2, v0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public updateUidAppProcessStateLocked(I)V
    .registers 13

    const/16 v0, 0x14

    if-ne p1, v0, :cond_7

    const/16 v0, 0x14

    goto :goto_23

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const/4 v0, 0x0

    goto :goto_23

    :cond_c
    const/4 v0, 0x4

    if-gt p1, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_23

    :cond_11
    const/16 v0, 0xc

    if-gt p1, v0, :cond_17

    const/4 v0, 0x4

    goto :goto_23

    :cond_17
    const/4 v0, 0x6

    if-gt p1, v0, :cond_1c

    const/4 v0, 0x2

    goto :goto_23

    :cond_1c
    const/16 v0, 0xb

    if-gt p1, v0, :cond_22

    const/4 v0, 0x3

    goto :goto_23

    :cond_22
    const/4 v0, 0x6

    :goto_23
    iget v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    if-ne v1, v0, :cond_28

    return-void

    :cond_28
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v3

    iput v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    const-wide/16 v5, 0x3e8

    mul-long v7, v3, v5

    mul-long v9, v1, v5

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->updateOnBatteryBgTimeBase(JJ)Z

    mul-long v7, v3, v5

    mul-long/2addr v5, v1

    invoke-virtual {p0, v7, v8, v5, v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->updateOnBatteryScreenOffBgTimeBase(JJ)Z

    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;JJ)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_3b

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3b
    iget-object v3, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    :goto_45
    if-ge v4, v3, :cond_5e

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_5e
    iget-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    :goto_68
    if-ge v5, v4, :cond_83

    iget-object v6, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    invoke-virtual {v6, v7}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    :cond_83
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_92

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_95

    :cond_92
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_95
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v5, :cond_bd

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    :goto_9d
    const/16 v11, 0xa

    if-ge v5, v11, :cond_b2

    iget-object v11, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v11, v11, v5

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v11, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v11, v11, v5

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9d

    :cond_b2
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_c0

    :cond_bd
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c0
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v5, :cond_cd

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d0

    :cond_cd
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d0
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v5, :cond_dd

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e0

    :cond_dd
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e0
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v5, :cond_12e

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v5, v5

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v11, v5

    move v12, v6

    :goto_fb
    if-ge v12, v11, :cond_12c

    aget-object v13, v5, v12

    if-eqz v13, :cond_123

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    array-length v14, v13

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    array-length v14, v13

    move v15, v6

    :goto_10a
    if-ge v15, v14, :cond_121

    aget-object v6, v13, v15

    if-eqz v6, :cond_118

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    const/4 v10, 0x0

    goto :goto_11c

    :cond_118
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11c
    add-int/lit8 v15, v15, 0x1

    move v6, v10

    const/4 v10, 0x1

    goto :goto_10a

    :cond_121
    move v10, v6

    goto :goto_127

    :cond_123
    move v10, v6

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_127
    add-int/lit8 v12, v12, 0x1

    move v6, v10

    const/4 v10, 0x1

    goto :goto_fb

    :cond_12c
    move v10, v6

    goto :goto_132

    :cond_12e
    move v10, v6

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_132
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v5, :cond_14a

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_14e

    :cond_14a
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14e
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v5, :cond_15c

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_160

    :cond_15c
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_160
    return-void
.end method
