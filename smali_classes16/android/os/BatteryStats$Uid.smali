.class public abstract Landroid/os/BatteryStats$Uid;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid$Pkg;,
        Landroid/os/BatteryStats$Uid$Proc;,
        Landroid/os/BatteryStats$Uid$Pid;,
        Landroid/os/BatteryStats$Uid$Sensor;,
        Landroid/os/BatteryStats$Uid$Wakelock;
    }
.end annotation


# static fields
.field public static final CRITICAL_PROC_STATES:[I

.field public static final NUM_PROCESS_STATE:I = 0x7

.field public static final NUM_USER_ACTIVITY_TYPES:I

.field public static final NUM_WIFI_BATCHED_SCAN_BINS:I = 0x5

.field public static final PROCESS_STATE_BACKGROUND:I = 0x3

.field public static final PROCESS_STATE_CACHED:I = 0x6

.field public static final PROCESS_STATE_FOREGROUND:I = 0x2

.field public static final PROCESS_STATE_FOREGROUND_SERVICE:I = 0x1

.field public static final PROCESS_STATE_HEAVY_WEIGHT:I = 0x5

.field static final PROCESS_STATE_NAMES:[Ljava/lang/String;

.field public static final PROCESS_STATE_TOP:I = 0x0

.field public static final PROCESS_STATE_TOP_SLEEPING:I = 0x4

.field public static final UID_PROCESS_TYPES:[Ljava/lang/String;

.field static final USER_ACTIVITY_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "Top"

    const-string v1, "Fg Service"

    const-string v2, "Foreground"

    const-string v3, "Background"

    const-string v4, "Top Sleeping"

    const-string v5, "Heavy Weight"

    const-string v6, "Cached"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    const-string v1, "T"

    const-string v2, "FS"

    const-string v3, "F"

    const-string v4, "B"

    const-string v5, "TS"

    const-string v6, "HW"

    const-string v7, "C"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    sput-object v0, Landroid/os/BatteryStats$Uid;->CRITICAL_PROC_STATES:[I

    const-string/jumbo v0, "other"

    const-string v1, "button"

    const-string/jumbo v2, "touch"

    const-string v3, "accessibility"

    const-string v4, "attention"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    return-void

    :array_46
    .array-data 4
        0x0
        0x3
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
.end method

.method public abstract getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
.end method

.method public abstract getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getCpuActiveTime()J
.end method

.method public abstract getCpuClusterTimes()[J
.end method

.method public abstract getCpuFreqTimes(I)[J
.end method

.method public abstract getCpuFreqTimes(II)[J
.end method

.method public abstract getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
.end method

.method public abstract getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
.end method

.method public abstract getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getFullWifiLockTime(JI)J
.end method

.method public abstract getJobCompletionStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJobStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(I)J
.end method

.method public abstract getMobileRadioApWakeupCount(I)J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getPackageStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProcessStateTime(IJI)J
.end method

.method public abstract getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getProcessStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenOffCpuFreqTimes(I)[J
.end method

.method public abstract getScreenOffCpuFreqTimes(II)[J
.end method

.method public abstract getSensorStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSystemCpuTimeUs(I)J
.end method

.method public abstract getTimeAtCpuSpeed(III)J
.end method

.method public abstract getUid()I
.end method

.method public abstract getUserActivityCount(II)I
.end method

.method public abstract getUserCpuTimeUs(I)J
.end method

.method public abstract getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWakelockStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiBatchedScanCount(II)I
.end method

.method public abstract getWifiBatchedScanTime(IJI)J
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiMulticastTime(JI)J
.end method

.method public abstract getWifiRadioApWakeupCount(I)J
.end method

.method public abstract getWifiRunningTime(JI)J
.end method

.method public abstract getWifiScanActualTime(J)J
.end method

.method public abstract getWifiScanBackgroundCount(I)I
.end method

.method public abstract getWifiScanBackgroundTime(J)J
.end method

.method public abstract getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWifiScanCount(I)I
.end method

.method public abstract getWifiScanTime(JI)J
.end method

.method public abstract getWifiScanTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract hasNetworkActivity()Z
.end method

.method public abstract hasUserActivity()Z
.end method

.method public abstract noteActivityPausedLocked(J)V
.end method

.method public abstract noteActivityResumedLocked(J)V
.end method

.method public abstract noteFullWifiLockAcquiredLocked(J)V
.end method

.method public abstract noteFullWifiLockReleasedLocked(J)V
.end method

.method public abstract noteUserActivityLocked(I)V
.end method

.method public abstract noteWifiBatchedScanStartedLocked(IJ)V
.end method

.method public abstract noteWifiBatchedScanStoppedLocked(J)V
.end method

.method public abstract noteWifiMulticastDisabledLocked(J)V
.end method

.method public abstract noteWifiMulticastEnabledLocked(J)V
.end method

.method public abstract noteWifiRunningLocked(J)V
.end method

.method public abstract noteWifiScanStartedLocked(J)V
.end method

.method public abstract noteWifiScanStoppedLocked(J)V
.end method

.method public abstract noteWifiStoppedLocked(J)V
.end method
