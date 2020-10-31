.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$StatName;
    }
.end annotation


# static fields
.field private static final AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field public static final BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:I = 0x23

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_EMERGENCY_SERVICE:I

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_OTHER:I

.field public static final DATA_CONNECTION_OUT_OF_SERVICE:I = 0x0

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final FOREGROUND_SERVICE:I = 0x16

.field private static final FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field public static final JOB_FRESHNESS_BUCKETS:[J

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field public static final MAX_TRACKED_SCREEN_STATE:I = 0x4

.field public static final MILLISECONDS_IN_HOUR:D = 3600000.0

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field private static final RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field public static final UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field private static final sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .registers 54

    const-string v0, "l"

    const-string v1, "c"

    const-string/jumbo v2, "u"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_486

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    const-string v1, "dark"

    const-string v2, "dim"

    const-string/jumbo v3, "medium"

    const-string v4, "light"

    const-string v5, "bright"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v5, "3"

    const-string v6, "4"

    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    sput v7, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    add-int/2addr v7, v8

    sput v7, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    const-string/jumbo v9, "oos"

    const-string v10, "gprs"

    const-string v11, "edge"

    const-string/jumbo v12, "umts"

    const-string v13, "cdma"

    const-string v14, "evdo_0"

    const-string v15, "evdo_A"

    const-string v16, "1xrtt"

    const-string v17, "hsdpa"

    const-string v18, "hsupa"

    const-string v19, "hspa"

    const-string v20, "iden"

    const-string v21, "evdo_b"

    const-string v22, "lte"

    const-string v23, "ehrpd"

    const-string v24, "hspap"

    const-string v25, "gsm"

    const-string/jumbo v26, "td_scdma"

    const-string v27, "iwlan"

    const-string v28, "lte_ca"

    const-string/jumbo v29, "nr"

    const-string v30, "emngcy"

    const-string/jumbo v31, "other"

    filled-new-array/range {v9 .. v31}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    add-int/2addr v7, v8

    sput v7, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const-string v9, "invalid"

    const-string v10, "disconn"

    const-string v11, "disabled"

    const-string v12, "inactive"

    const-string/jumbo v13, "scanning"

    const-string v14, "authenticating"

    const-string v15, "associating"

    const-string v16, "associated"

    const-string v17, "4-way-handshake"

    const-string v18, "group-handshake"

    const-string v19, "completed"

    const-string v20, "dormant"

    const-string/jumbo v21, "uninit"

    filled-new-array/range {v9 .. v21}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    const-string v9, "inv"

    const-string v10, "dsc"

    const-string v11, "dis"

    const-string v12, "inact"

    const-string/jumbo v13, "scan"

    const-string v14, "auth"

    const-string v15, "ascing"

    const-string v16, "asced"

    const-string v17, "4-way"

    const-string v18, "group"

    const-string v19, "compl"

    const-string v20, "dorm"

    const-string/jumbo v21, "uninit"

    filled-new-array/range {v9 .. v21}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v7, 0x12

    new-array v7, v7, [Landroid/os/BatteryStats$BitDescription;

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v10, -0x80000000

    const-string/jumbo v11, "running"

    const-string/jumbo v12, "r"

    invoke-direct {v9, v10, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    aput-object v9, v7, v10

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v11, 0x40000000    # 2.0f

    const-string/jumbo v12, "wake_lock"

    const-string/jumbo v13, "w"

    invoke-direct {v9, v11, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v8

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v11, 0x800000

    const-string/jumbo v12, "sensor"

    const-string/jumbo v13, "s"

    invoke-direct {v9, v11, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x2

    aput-object v9, v7, v11

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v12, 0x20000000

    const-string v13, "gps"

    const-string v14, "g"

    invoke-direct {v9, v12, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x3

    aput-object v9, v7, v12

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v13, 0x10000000

    const-string/jumbo v14, "wifi_full_lock"

    const-string v15, "Wl"

    invoke-direct {v9, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x4

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v14, 0x8000000

    const-string/jumbo v15, "wifi_scan"

    const-string v13, "Ws"

    invoke-direct {v9, v14, v15, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v0

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v13, 0x10000

    const-string/jumbo v14, "wifi_multicast"

    const-string v15, "Wm"

    invoke-direct {v9, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x6

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v14, 0x4000000

    const-string/jumbo v15, "wifi_radio"

    const-string v13, "Wr"

    invoke-direct {v9, v14, v15, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x7

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v14, 0x2000000

    const-string/jumbo v15, "mobile_radio"

    const-string v13, "Pr"

    invoke-direct {v9, v14, v15, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x8

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v14, 0x200000

    const-string/jumbo v15, "phone_scanning"

    const-string v13, "Psc"

    invoke-direct {v9, v14, v15, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x9

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v14, 0x400000

    const-string v15, "audio"

    const-string v13, "a"

    invoke-direct {v9, v14, v15, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xa

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v14, 0x100000

    const-string/jumbo v15, "screen"

    const-string v13, "S"

    invoke-direct {v9, v14, v15, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xb

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v14, 0x80000

    const-string/jumbo v15, "plugged"

    const-string v13, "BP"

    invoke-direct {v9, v14, v15, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xc

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v14, 0x40000

    const-string/jumbo v15, "screen_doze"

    const-string v13, "Sd"

    invoke-direct {v9, v14, v15, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xd

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    sget-object v30, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v25, 0x3e00

    const/16 v26, 0x9

    const-string v27, "data_conn"

    const-string v28, "Pcn"

    move-object/from16 v24, v9

    move-object/from16 v29, v30

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v9, v7, v14

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string v15, "in"

    const-string/jumbo v14, "out"

    const-string v13, "emergency"

    const-string/jumbo v0, "off"

    filled-new-array {v15, v14, v13, v0}, [Ljava/lang/String;

    move-result-object v29

    const-string v13, "in"

    const-string/jumbo v14, "out"

    const-string v15, "em"

    filled-new-array {v13, v14, v15, v0}, [Ljava/lang/String;

    move-result-object v30

    const/16 v25, 0x1c0

    const/16 v26, 0x6

    const-string/jumbo v27, "phone_state"

    const-string v28, "Pst"

    move-object/from16 v24, v9

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v13, 0xf

    aput-object v9, v7, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "none"

    const-string/jumbo v14, "poor"

    const-string/jumbo v15, "moderate"

    const-string v12, "good"

    const-string v11, "great"

    filled-new-array {v13, v14, v15, v12, v11}, [Ljava/lang/String;

    move-result-object v29

    const-string v32, "0"

    const-string v33, "1"

    const-string v34, "2"

    const-string v35, "3"

    const-string v36, "4"

    const-string v37, "5"

    filled-new-array/range {v32 .. v37}, [Ljava/lang/String;

    move-result-object v30

    const/16 v25, 0x38

    const/16 v26, 0x3

    const-string/jumbo v27, "phone_signal_strength"

    const-string v28, "Pss"

    move-object/from16 v24, v9

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v11, 0x10

    aput-object v9, v7, v11

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    sget-object v29, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v30, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/16 v25, 0x7

    const/16 v26, 0x0

    const-string v27, "brightness"

    const-string v28, "Sb"

    move-object/from16 v24, v9

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v11, 0x11

    aput-object v9, v7, v11

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const/16 v7, 0x10

    new-array v7, v7, [Landroid/os/BatteryStats$BitDescription;

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v11, -0x80000000

    const-string/jumbo v12, "power_save"

    const-string/jumbo v13, "ps"

    invoke-direct {v9, v11, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v10

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v11, 0x40000000    # 2.0f

    const-string/jumbo v12, "video"

    const-string/jumbo v13, "v"

    invoke-direct {v9, v11, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v8

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v11, 0x20000000

    const-string/jumbo v12, "wifi_running"

    const-string v13, "Ww"

    invoke-direct {v9, v11, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x2

    aput-object v9, v7, v11

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v11, 0x10000000

    const-string/jumbo v12, "wifi"

    const-string v13, "W"

    invoke-direct {v9, v11, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x3

    aput-object v9, v7, v11

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v11, 0x8000000

    const-string v12, "flashlight"

    const-string v13, "fl"

    invoke-direct {v9, v11, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x4

    aput-object v9, v7, v11

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "full"

    const-string v12, "???"

    filled-new-array {v0, v4, v11, v12}, [Ljava/lang/String;

    move-result-object v29

    const-string v11, "full"

    const-string v12, "???"

    filled-new-array {v0, v4, v11, v12}, [Ljava/lang/String;

    move-result-object v30

    const/high16 v25, 0x6000000

    const/16 v26, 0x19

    const-string v27, "device_idle"

    const-string v28, "di"

    move-object/from16 v24, v9

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x5

    aput-object v9, v7, v0

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x1000000

    const-string v9, "charging"

    const-string v11, "ch"

    invoke-direct {v0, v4, v9, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v0, v7, v4

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x40000

    const-string/jumbo v9, "usb_data"

    const-string v11, "Ud"

    invoke-direct {v0, v4, v9, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-object v0, v7, v4

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x800000

    const-string/jumbo v9, "phone_in_call"

    const-string v11, "Pcl"

    invoke-direct {v0, v4, v9, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-object v0, v7, v4

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x400000

    const-string v9, "bluetooth"

    const-string v11, "b"

    invoke-direct {v0, v4, v9, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9

    aput-object v0, v7, v4

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v29

    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v30

    const/16 v25, 0x70

    const/16 v26, 0x4

    const-string/jumbo v27, "wifi_signal_strength"

    const-string v28, "Wss"

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    sget-object v29, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v30, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v25, 0xf

    const/16 v26, 0x0

    const-string/jumbo v27, "wifi_suppl"

    const-string v28, "Wsp"

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x200000

    const-string v2, "camera"

    const-string v3, "ca"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x100000

    const-string v2, "ble_scan"

    const-string v3, "bles"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x80000

    const-string v2, "cellular_high_tx_power"

    const-string v3, "Chtp"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "poor"

    const-string v2, "good"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v1, "poor"

    const-string v2, "good"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v30

    const/16 v25, 0x80

    const/16 v26, 0x7

    const-string v27, "gps_signal_quality"

    const-string v28, "Gss"

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v32, "null"

    const-string/jumbo v33, "proc"

    const-string v34, "fg"

    const-string/jumbo v35, "top"

    const-string/jumbo v36, "sync"

    const-string/jumbo v37, "wake_lock_in"

    const-string v38, "job"

    const-string/jumbo v39, "user"

    const-string/jumbo v40, "userfg"

    const-string v41, "conn"

    const-string v42, "active"

    const-string/jumbo v43, "pkginst"

    const-string/jumbo v44, "pkgunin"

    const-string v45, "alarm"

    const-string/jumbo v46, "stats"

    const-string/jumbo v47, "pkginactive"

    const-string/jumbo v48, "pkgactive"

    const-string/jumbo v49, "tmpwhitelist"

    const-string/jumbo v50, "screenwake"

    const-string/jumbo v51, "wakeupap"

    const-string v52, "longwake"

    const-string v53, "est_capacity"

    filled-new-array/range {v32 .. v53}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    const-string v32, "Enl"

    const-string v33, "Epr"

    const-string v34, "Efg"

    const-string v35, "Etp"

    const-string v36, "Esy"

    const-string v37, "Ewl"

    const-string v38, "Ejb"

    const-string v39, "Eur"

    const-string v40, "Euf"

    const-string v41, "Ecn"

    const-string v42, "Eac"

    const-string v43, "Epi"

    const-string v44, "Epu"

    const-string v45, "Eal"

    const-string v46, "Est"

    const-string v47, "Eai"

    const-string v48, "Eaa"

    const-string v49, "Etw"

    const-string v50, "Esw"

    const-string v51, "Ewa"

    const-string v52, "Elw"

    const-string v53, "Eec"

    filled-new-array/range {v32 .. v53}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    sget-object v0, Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;->INSTANCE:Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;

    sput-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    sget-object v0, Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;->INSTANCE:Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;

    sput-object v0, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v1, 0x16

    new-array v1, v1, [Landroid/os/BatteryStats$IntToString;

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v10

    aput-object v2, v1, v8

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const/16 v3, 0xb

    aput-object v0, v1, v3

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    const-string/jumbo v3, "off"

    const-string/jumbo v4, "scanning"

    const-string/jumbo v5, "no_net"

    const-string v6, "disconn"

    const-string/jumbo v7, "sta"

    const-string/jumbo v8, "p2p"

    const-string/jumbo v9, "sta_p2p"

    const-string/jumbo v10, "soft_ap"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_49e

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4b6

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    const-string/jumbo v1, "screen off"

    const-string/jumbo v2, "screen off power save"

    const-string/jumbo v3, "screen off device idle"

    const-string/jumbo v4, "screen on"

    const-string/jumbo v5, "screen on power save"

    const-string/jumbo v6, "screen doze"

    const-string/jumbo v7, "screen doze power save"

    const-string/jumbo v8, "screen doze-suspend"

    const-string/jumbo v9, "screen doze-suspend power save"

    const-string/jumbo v10, "screen doze-suspend device idle"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    return-void

    :array_486
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_49e
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_4b6
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .registers 10

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_38

    goto :goto_4f

    :cond_38
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v5, v1

    move v6, v0

    :goto_3e
    if-ge v6, v5, :cond_4e

    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_4b

    return v2

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_4e
    return v0

    :cond_4f
    :goto_4f
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 13

    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_53
    if-ge v3, v2, :cond_64

    aget-object v4, v1, v3

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_64
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 16

    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v8

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v2, 0x10100000005L

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    const/4 v3, 0x0

    :goto_5a
    array-length v6, v2

    if-ge v3, v6, :cond_7d

    aget-object v6, v2, v3

    const-wide v7, 0x20b00000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10500000001L

    invoke-virtual {p0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {p0, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :cond_7d
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_9

    return-void

    :cond_9
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    const-string v13, " steps)"

    const-string v14, " (from "

    const/4 v15, 0x0

    if-ltz v3, :cond_3f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v15

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3f
    const/4 v3, 0x0

    move v8, v3

    :goto_41
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v4, v3

    if-ge v8, v4, :cond_8a

    aget v3, v3, v8

    int-to-long v4, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v8

    int-to-long v6, v3

    move-object/from16 v3, p4

    move/from16 v16, v8

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-lez v5, :cond_87

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v5, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, v16

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " time: "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v5, p6, v15

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_87
    add-int/lit8 v8, v16, 0x1

    goto :goto_41

    :cond_8a
    return-void
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package changes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_34

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_41

    :cond_34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_44
    return-void
.end method

.method private static dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_9f

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10300000001L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000002L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x0

    const-wide/16 v11, 0x3

    and-long v13, v8, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v15, 0x2

    const/4 v14, 0x1

    if-nez v13, :cond_58

    and-long/2addr v11, v6

    long-to-int v11, v11

    add-int/2addr v11, v14

    if-eq v11, v14, :cond_55

    if-eq v11, v15, :cond_52

    const/4 v12, 0x3

    if-eq v11, v12, :cond_50

    const/4 v13, 0x4

    if-eq v11, v13, :cond_4e

    const/4 v10, 0x5

    goto :goto_59

    :cond_4e
    const/4 v10, 0x4

    goto :goto_59

    :cond_50
    const/4 v10, 0x3

    goto :goto_59

    :cond_52
    const/4 v12, 0x3

    const/4 v10, 0x1

    goto :goto_59

    :cond_55
    const/4 v12, 0x3

    const/4 v10, 0x2

    goto :goto_59

    :cond_58
    const/4 v12, 0x3

    :goto_59
    const-wide v12, 0x10e00000003L

    invoke-virtual {v0, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v11, 0x0

    const-wide/16 v12, 0x4

    and-long v19, v8, v12

    const-wide/16 v17, 0x0

    cmp-long v19, v19, v17

    if-nez v19, :cond_74

    and-long/2addr v12, v6

    cmp-long v12, v12, v17

    if-eqz v12, :cond_72

    goto :goto_73

    :cond_72
    move v14, v15

    :goto_73
    move v11, v14

    :cond_74
    const-wide v12, 0x10e00000004L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v12, 0x0

    const-wide/16 v13, 0x8

    and-long v19, v8, v13

    const-wide/16 v17, 0x0

    cmp-long v19, v19, v17

    if-nez v19, :cond_90

    and-long/2addr v13, v6

    cmp-long v13, v13, v17

    if-eqz v13, :cond_8e

    move v14, v15

    goto :goto_8f

    :cond_8e
    const/4 v14, 0x3

    :goto_8f
    move v12, v14

    :cond_90
    const-wide v13, 0x10e00000005L

    invoke-virtual {v0, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_9f
    return-void
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return v3

    :cond_a
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v4, :cond_f

    return v3

    :cond_f
    if-nez p4, :cond_14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_18
    const/4 v7, 0x1

    if-ge v6, v4, :cond_167

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v19, 0x4

    const-wide/16 v21, 0x3

    const/4 v15, 0x2

    const-wide/16 v23, 0x0

    if-eqz p4, :cond_b9

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v5, v3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v5, v7

    and-long v25, v13, v21

    cmp-long v25, v25, v23

    const-string v26, ""

    if-nez v25, :cond_77

    move/from16 v27, v4

    and-long v3, v11, v21

    long-to-int v3, v3

    add-int/2addr v3, v7

    if-eq v3, v7, :cond_71

    if-eq v3, v15, :cond_6b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_65

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5f

    const-string v3, "?"

    aput-object v3, v5, v15

    goto :goto_7b

    :cond_5f
    const-string/jumbo v3, "sds"

    aput-object v3, v5, v15

    goto :goto_7b

    :cond_65
    const-string/jumbo v3, "sd"

    aput-object v3, v5, v15

    goto :goto_7b

    :cond_6b
    const-string/jumbo v3, "s+"

    aput-object v3, v5, v15

    goto :goto_7b

    :cond_71
    const-string/jumbo v3, "s-"

    aput-object v3, v5, v15

    goto :goto_7b

    :cond_77
    move/from16 v27, v4

    aput-object v26, v5, v15

    :goto_7b
    and-long v3, v13, v19

    cmp-long v3, v3, v23

    if-nez v3, :cond_92

    and-long v3, v11, v19

    cmp-long v3, v3, v23

    if-eqz v3, :cond_8b

    const-string/jumbo v3, "p+"

    goto :goto_8e

    :cond_8b
    const-string/jumbo v3, "p-"

    :goto_8e
    const/4 v4, 0x3

    aput-object v3, v5, v4

    goto :goto_95

    :cond_92
    const/4 v4, 0x3

    aput-object v26, v5, v4

    :goto_95
    const-wide/16 v3, 0x8

    and-long v17, v13, v3

    cmp-long v7, v17, v23

    if-nez v7, :cond_ab

    and-long/2addr v3, v11

    cmp-long v3, v3, v23

    if-eqz v3, :cond_a5

    const-string v3, "i+"

    goto :goto_a7

    :cond_a5
    const-string v3, "i-"

    :goto_a7
    const/4 v4, 0x4

    aput-object v3, v5, v4

    goto :goto_ae

    :cond_ab
    const/4 v4, 0x4

    aput-object v26, v5, v4

    :goto_ae
    move-object v3, v5

    check-cast v3, [Ljava/lang/Object;

    const-string v4, "i"

    const/4 v7, 0x0

    invoke-static {v0, v7, v4, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_15c

    :cond_b9
    move/from16 v27, v4

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const/4 v4, 0x0

    and-long v25, v13, v21

    cmp-long v25, v25, v23

    const-string v3, " ("

    if-nez v25, :cond_113

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v1, v11, v21

    long-to-int v1, v1

    add-int/2addr v1, v7

    if-eq v1, v7, :cond_10c

    if-eq v1, v15, :cond_105

    const/4 v2, 0x3

    if-eq v1, v2, :cond_fe

    const/4 v2, 0x4

    if-eq v1, v2, :cond_f7

    const-string/jumbo v1, "screen-?"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_112

    :cond_f7
    const-string/jumbo v1, "screen-doze-suspend"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_112

    :cond_fe
    const-string/jumbo v1, "screen-doze"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_112

    :cond_105
    const-string/jumbo v1, "screen-on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_112

    :cond_10c
    const-string/jumbo v1, "screen-off"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_112
    const/4 v4, 0x1

    :cond_113
    and-long v1, v13, v19

    cmp-long v1, v1, v23

    const-string v2, ", "

    if-nez v1, :cond_134

    if-eqz v4, :cond_11f

    move-object v1, v2

    goto :goto_120

    :cond_11f
    move-object v1, v3

    :goto_120
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v15, v11, v19

    cmp-long v1, v15, v23

    if-eqz v1, :cond_12d

    const-string/jumbo v1, "power-save-on"

    goto :goto_130

    :cond_12d
    const-string/jumbo v1, "power-save-off"

    :goto_130
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_134
    const-wide/16 v15, 0x8

    and-long v19, v13, v15

    cmp-long v1, v19, v23

    if-nez v1, :cond_152

    if-eqz v4, :cond_13f

    move-object v3, v2

    :cond_13f
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v1, 0x8

    and-long/2addr v1, v11

    cmp-long v1, v1, v23

    if-eqz v1, :cond_14c

    const-string v1, "device-idle-on"

    goto :goto_14e

    :cond_14c
    const-string v1, "device-idle-off"

    :goto_14e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_152
    if-eqz v4, :cond_159

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_159
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    :goto_15c
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v4, v27

    const/4 v3, 0x0

    goto/16 :goto_18

    :cond_167
    return v7
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .registers 32

    move-object/from16 v8, p1

    new-instance v0, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v9, v1

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v10, v6

    :goto_14
    move-object/from16 v11, p0

    invoke-virtual {v11, v9}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    const-wide/16 v12, 0x0

    if-eqz v6, :cond_16a

    iget-wide v14, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v1, v3, v12

    if-gez v1, :cond_28

    move-wide v1, v14

    move-wide/from16 v16, v1

    goto :goto_2a

    :cond_28
    move-wide/from16 v16, v3

    :goto_2a
    iget-wide v1, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v1, v1, p3

    if-ltz v1, :cond_165

    cmp-long v1, p3, v12

    const/16 v18, 0x1

    const/4 v7, 0x0

    if-ltz v1, :cond_14b

    if-nez v5, :cond_14b

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_73

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-eq v1, v3, :cond_73

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x4

    if-eq v1, v3, :cond_73

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4f

    goto :goto_73

    :cond_4f
    iget-wide v3, v9, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v1, v3, v12

    if-eqz v1, :cond_70

    const/4 v12, 0x1

    iget-byte v13, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v2, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_61

    move/from16 v6, v18

    goto :goto_62

    :cond_61
    move v6, v7

    :goto_62
    move-object/from16 v1, p1

    move-object v2, v9

    move-wide/from16 v3, v16

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v13, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v11, v7

    goto :goto_8b

    :cond_70
    move v12, v5

    move v11, v7

    goto :goto_8b

    :cond_73
    :goto_73
    const/4 v12, 0x1

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_7b

    move/from16 v13, v18

    goto :goto_7c

    :cond_7b
    move v13, v7

    :goto_7c
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, p5

    move v11, v7

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v11, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_8b
    if-eqz v10, :cond_14c

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v1, :cond_a6

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_98

    move/from16 v7, v18

    goto :goto_99

    :cond_98
    move v7, v11

    :goto_99
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v11, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_a6
    iget v13, v9, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v7, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    new-instance v1, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    move v6, v1

    :goto_b3
    const/16 v1, 0x16

    if-ge v6, v1, :cond_141

    nop

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v19

    if-nez v19, :cond_c3

    move/from16 v25, v6

    move-object v11, v7

    goto/16 :goto_13b

    :cond_c3
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_cb
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Ljava/util/Map$Entry;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    move v5, v1

    :goto_e2
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_12f

    iput v6, v9, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_10b

    move/from16 v22, v18

    goto :goto_10d

    :cond_10b
    move/from16 v22, v11

    :goto_10d
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-wide/from16 v4, v16

    move/from16 v25, v6

    move/from16 v6, p5

    move-object v11, v7

    move/from16 v7, v22

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v1, 0x0

    iput-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v5, v24, 0x1

    move-object v7, v11

    move-object/from16 v4, v23

    move/from16 v6, v25

    const/4 v11, 0x0

    goto :goto_e2

    :cond_12f
    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move-object v11, v7

    const/4 v11, 0x0

    goto :goto_cb

    :cond_138
    move/from16 v25, v6

    move-object v11, v7

    :goto_13b
    add-int/lit8 v6, v25, 0x1

    move-object v7, v11

    const/4 v11, 0x0

    goto/16 :goto_b3

    :cond_141
    move/from16 v25, v6

    move-object v11, v7

    iput v13, v9, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v11, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_14c

    :cond_14b
    move v12, v5

    :cond_14c
    :goto_14c
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_153

    move/from16 v7, v18

    goto :goto_154

    :cond_153
    const/4 v7, 0x0

    :goto_154
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move v5, v12

    move-wide v1, v14

    move-wide/from16 v3, v16

    goto/16 :goto_14

    :cond_165
    move-wide v1, v14

    move-wide/from16 v3, v16

    goto/16 :goto_14

    :cond_16a
    cmp-long v6, p3, v12

    if-ltz v6, :cond_181

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    if-eqz p5, :cond_176

    const-string v6, "NEXT: "

    goto :goto_178

    :cond_176
    const-string v6, "  NEXT: "

    :goto_178
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    invoke-virtual {v8, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    :cond_181
    return-void
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    array-length v0, p4

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_14

    aget-object v2, p4, v1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;Ljava/util/List;)V
    .registers 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    mul-long v14, v12, v2

    move-object/from16 v6, p0

    invoke-virtual {v6, v10, v11}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v0

    if-eqz v8, :cond_57

    const/4 v0, 0x0

    :goto_22
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-nez v16, :cond_49

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v17

    move-object/from16 v6, v16

    invoke-virtual {v3, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b

    :cond_49
    move-object/from16 v6, v16

    :goto_4b
    move/from16 v16, v2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, p0

    goto :goto_22

    :cond_57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8c

    const/4 v0, 0x0

    :goto_64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_89

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v16, v1

    iget-object v1, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v1, v8, :cond_79

    goto :goto_82

    :cond_79
    iget-object v1, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_82
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, p3

    move-object/from16 v1, v16

    goto :goto_64

    :cond_89
    move-object/from16 v16, v1

    goto :goto_8e

    :cond_8c
    move-object/from16 v16, v1

    :goto_8e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_98
    if-ge v2, v1, :cond_a49

    move/from16 v17, v1

    const-wide v0, 0x20b00000005L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Landroid/os/BatteryStats$Uid;

    move-wide/from16 v20, v0

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move/from16 v22, v2

    move-object/from16 v18, v3

    const-wide v2, 0x10500000001L

    invoke-virtual {v7, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move-object/from16 v3, v18

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_d6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    goto :goto_d7

    :cond_d6
    move-object v2, v0

    :goto_d7
    nop

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v18

    move/from16 v25, v1

    const/4 v1, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v1, v18

    :goto_e7
    const-wide/16 v27, 0x0

    move-object/from16 v29, v8

    move/from16 v18, v9

    if-ltz v1, :cond_1d1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    nop

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual/range {v32 .. v32}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v32

    if-nez v32, :cond_116

    move-object/from16 v26, v0

    move/from16 v44, v1

    move-object/from16 v37, v3

    move-wide/from16 v39, v4

    move-wide/from16 v33, v10

    move-wide/from16 v41, v12

    move-wide/from16 v35, v14

    goto/16 :goto_1bd

    :cond_116
    move-wide/from16 v33, v10

    move-wide/from16 v35, v14

    const-wide v10, 0x20b00000002L

    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    const-wide v10, 0x10900000001L

    invoke-virtual {v7, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    :goto_134
    if-ltz v10, :cond_1ae

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v11, v26

    check-cast v11, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object/from16 v26, v0

    const/4 v0, 0x0

    invoke-virtual {v11, v4, v5, v0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v37

    move-wide/from16 v39, v4

    move-object v5, v3

    invoke-static/range {v37 .. v38}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v3

    move-object/from16 v37, v5

    invoke-virtual {v11, v0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v5

    move-object/from16 v38, v9

    invoke-virtual {v11, v0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v9

    cmp-long v0, v3, v27

    if-nez v0, :cond_165

    if-nez v5, :cond_165

    if-nez v9, :cond_165

    move/from16 v44, v1

    move-wide/from16 v41, v12

    goto :goto_19e

    :cond_165
    move-object/from16 v43, v11

    move-wide/from16 v41, v12

    const-wide v11, 0x20b00000002L

    move v13, v1

    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move/from16 v44, v13

    const-wide v12, 0x10900000001L

    invoke-virtual {v7, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v11, 0x10300000002L

    invoke-virtual {v7, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10500000003L

    invoke-virtual {v7, v11, v12, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000004L

    invoke-virtual {v7, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_19e
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, v26

    move-object/from16 v3, v37

    move-object/from16 v9, v38

    move-wide/from16 v4, v39

    move-wide/from16 v12, v41

    move/from16 v1, v44

    const/4 v11, 0x1

    goto :goto_134

    :cond_1ae
    move-object/from16 v26, v0

    move/from16 v44, v1

    move-object/from16 v37, v3

    move-wide/from16 v39, v4

    move-object/from16 v38, v9

    move-wide/from16 v41, v12

    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1bd
    add-int/lit8 v1, v44, -0x1

    move/from16 v9, v18

    move-object/from16 v0, v26

    move-object/from16 v8, v29

    move-wide/from16 v10, v33

    move-wide/from16 v14, v35

    move-object/from16 v3, v37

    move-wide/from16 v4, v39

    move-wide/from16 v12, v41

    goto/16 :goto_e7

    :cond_1d1
    move-object/from16 v26, v0

    move/from16 v44, v1

    move-object/from16 v37, v3

    move-wide/from16 v39, v4

    move-wide/from16 v33, v10

    move-wide/from16 v41, v12

    move-wide/from16 v35, v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_204

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v3, 0x10900000001L

    invoke-virtual {v7, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1e3

    :cond_204
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    const-wide v8, 0x10300000001L

    if-eqz v0, :cond_23e

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    move-wide/from16 v10, v41

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_224

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v12

    goto :goto_226

    :cond_224
    move-wide/from16 v12, v27

    :goto_226
    const-wide v14, 0x10b00000018L

    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v8, 0x10300000002L

    invoke-virtual {v7, v8, v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_240

    :cond_23e
    move-wide/from16 v10, v41

    :goto_240
    const-wide v3, 0x10b00000008L

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const/4 v8, 0x0

    move-wide/from16 v12, v20

    move-object/from16 v9, v26

    move-object/from16 v0, p1

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v22

    move/from16 v45, v25

    move-object/from16 v17, v2

    move-wide v1, v3

    move-object/from16 v20, v37

    move-object v3, v5

    move-wide/from16 v21, v39

    move-wide/from16 v4, v35

    move-wide/from16 v23, v10

    move-object/from16 v10, v19

    move-object v11, v6

    move v6, v8

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10b00000003L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    const-wide v4, 0x10500000006L

    if-eqz v8, :cond_2fc

    const-wide v1, 0x10b00000006L

    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v37, 0x10b00000001L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v48, v1

    move-wide/from16 v1, v37

    move-object v3, v8

    move-wide/from16 v4, v35

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000002L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_2d3

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_2d4

    :cond_2d3
    const/4 v0, 0x0

    :goto_2d4
    const-wide v4, 0x10500000005L

    invoke-virtual {v7, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_2ed

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_2ee

    :cond_2ed
    const/4 v0, 0x0

    :goto_2ee
    const-wide v1, 0x10500000006L

    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v1, v48

    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_301

    :cond_2fc
    const-wide v4, 0x10500000005L

    :goto_301
    const-wide v1, 0x10b00000009L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v4, v35

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10b00000007L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    move-object/from16 v19, v14

    move/from16 v25, v15

    const-wide v14, 0x10300000001L

    invoke-virtual {v7, v14, v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v11, v0}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    const-wide v14, 0x10300000002L

    invoke-virtual {v7, v14, v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v14

    if-eqz v14, :cond_3a0

    invoke-virtual {v11, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v3

    if-eqz v3, :cond_39a

    array-length v6, v3

    array-length v15, v14

    if-ne v6, v15, :cond_39a

    invoke-virtual {v11, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v6

    if-nez v6, :cond_359

    array-length v0, v3

    new-array v6, v0, [J

    :cond_359
    const/4 v0, 0x0

    :goto_35a
    array-length v15, v3

    if-ge v0, v15, :cond_394

    const-wide v1, 0x20b00000003L

    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    add-int/lit8 v15, v0, 0x1

    move-wide/from16 v39, v12

    const-wide v12, 0x10500000001L

    invoke-virtual {v7, v12, v13, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v12, v3, v0

    move-object v15, v8

    move-object/from16 v26, v9

    const-wide v8, 0x10300000002L

    invoke-virtual {v7, v8, v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v8, v6, v0

    const-wide v12, 0x10300000003L

    invoke-virtual {v7, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    move-object v8, v15

    move-object/from16 v9, v26

    move-wide/from16 v12, v39

    goto :goto_35a

    :cond_394
    move-object v15, v8

    move-object/from16 v26, v9

    move-wide/from16 v39, v12

    goto :goto_3a5

    :cond_39a
    move-object v15, v8

    move-object/from16 v26, v9

    move-wide/from16 v39, v12

    goto :goto_3a5

    :cond_3a0
    move-object v15, v8

    move-object/from16 v26, v9

    move-wide/from16 v39, v12

    :goto_3a5
    const/4 v0, 0x0

    :goto_3a6
    const-wide v8, 0x10e00000001L

    const/4 v12, 0x7

    if-ge v0, v12, :cond_439

    const/4 v1, 0x0

    invoke-virtual {v11, v1, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(II)[J

    move-result-object v2

    if-eqz v2, :cond_420

    array-length v3, v2

    array-length v6, v14

    if-ne v3, v6, :cond_420

    invoke-virtual {v11, v1, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(II)[J

    move-result-object v3

    if-nez v3, :cond_3c2

    array-length v1, v2

    new-array v3, v1, [J

    :cond_3c2
    const-wide v12, 0x20b00000004L

    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v1, 0x0

    :goto_3cf
    array-length v6, v2

    if-ge v1, v6, :cond_40f

    move-object/from16 v32, v14

    move-object/from16 v43, v15

    const-wide v8, 0x20b00000002L

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    add-int/lit8 v6, v1, 0x1

    const-wide v8, 0x10500000001L

    invoke-virtual {v7, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v8, v2, v1

    move-object/from16 v44, v10

    move-object/from16 v48, v11

    const-wide v10, 0x10300000002L

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v8, v3, v1

    const-wide v10, 0x10300000003L

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v32

    move-object/from16 v15, v43

    move-object/from16 v10, v44

    move-object/from16 v11, v48

    goto :goto_3cf

    :cond_40f
    move-object/from16 v44, v10

    move-object/from16 v48, v11

    move-object/from16 v32, v14

    move-object/from16 v43, v15

    const-wide v10, 0x10300000003L

    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_42d

    :cond_420
    move-object/from16 v44, v10

    move-object/from16 v48, v11

    move-object/from16 v32, v14

    move-object/from16 v43, v15

    const-wide v10, 0x10300000003L

    :goto_42d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v14, v32

    move-object/from16 v15, v43

    move-object/from16 v10, v44

    move-object/from16 v11, v48

    goto/16 :goto_3a6

    :cond_439
    move-object/from16 v44, v10

    move-object/from16 v48, v11

    move-object/from16 v32, v14

    move-object/from16 v43, v15

    const-wide v10, 0x10300000003L

    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b0000000aL

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v13, v4

    move-wide/from16 v4, v35

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000bL

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000cL

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v15

    const/4 v0, 0x0

    :goto_478
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e8

    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-eqz v1, :cond_4d6

    const-wide v2, 0x20b00000010L

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-wide/from16 v49, v13

    const-wide v12, 0x10900000001L

    invoke-virtual {v7, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v6

    array-length v12, v6

    const/4 v13, 0x0

    :goto_4a5
    if-ge v13, v12, :cond_4d2

    aget v14, v6, v13

    const-wide v10, 0x20b00000002L

    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v7, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v10, 0x0

    invoke-virtual {v1, v14, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    const-wide v8, 0x10500000002L

    invoke-virtual {v7, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v13, v13, 0x1

    const-wide v8, 0x10e00000001L

    const-wide v10, 0x10300000003L

    goto :goto_4a5

    :cond_4d2
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4d8

    :cond_4d6
    move-wide/from16 v49, v13

    :goto_4d8
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v13, v49

    const-wide v8, 0x10e00000001L

    const-wide v10, 0x10300000003L

    const/4 v12, 0x7

    goto :goto_478

    :cond_4e8
    move-wide/from16 v49, v13

    const-wide v8, 0x10500000002L

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v12, v0

    :goto_4fa
    if-ltz v12, :cond_541

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v13}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    const-wide v0, 0x20b0000000fL

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v3, v13

    move-wide v8, v4

    move-wide/from16 v4, v35

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object v3, v14

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v12, v12, -0x1

    const-wide v8, 0x10500000002L

    goto :goto_4fa

    :cond_541
    const-wide v0, 0x10b00000004L

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b00000011L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    nop

    move-object/from16 v12, v48

    invoke-virtual {v12, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000001L

    invoke-virtual {v7, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v12, v11, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000002L

    invoke-virtual {v7, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000003L

    invoke-virtual {v7, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v0, 0x3

    invoke-virtual {v12, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x10300000004L

    invoke-virtual {v7, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000005L

    const/4 v6, 0x4

    invoke-virtual {v12, v6, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000006L

    const/4 v4, 0x5

    invoke-virtual {v12, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000007L

    invoke-virtual {v12, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000008L

    invoke-virtual {v12, v11, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000009L

    invoke-virtual {v12, v13, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000aL

    invoke-virtual {v12, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1030000000bL

    invoke-virtual {v12, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1050000000cL

    invoke-virtual {v12, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000dL

    invoke-virtual {v12, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1050000000eL

    invoke-virtual {v12, v3}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1030000000fL

    const/4 v2, 0x6

    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000010L

    const/4 v4, 0x7

    invoke-virtual {v12, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000011L

    const/16 v4, 0x8

    invoke-virtual {v12, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000012L

    const/16 v5, 0x9

    invoke-virtual {v12, v5, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    invoke-virtual {v7, v0, v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000013L

    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    invoke-virtual {v7, v0, v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000014L

    const/4 v2, 0x7

    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    invoke-virtual {v7, v0, v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000015L

    invoke-virtual {v12, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    invoke-virtual {v7, v0, v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000016L

    invoke-virtual {v12, v5, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v13, v44

    move/from16 v14, v45

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    if-eqz v6, :cond_6b8

    const-wide v0, 0x10b00000012L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10100000001L

    iget-wide v4, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v2, 0x10800000002L

    iget-boolean v4, v6, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    invoke-virtual {v7, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10100000003L

    iget-wide v4, v6, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v2, 0x10100000004L

    iget-wide v4, v6, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_6b8
    nop

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v11

    :goto_6c2
    if-ltz v0, :cond_73c

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Proc;

    const-wide v2, 0x20b00000013L

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v48, v12

    const-wide v11, 0x10900000001L

    invoke-virtual {v7, v11, v12, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v11

    move-object/from16 v44, v6

    const-wide v5, 0x10300000002L

    invoke-virtual {v7, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v11

    const-wide v5, 0x10300000003L

    invoke-virtual {v7, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v5

    const-wide v11, 0x10300000004L

    invoke-virtual {v7, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v6

    const-wide v11, 0x10500000005L

    invoke-virtual {v7, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v6

    const-wide v11, 0x10500000006L

    invoke-virtual {v7, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000007L

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v6

    invoke-virtual {v7, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v6, v44

    move-object/from16 v12, v48

    const/4 v11, 0x1

    goto :goto_6c2

    :cond_73c
    move-object/from16 v44, v6

    move-object/from16 v48, v12

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v11

    const/4 v0, 0x0

    move v12, v0

    :goto_746
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_7ae

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    if-nez v31, :cond_762

    move-object/from16 v46, v4

    const-wide v51, 0x10500000001L

    goto :goto_7a9

    :cond_762
    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v45

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    const-wide v0, 0x20b00000015L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide/from16 v51, v1

    const-wide v1, 0x10500000001L

    invoke-virtual {v7, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v46, 0x10b00000002L

    const/16 v53, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v54, v51

    move-wide/from16 v51, v1

    move-wide/from16 v1, v46

    move-object/from16 v3, v31

    move-object/from16 v46, v4

    move-wide/from16 v4, v35

    move/from16 v47, v6

    move/from16 v6, v53

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v3, v45

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v54

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_7a9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v46

    goto :goto_746

    :cond_7ae
    move-object/from16 v46, v4

    const/4 v0, 0x0

    :goto_7b1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_7ef

    move-wide/from16 v4, v35

    move-object/from16 v12, v48

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v4, v5, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    cmp-long v6, v2, v27

    if-nez v6, :cond_7c8

    move-wide/from16 v35, v4

    goto :goto_7ea

    :cond_7c8
    move-wide/from16 v30, v2

    const-wide v1, 0x20b00000014L

    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide/from16 v35, v4

    const-wide v3, 0x10e00000001L

    invoke-virtual {v7, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v3, v30

    const-wide v5, 0x10300000002L

    invoke-virtual {v7, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_7ea
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v48, v12

    goto :goto_7b1

    :cond_7ef
    move-object/from16 v12, v48

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v0

    :goto_7fc
    if-ltz v4, :cond_854

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/BatteryStats$Timer;

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v28

    const-wide v0, 0x20b00000016L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-wide/from16 v30, v1

    const-wide v1, 0x10900000001L

    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10b00000002L

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v56, v30

    move-object/from16 v3, v27

    move-wide/from16 v30, v35

    move/from16 v35, v4

    move-wide/from16 v4, v30

    move-object/from16 v36, v6

    move/from16 v6, v37

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v3, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v56

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v35, -0x1

    move-object/from16 v6, v36

    move-wide/from16 v35, v30

    goto :goto_7fc

    :cond_854
    move-wide/from16 v30, v35

    move/from16 v35, v4

    move-object/from16 v36, v6

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    if-eqz v0, :cond_8a4

    const/4 v0, 0x0

    :goto_861
    sget v1, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v0, v1, :cond_89c

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    if-eqz v2, :cond_88b

    const-wide v3, 0x20b00000017L

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10e00000001L

    invoke-virtual {v7, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v27, v8

    const-wide v8, 0x10500000002L

    invoke-virtual {v7, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_897

    :cond_88b
    move-wide/from16 v27, v8

    const-wide v5, 0x10e00000001L

    const-wide v8, 0x10500000002L

    :goto_897
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v8, v27

    goto :goto_861

    :cond_89c
    move-wide/from16 v27, v8

    const-wide v8, 0x10500000002L

    goto :goto_8ab

    :cond_8a4
    move-wide/from16 v27, v8

    const-wide v8, 0x10500000002L

    :goto_8ab
    const-wide v1, 0x10b0000000dL

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v4, v30

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000eL

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v0

    :goto_8d3
    if-ltz v4, :cond_958

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    const-wide v0, 0x20b00000019L

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v8, 0x10900000001L

    invoke-virtual {v7, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v8, 0x10b00000002L

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v58, v1

    move-wide v1, v8

    move v8, v4

    move-object v9, v5

    move-wide/from16 v4, v30

    move-object/from16 v37, v6

    move/from16 v6, v35

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v35

    if-eqz v35, :cond_931

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, v35

    move-wide/from16 v4, v30

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000004L

    invoke-virtual/range {v35 .. v35}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    :cond_931
    const-wide v1, 0x10b00000005L

    const/4 v6, 0x2

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v4, v30

    move/from16 v45, v6

    move/from16 v6, v38

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v58

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v8, -0x1

    move-object/from16 v6, v37

    const-wide v8, 0x10500000002L

    goto/16 :goto_8d3

    :cond_958
    move v8, v4

    move-object/from16 v37, v6

    const-wide v1, 0x10b0000001cL

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v4, v30

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_972
    if-ltz v0, :cond_9d0

    move-object/from16 v8, v26

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_985
    if-ltz v4, :cond_9c1

    const-wide v5, 0x20b0000001aL

    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v26, v2

    const-wide v1, 0x10900000001L

    invoke-virtual {v7, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    nop

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Counter;

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v2

    move-object/from16 v35, v8

    const-wide v8, 0x10500000002L

    invoke-virtual {v7, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v2, v26

    move-object/from16 v8, v35

    const/4 v1, 0x1

    goto :goto_985

    :cond_9c1
    move-object/from16 v26, v2

    move-object/from16 v35, v8

    const-wide v8, 0x10500000002L

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v26, v35

    const/4 v1, 0x1

    goto :goto_972

    :cond_9d0
    move-object/from16 v35, v26

    const-wide v0, 0x10b00000005L

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b0000001bL

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    nop

    move-wide/from16 v4, v30

    invoke-virtual {v12, v4, v5, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000003L

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    const/4 v0, 0x0

    invoke-virtual {v12, v4, v5, v0}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v0, v39

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v16, 0x1

    move-object v6, v13

    move/from16 v9, v18

    move-object/from16 v16, v19

    move-object/from16 v3, v20

    move-wide/from16 v4, v21

    move-wide/from16 v12, v23

    move/from16 v1, v25

    move-object/from16 v8, v29

    move-wide/from16 v14, v30

    move-wide/from16 v10, v33

    goto/16 :goto_98

    :cond_a49
    return-void
.end method

.method private dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/16 v0, 0x23

    const-wide v2, 0x10500000001L

    invoke-virtual {v9, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000002L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v0

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-wide v4, 0x10900000003L

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10900000004L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_3b
    :try_start_3b
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    if-ge v0, v6, :cond_67

    const-wide v6, 0x20b00000005L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v9, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v8

    invoke-virtual {v9, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_67
    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, v8

    :goto_78
    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v8

    const-wide/16 v11, 0x0

    if-eqz v8, :cond_1c2

    iget-wide v13, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v3, v5, v11

    if-gez v3, :cond_89

    move-wide v3, v13

    move-wide v15, v3

    goto :goto_8a

    :cond_89
    move-wide v15, v5

    :goto_8a
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v3, v3, p3

    if-ltz v3, :cond_1bc

    cmp-long v3, p3, v11

    const/4 v8, 0x0

    const/16 v17, 0x1

    if-ltz v3, :cond_1a4

    if-nez v7, :cond_1a4

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-eq v3, v4, :cond_d1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v3, v5, :cond_d1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x4

    if-eq v3, v5, :cond_d1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v5, 0x8

    if-ne v3, v5, :cond_af

    goto :goto_d1

    :cond_af
    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v3, v5, v11

    if-eqz v3, :cond_ce

    const/4 v11, 0x1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v12, v3

    iput-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_c2

    move/from16 v7, v17

    goto :goto_c3

    :cond_c2
    move v7, v8

    :goto_c3
    move-object/from16 v3, p1

    move-object v4, v0

    move-wide v5, v15

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v12, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v1, v8

    goto :goto_e6

    :cond_ce
    move v11, v7

    move v1, v8

    goto :goto_e6

    :cond_d1
    :goto_d1
    const/4 v11, 0x1

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_d9

    move/from16 v12, v17

    goto :goto_da

    :cond_d9
    move v12, v8

    :goto_da
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v0

    move-wide v6, v15

    move v1, v8

    move v8, v12

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_e6
    if-eqz v10, :cond_1a5

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v3, :cond_fe

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_f3

    move/from16 v8, v17

    goto :goto_f4

    :cond_f3
    move v8, v1

    :goto_f4
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v0

    move-wide v6, v15

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_fe
    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move v12, v3

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v8, v3

    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v3, 0x0

    move v6, v3

    :goto_10d
    const/16 v3, 0x16

    if-ge v6, v3, :cond_19a

    nop

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v18, v3

    if-nez v18, :cond_11f

    move/from16 v23, v6

    move-object v1, v8

    goto/16 :goto_194

    :cond_11f
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_127
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_191

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    move-object v7, v3

    const/4 v3, 0x0

    move v5, v3

    :goto_13e
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_188

    iput v6, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_167

    move/from16 v21, v17

    goto :goto_169

    :cond_167
    move/from16 v21, v1

    :goto_169
    move-object v3, v2

    move-object/from16 v4, p1

    move/from16 v22, v5

    move-object v5, v0

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-wide v6, v15

    move-object v1, v8

    move/from16 v8, v21

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v5, v22, 0x1

    move-object v8, v1

    move/from16 v6, v23

    move-object/from16 v7, v24

    const/4 v1, 0x0

    goto :goto_13e

    :cond_188
    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object v1, v8

    const/4 v1, 0x0

    goto :goto_127

    :cond_191
    move/from16 v23, v6

    move-object v1, v8

    :goto_194
    add-int/lit8 v6, v23, 0x1

    move-object v8, v1

    const/4 v1, 0x0

    goto/16 :goto_10d

    :cond_19a
    move/from16 v23, v6

    move-object v1, v8

    iput v12, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v3, 0x0

    move-object v10, v3

    goto :goto_1a5

    :cond_1a4
    move v11, v7

    :cond_1a5
    :goto_1a5
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1ac

    move/from16 v8, v17

    goto :goto_1ad

    :cond_1ac
    const/4 v8, 0x0

    :goto_1ad
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v0

    move-wide v6, v15

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    move-object/from16 v1, p0

    move v7, v11

    move-wide v3, v13

    move-wide v5, v15

    goto/16 :goto_78

    :cond_1bc
    move-object/from16 v1, p0

    move-wide v3, v13

    move-wide v5, v15

    goto/16 :goto_78

    :cond_1c2
    cmp-long v1, p3, v11

    if-ltz v1, :cond_1e5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    const-wide v11, 0x20900000006L

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NEXT: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x1

    add-long/2addr v13, v3

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_1e5
    .catchall {:try_start_3b .. :try_end_1e5} :catchall_1ea

    :cond_1e5
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    nop

    return-void

    :catchall_1ea
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0
.end method

.method private dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;)V
    .registers 77

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-wide v1, 0x10b00000006L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    mul-long v13, v1, v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    mul-long v5, v15, v11

    const/16 v17, 0x0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v11

    move-wide/from16 v20, v9

    const-wide v9, 0x10300000001L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v1

    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v22

    const-wide/16 v18, 0x3e8

    div-long v11, v22, v18

    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000004L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000005L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000006L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000007L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000008L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000009L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000bL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000cL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v11, 0x10b00000002L

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000001L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000002L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000003L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000004L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000005L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    move-wide/from16 v42, v2

    const-wide v1, 0x10300000006L

    invoke-virtual {v8, v1, v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000007L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000008L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000009L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x1030000000aL

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v9, v1, v3

    if-ltz v9, :cond_18a

    const-wide/16 v9, 0x3e8

    div-long v3, v1, v9

    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide v9, v1

    goto :goto_1a9

    :cond_18a
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-ltz v3, :cond_19f

    const-wide/16 v3, 0x3e8

    div-long v9, v1, v3

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_1a8

    :cond_19f
    const-wide v3, 0x10300000004L

    const/4 v9, -0x1

    invoke-virtual {v8, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_1a8
    move-wide v9, v1

    :goto_1a9
    const-wide v1, 0x20b00000005L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    const/4 v1, 0x0

    move v4, v1

    :goto_1b7
    sget v1, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const/4 v7, 0x1

    if-ge v4, v1, :cond_21e

    if-nez v4, :cond_1bf

    goto :goto_1c0

    :cond_1bf
    const/4 v7, 0x0

    :goto_1c0
    move v1, v4

    sget v2, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    if-eq v4, v2, :cond_1cc

    sget v2, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    if-ne v4, v2, :cond_1ca

    goto :goto_1cc

    :cond_1ca
    move v2, v1

    goto :goto_1ce

    :cond_1cc
    :goto_1cc
    const/4 v1, 0x0

    move v2, v1

    :goto_1ce
    move-wide/from16 v46, v5

    const-wide v5, 0x20b00000008L

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    if-eqz v7, :cond_1e6

    move-wide/from16 v48, v5

    const-wide v5, 0x10800000002L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_1f0

    :cond_1e6
    move-wide/from16 v48, v5

    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_1f0
    const-wide v5, 0x10b00000003L

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v44

    const/16 v45, 0x0

    move-object/from16 v1, p1

    move/from16 v50, v2

    move-wide v2, v5

    move/from16 v51, v4

    move-object/from16 v4, v44

    move-wide/from16 v52, v46

    move-wide/from16 v54, v48

    move-wide/from16 v5, v52

    move-wide/from16 v46, v9

    const/4 v9, 0x0

    move v10, v7

    move/from16 v7, v45

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v54

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v51, 0x1

    move v7, v9

    move-wide/from16 v9, v46

    goto :goto_1b7

    :cond_21e
    move/from16 v51, v4

    move-wide/from16 v52, v5

    move-wide/from16 v46, v9

    const-wide v5, 0x10e00000001L

    const/4 v9, 0x0

    const-wide v1, 0x20b00000006L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v10

    if-eqz v10, :cond_252

    array-length v1, v10

    move v2, v9

    :goto_23e
    if-ge v2, v1, :cond_252

    aget-wide v3, v10, v2

    const-wide v5, 0x20300000007L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v2, v2, 0x1

    const-wide v5, 0x10e00000001L

    goto :goto_23e

    :cond_252
    const-wide v1, 0x10b00000009L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000aL

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    nop

    invoke-virtual {v0, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v3, 0x10300000001L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v3, 0x10300000002L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v3, 0x10300000005L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v3, 0x10300000006L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    move-wide/from16 v48, v5

    const-wide v4, 0x10300000003L

    invoke-virtual {v8, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    const-wide v4, 0x10300000004L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    const-wide v5, 0x10300000007L

    invoke-virtual {v8, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v5, 0x10300000008L

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v5, 0x10300000009L

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x1030000000aL

    invoke-virtual {v8, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v4, v48

    invoke-virtual {v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b0000000bL

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000dL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    nop

    move-wide/from16 v7, v52

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v36

    const-wide/16 v18, 0x3e8

    div-long v6, v36, v18

    move-object/from16 v8, p1

    move-object/from16 v37, v10

    move-wide/from16 v9, v52

    const-wide v4, 0x10300000001L

    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v4

    div-long v4, v4, v18

    const-wide v6, 0x10300000002L

    invoke-virtual {v8, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_34d
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_398

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v52, v1

    check-cast v52, Ljava/util/Map$Entry;

    const-wide v5, 0x20b0000000eL

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v55, v2

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10b00000002L

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v44, v55

    move-wide/from16 v57, v5

    move-wide v5, v9

    move-wide/from16 v55, v11

    const/4 v11, 0x1

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v57

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v2, v44

    move-wide/from16 v11, v55

    goto :goto_34d

    :cond_398
    move-wide/from16 v44, v2

    move-wide/from16 v55, v11

    const/4 v11, 0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v12

    const/4 v5, 0x0

    move-wide/from16 v34, v1

    move-wide/from16 v51, v3

    :goto_3aa
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_3eb

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid;

    nop

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_3c0
    if-ltz v3, :cond_3e7

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v4, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_3d6

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v10, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v57

    add-long v34, v34, v57

    goto :goto_3d7

    :cond_3d6
    const/4 v7, 0x0

    :goto_3d7
    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_3e3

    invoke-virtual {v11, v9, v10, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v57

    add-long v51, v51, v57

    :cond_3e3
    add-int/lit8 v3, v3, -0x1

    const/4 v11, 0x1

    goto :goto_3c0

    :cond_3e7
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    goto :goto_3aa

    :cond_3eb
    const-wide v1, 0x10b0000000fL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v2, v2, v18

    move-object/from16 v57, v12

    const-wide v11, 0x10300000001L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v1, v34, v18

    const-wide v3, 0x10300000003L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v1, v51, v18

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000005L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000006L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000007L

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v4

    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000008L

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v2, v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000009L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1050000000bL

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v4

    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v9, v10, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    const-wide v11, 0x1030000000cL

    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000000dL

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    invoke-virtual {v8, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1030000000eL

    invoke-virtual {v0, v2, v9, v10, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v3, v4, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000000fL

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    invoke-virtual {v8, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000010L

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000011L

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v9, v10, v4}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v1, v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000012L

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    invoke-virtual {v8, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000013L

    invoke-virtual {v0, v3, v9, v10, v4}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v1, v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000014L

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    invoke-virtual {v8, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000015L

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v11

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v7

    const-wide v1, 0x10b00000017L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v24, v5

    const-wide/16 v18, 0x3e8

    div-long v4, v11, v18

    move-wide/from16 v18, v11

    const-wide v11, 0x10300000001L

    invoke-virtual {v8, v11, v12, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10500000002L

    invoke-virtual {v8, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_601

    const/4 v1, 0x0

    :goto_553
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5fc

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v12, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-wide/from16 v22, v2

    iget-object v2, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v2, v12, v2

    packed-switch v2, :pswitch_data_84e

    const/4 v3, 0x0

    goto :goto_5a9

    :pswitch_572
    const/16 v5, 0xc

    const/4 v3, 0x0

    goto :goto_5a9

    :pswitch_576
    const/16 v5, 0xb

    const/4 v3, 0x0

    goto :goto_5a9

    :pswitch_57a
    const/16 v5, 0xa

    const/4 v3, 0x0

    goto :goto_5a9

    :pswitch_57e
    const/16 v5, 0x9

    const/4 v3, 0x0

    goto :goto_5a9

    :pswitch_582
    const/16 v5, 0x8

    iget v2, v4, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    goto :goto_5a9

    :pswitch_58c
    const/4 v3, 0x0

    move-object/from16 v26, v11

    goto :goto_5f4

    :pswitch_590
    const/4 v3, 0x0

    const/4 v5, 0x6

    goto :goto_5a9

    :pswitch_593
    const/4 v3, 0x0

    const/4 v5, 0x7

    goto :goto_5a9

    :pswitch_596
    const/4 v3, 0x0

    const/4 v5, 0x5

    goto :goto_5a9

    :pswitch_599
    const/4 v3, 0x0

    const/4 v5, 0x4

    goto :goto_5a9

    :pswitch_59c
    const/4 v3, 0x0

    const/4 v5, 0x3

    goto :goto_5a9

    :pswitch_59f
    const/4 v3, 0x0

    const/4 v5, 0x2

    goto :goto_5a9

    :pswitch_5a2
    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_5a9

    :pswitch_5a5
    const/4 v3, 0x0

    const/16 v5, 0xd

    nop

    :goto_5a9
    move-object v2, v4

    const-wide v3, 0x20b00000011L

    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-object/from16 v26, v11

    const-wide v11, 0x10e00000001L

    invoke-virtual {v8, v11, v12, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000002L

    invoke-virtual {v8, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10100000003L

    move/from16 v27, v5

    move/from16 v28, v6

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v8, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v5, 0x10800000004L

    iget-boolean v11, v2, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    invoke-virtual {v8, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x10100000005L

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-virtual {v8, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v5, 0x10100000006L

    iget-wide v11, v2, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-virtual {v8, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_5f4
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v22

    move-object/from16 v11, v26

    goto/16 :goto_553

    :cond_5fc
    move-wide/from16 v22, v2

    move-object/from16 v26, v11

    goto :goto_605

    :cond_601
    move-wide/from16 v22, v2

    move-object/from16 v26, v11

    :goto_605
    const-wide v1, 0x10b00000012L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-wide v1, 0x10100000001L

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000002L

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000003L

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000004L

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_655
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c3

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Ljava/util/Map$Entry;

    const-wide v1, 0x20b00000013L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v30, v2

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v32, 0x10b00000002L

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v36, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v59, v30

    move-wide/from16 v30, v2

    move-wide/from16 v2, v32

    move-object/from16 v61, v5

    move-wide v5, v9

    move/from16 v30, v7

    move/from16 v7, v36

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v2, 0x10b00000003L

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, v61

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v31, 0x0

    move-object/from16 v1, p1

    move-object/from16 v32, v7

    move/from16 v7, v31

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v59

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move/from16 v7, v30

    move-object/from16 v5, v32

    goto :goto_655

    :cond_6c3
    move-object/from16 v32, v5

    move/from16 v30, v7

    const/4 v1, 0x0

    move v7, v1

    :goto_6c9
    const/4 v5, 0x5

    if-ge v7, v5, :cond_6fe

    const-wide v1, 0x20b00000014L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const/16 v28, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v62, v2

    move-wide v2, v4

    move-object v4, v6

    move-wide v5, v9

    move/from16 v29, v7

    move/from16 v7, v28

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v62

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v29, 0x1

    goto :goto_6c9

    :cond_6fe
    move/from16 v29, v7

    const-wide v2, 0x10b00000015L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v5, v9

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v1, 0x0

    move v7, v1

    :goto_712
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v7, v1, :cond_748

    const-wide v1, 0x20b00000010L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v28, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v64, v5

    move-wide v5, v9

    move/from16 v29, v7

    move/from16 v7, v28

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v64

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v29, 0x1

    goto :goto_712

    :cond_748
    move/from16 v29, v7

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_756
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79a

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Ljava/util/Map$Entry;

    const-wide v1, 0x20b00000016L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v38, 0x10b00000002L

    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v40, v2

    move-wide/from16 v2, v38

    move-wide/from16 v66, v5

    move-wide v5, v9

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v66

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_756

    :cond_79a
    const/4 v1, 0x0

    move v7, v1

    :goto_79c
    const/4 v5, 0x5

    if-ge v7, v5, :cond_7d3

    const-wide v1, 0x20b00000018L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const/16 v29, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v68, v2

    move-wide v2, v4

    move-object v4, v6

    const/16 v31, 0x5

    move-wide v5, v9

    move/from16 v33, v7

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v68

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v33, 0x1

    goto :goto_79c

    :cond_7d3
    move/from16 v33, v7

    const/4 v1, 0x0

    move v7, v1

    :goto_7d7
    const/16 v1, 0x8

    if-ge v7, v1, :cond_80b

    const-wide v1, 0x20b00000019L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v29, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v70, v5

    move-wide v5, v9

    move/from16 v31, v7

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v70

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v31, 0x1

    goto :goto_7d7

    :cond_80b
    move/from16 v31, v7

    const/4 v1, 0x0

    move v7, v1

    :goto_80f
    const/16 v1, 0xd

    if-ge v7, v1, :cond_847

    const-wide v1, 0x20b0000001aL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v38, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v29, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v40, v2

    move-wide/from16 v2, v38

    move-wide/from16 v72, v5

    move-wide v5, v9

    move/from16 v31, v7

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v72

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v31, 0x1

    goto :goto_80f

    :cond_847
    move-wide/from16 v1, v20

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    nop

    :pswitch_data_84e
    .packed-switch 0x1
        :pswitch_5a5
        :pswitch_5a2
        :pswitch_59f
        :pswitch_59c
        :pswitch_599
        :pswitch_596
        :pswitch_593
        :pswitch_590
        :pswitch_58c
        :pswitch_582
        :pswitch_57e
        :pswitch_57a
        :pswitch_576
        :pswitch_572
    .end packed-switch
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x1

    return v1
.end method

.method private static dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    move/from16 v4, p6

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    const-wide/16 v6, 0x3e8

    div-long v8, p4, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    div-long v10, p4, v6

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v10

    div-long v6, p4, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    const-wide/16 v13, -0x1

    if-nez v12, :cond_3f

    if-nez v5, :cond_3f

    cmp-long v12, v8, v13

    if-nez v12, :cond_3f

    cmp-long v12, v10, v13

    if-nez v12, :cond_3f

    cmp-long v12, v6, v13

    if-eqz v12, :cond_80

    :cond_3f
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    move-wide/from16 v16, v13

    const-wide v12, 0x10300000001L

    invoke-virtual {v0, v12, v13, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v12, 0x10300000002L

    invoke-virtual {v0, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide/16 v12, -0x1

    cmp-long v14, v8, v12

    if-eqz v14, :cond_63

    const-wide v14, 0x10300000003L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_63
    cmp-long v14, v10, v12

    if-eqz v14, :cond_6f

    const-wide v14, 0x10300000004L

    invoke-virtual {v0, v14, v15, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_6f
    cmp-long v12, v6, v12

    if-eqz v12, :cond_7b

    const-wide v12, 0x10300000005L

    invoke-virtual {v0, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_7b
    move-wide/from16 v12, v16

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_80
    return-void
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .registers 14

    if-eqz p4, :cond_2a

    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_16

    if-eqz v2, :cond_2a

    :cond_16
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .registers 7

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .registers 7

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .registers 16

    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-wide/16 v4, 0x3c

    mul-long v6, v0, v4

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    cmp-long v10, v8, v2

    if-nez v10, :cond_28

    cmp-long v10, v6, v2

    if-eqz v10, :cond_30

    :cond_28
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "h "

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    mul-long v10, v8, v4

    mul-long/2addr v10, v4

    add-long/2addr v6, v10

    sub-long v10, p1, v6

    div-long/2addr v10, v4

    cmp-long v12, v10, v2

    if-nez v12, :cond_3f

    cmp-long v12, v6, v2

    if-eqz v12, :cond_47

    :cond_3f
    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "m "

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    mul-long/2addr v4, v10

    add-long/2addr v6, v4

    cmp-long v4, p1, v2

    if-nez v4, :cond_51

    cmp-long v2, v6, v2

    if-eqz v2, :cond_5c

    :cond_51
    sub-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    return-void
.end method

.method public static mapToInternalProcessState(I)I
    .registers 3

    const/16 v0, 0x14

    if-ne p0, v0, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-static {p0}, Landroid/app/ActivityManager;->isForegroundService(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v1, 0x6

    if-gt p0, v1, :cond_16

    return v0

    :cond_16
    const/16 v0, 0xb

    if-gt p0, v0, :cond_1c

    const/4 v0, 0x3

    return v0

    :cond_1c
    const/16 v0, 0xc

    if-gt p0, v0, :cond_22

    const/4 v0, 0x4

    return v0

    :cond_22
    const/16 v0, 0xd

    if-gt p0, v0, :cond_28

    const/4 v0, 0x5

    return v0

    :cond_28
    return v1
.end method

.method static printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .registers 15

    xor-int v0, p1, p2

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p4

    const-string v4, "\""

    const-string v5, ":\""

    if-ge v2, v3, :cond_95

    aget-object v3, p4, v2

    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_91

    if-eqz p5, :cond_1a

    const-string v6, " "

    goto :goto_1c

    :cond_1a
    const-string v6, ","

    :goto_1c
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    const-string v7, "="

    if-gez v6, :cond_61

    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, p2

    if-eqz v6, :cond_2d

    const-string v6, "+"

    goto :goto_2f

    :cond_2d
    const-string v6, "-"

    :goto_2f
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_37

    iget-object v6, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_39

    :cond_37
    iget-object v6, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_39
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v6, v8, :cond_91

    if-eqz p3, :cond_91

    const/4 v1, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_5b

    iget v6, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_5b
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_61
    if-eqz p5, :cond_66

    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_68

    :cond_66
    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_68
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    iget v5, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v4, v5

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_8e

    if-ltz v4, :cond_8e

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_8e

    if-eqz p5, :cond_86

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_8a

    :cond_86
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_8a
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_8e
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_91
    :goto_91
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_95
    if-nez v1, :cond_bb

    if-eqz p3, :cond_bb

    if-eqz p5, :cond_9e

    const-string v2, " wake_lock="

    goto :goto_a0

    :cond_9e
    const-string v2, ",w="

    :goto_a0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_b6

    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    :cond_b6
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_bb
    :goto_bb
    return-void
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    nop

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v0, v13, v14, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v13

    div-long/2addr v13, v15

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v15

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    move-wide/from16 v19, v11

    array-length v11, v15

    const/4 v12, 0x0

    :goto_44
    if-ge v12, v11, :cond_55

    move/from16 v21, v11

    aget-object v11, v15, v12

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    add-long v17, v17, v22

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v21

    goto :goto_44

    :cond_55
    const-string v11, "WiFi"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, " Sleep time:  "

    const-string v15, ")"

    move-wide/from16 v21, v9

    const-string v9, "("

    const-string v10, "     "

    if-eqz v11, :cond_ce

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    move-object/from16 v23, v12

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Scan time:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long v24, v5, v7

    add-long v24, v24, v17

    move-wide/from16 v26, v11

    sub-long v11, v13, v24

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v23, v7

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d1

    :cond_ce
    move-wide/from16 v23, v7

    move-object v4, v12

    :goto_d1
    const-string v7, "Cellular"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10e

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    move/from16 v11, p6

    move-object v12, v7

    invoke-virtual {v8, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    move-object/from16 v25, v12

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_112

    :cond_10e
    move/from16 v11, p6

    move-object/from16 v25, v7

    :goto_112
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Idle time:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Rx time:     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v23

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Tx time:     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v4, -0x32c7c276

    if-eq v12, v4, :cond_182

    :cond_181
    goto :goto_18d

    :cond_182
    move-object/from16 v4, v25

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    const/16 v23, 0x0

    goto :goto_18f

    :goto_18d
    const/16 v23, -0x1

    :goto_18f
    if-eqz v23, :cond_1a4

    const-string v4, "[0]"

    const-string v12, "[1]"

    move-wide/from16 v23, v5

    const-string v5, "[2]"

    const-string v6, "[3]"

    move-wide/from16 v25, v7

    const-string v7, "[4]"

    filled-new-array {v4, v12, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    goto :goto_1b7

    :cond_1a4
    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    const-string v4, "   less than 0dBm: "

    const-string v5, "   0dBm to 8dBm: "

    const-string v6, "   8dBm to 15dBm: "

    const-string v7, "   15dBm to 20dBm: "

    const-string v8, "   above 20dBm: "

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    nop

    :goto_1b7
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    array-length v5, v5

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_209

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_1cc
    if-ge v6, v5, :cond_208

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "    "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v6

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1cc

    :cond_208
    goto :goto_22b

    :cond_209
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_22b
    const-wide/16 v6, 0x0

    cmp-long v8, v21, v6

    const-wide v27, 0x414b774000000000L    # 3600000.0

    if-lez v8, :cond_262

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Battery drain: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v21

    long-to-double v6, v8

    div-double v6, v6, v27

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mAh"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_264

    :cond_262
    move-wide/from16 v8, v21

    :goto_264
    const-wide/16 v6, 0x0

    cmp-long v6, v19, v6

    if-lez v6, :cond_29f

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Monitored rail energy drain: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v21, v8

    move-object v9, v4

    move-wide/from16 v3, v19

    long-to-double v7, v3

    div-double v7, v7, v27

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mAh"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a4

    :cond_29f
    move-wide/from16 v21, v8

    move-object v9, v4

    move-wide/from16 v3, v19

    :goto_2a4
    return-void
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 8

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    :cond_9
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .registers 9

    long-to-float v0, p2

    const-string v1, ""

    const/high16 v2, 0x46200000    # 10240.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-ltz v3, :cond_e

    const-string v1, "KB"

    div-float/2addr v0, v4

    :cond_e
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_15

    const-string v1, "MB"

    div-float/2addr v0, v4

    :cond_15
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1c

    const-string v1, "GB"

    div-float/2addr v0, v4

    :cond_1c
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_23

    const-string v1, "TB"

    div-float/2addr v0, v4

    :cond_23
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2a

    const-string v1, "PB"

    div-float/2addr v0, v4

    :cond_2a
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_8b

    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-eqz v11, :cond_85

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v11, p6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v13, p3, v5

    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v13

    cmp-long v2, v13, v9

    if-ltz v2, :cond_57

    const-string v2, " max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_7b

    div-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v5

    cmp-long v2, v5, v9

    if-ltz v2, :cond_76

    const-string v2, " (running for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    :cond_76
    const-string v2, " (running)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    :goto_7b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, p0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_85
    move-object v5, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    goto :goto_92

    :cond_8b
    move-object v5, p0

    move/from16 v7, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    :goto_92
    return v2
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    if-eqz v1, :cond_8a

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-eqz v12, :cond_8a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz v4, :cond_2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2c
    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " times)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x3e8

    div-long v14, v2, v12

    invoke-virtual {v1, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-ltz v16, :cond_4d

    const-string v10, " max="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_4d
    div-long v10, v2, v12

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    cmp-long v18, v10, v7

    if-lez v18, :cond_5f

    const-string v12, " actual="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_5f
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v12

    if-eqz v12, :cond_87

    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-ltz v16, :cond_82

    const-string v1, " (running for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    :cond_82
    const-string v1, " (running)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    :goto_87
    const-string v1, ", "

    return-object v1

    :cond_8a
    return-object v6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x3e8

    if-eqz v1, :cond_35

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    move-wide/from16 v17, v6

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v11

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v9

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    move-wide/from16 v6, v17

    :cond_35
    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v17, 0x1f4

    add-long v17, v6, v17

    div-long v1, v17, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ","

    if-eqz v4, :cond_5c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5e

    :cond_5c
    const-string v3, ""

    :goto_5e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_78
    return-object v2
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .registers 5

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .registers 5

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static roundUsToMs(J)J
    .registers 6

    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .registers 11

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .registers 214

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v10, :cond_34

    sget-object v1, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v10

    new-array v2, v12, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: BatteryStats.dumpCheckin called for which type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but only STATS_SINCE_CHARGED is supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    const-string v3, "err"

    invoke-static {v9, v13, v1, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v15, 0x3e8

    mul-long v7, v1, v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-long v3, v5, v15

    invoke-virtual {v0, v7, v8}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v17

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v19

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v21

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v23

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v25

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v27

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v29

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v31

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v33

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v35

    invoke-virtual {v0, v12, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v37

    move-wide/from16 v39, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v41

    invoke-virtual {v0, v12, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v43

    invoke-virtual {v0, v2, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v45

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v47

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v48

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v50

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v52

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v54

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v56

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v58

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    move-object/from16 v61, v2

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    sget-object v62, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v12, v62, v10

    const/16 v15, 0xc

    new-array v13, v15, [Ljava/lang/Object;

    if-nez v10, :cond_c2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    goto :goto_c4

    :cond_c2
    const-string v62, "N/A"

    :goto_c4
    const/16 v16, 0x0

    aput-object v62, v13, v16

    const-wide/16 v64, 0x3e8

    div-long v66, v19, v64

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/16 v63, 0x1

    aput-object v62, v13, v63

    div-long v66, v17, v64

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/16 v60, 0x2

    aput-object v62, v13, v60

    div-long v66, v25, v64

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x3

    aput-object v62, v13, v15

    div-long v67, v27, v64

    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x4

    aput-object v62, v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v68

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x5

    aput-object v62, v13, v15

    div-long v69, v23, v64

    invoke-static/range {v69 .. v70}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x6

    aput-object v62, v13, v15

    div-long v70, v21, v64

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x7

    aput-object v62, v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v15, 0x8

    aput-object v62, v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v15, 0x9

    aput-object v62, v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v15, 0xa

    aput-object v62, v13, v15

    const-wide/16 v64, 0x3e8

    div-long v74, v31, v64

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/16 v15, 0xb

    aput-object v62, v13, v15

    const-string v15, "bt"

    move-wide/from16 v75, v5

    const/4 v5, 0x0

    invoke-static {v9, v5, v12, v15, v13}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    const-wide/16 v77, 0x0

    const/4 v13, 0x0

    move-wide/from16 v79, v77

    move-wide/from16 v77, v5

    :goto_14e
    if-ge v13, v2, :cond_19d

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    nop

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v15

    move-object/from16 v81, v1

    const/4 v1, 0x1

    sub-int/2addr v15, v1

    :goto_163
    if-ltz v15, :cond_194

    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v63

    move/from16 v82, v2

    move-object/from16 v2, v63

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/from16 v83, v5

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_17d

    invoke-virtual {v5, v3, v4, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v84

    add-long v77, v77, v84

    :cond_17d
    move-object/from16 v84, v5

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_18c

    invoke-virtual {v5, v3, v4, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v85

    add-long v79, v79, v85

    :cond_18c
    add-int/lit8 v15, v15, -0x1

    move/from16 v2, v82

    move-object/from16 v5, v83

    const/4 v1, 0x1

    goto :goto_163

    :cond_194
    move/from16 v82, v2

    move-object/from16 v83, v5

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v81

    goto :goto_14e

    :cond_19d
    move-object/from16 v81, v1

    move/from16 v82, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v83

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v85

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v87

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v89

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v91

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v93

    invoke-virtual {v0, v5, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v95

    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v97

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v99

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v101

    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static/range {v83 .. v84}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v2, v5

    invoke-static/range {v85 .. v86}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v2, v5

    invoke-static/range {v87 .. v88}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v2, v5

    invoke-static/range {v89 .. v90}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v2, v6

    invoke-static/range {v91 .. v92}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v2, v6

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v2, v6

    invoke-static/range {v95 .. v96}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x6

    aput-object v1, v2, v6

    invoke-static/range {v97 .. v98}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v2, v6

    invoke-static/range {v99 .. v100}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v6, 0x8

    aput-object v1, v2, v6

    invoke-static/range {v101 .. v102}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v6, 0x9

    aput-object v1, v2, v6

    const-string v1, "gn"

    const/4 v6, 0x0

    invoke-static {v9, v6, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    const-string v13, "gmcd"

    move-wide/from16 v103, v39

    move-object/from16 v15, v81

    move-object/from16 v1, p2

    move-wide/from16 v39, v7

    move/from16 v8, v82

    move v7, v5

    move-object/from16 v5, v61

    move-wide v7, v3

    move-object v3, v12

    move-object v4, v13

    move-object v13, v5

    move-wide/from16 v105, v75

    move-object v5, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v75

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v107

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long v5, v75, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v2, v5

    div-long v109, v107, v3

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v14, v2, v1

    const/4 v1, 0x3

    aput-object v14, v2, v1

    const/4 v1, 0x4

    aput-object v14, v2, v1

    const-string v1, "gwfl"

    invoke-static {v9, v5, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string v4, "gwfcd"

    move-object/from16 v1, p2

    move-object v3, v12

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string v4, "gble"

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    div-long v4, v29, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    div-long v4, v48, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    div-long v4, v77, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    div-long v4, v79, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v1, v5

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    div-long v4, v33, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v1, v5

    div-long v4, v35, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v1, v5

    div-long v4, v41, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v1, v5

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    aput-object v5, v1, v6

    div-long v5, v45, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0xd

    aput-object v2, v1, v6

    const/16 v2, 0xe

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    div-long v3, v37, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x11

    div-long v4, v43, v64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x13

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "m"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_37c
    if-ge v3, v1, :cond_390

    invoke-virtual {v0, v3, v7, v8, v10}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v4

    const-wide/16 v64, 0x3e8

    div-long v4, v4, v64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x5

    goto :goto_37c

    :cond_390
    const-string v1, "br"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_39d
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v3

    if-ge v2, v3, :cond_3b4

    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39d

    :cond_3b4
    const-string/jumbo v2, "sgt"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v109

    const-wide/16 v64, 0x3e8

    div-long v109, v109, v64

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v3

    const-string/jumbo v2, "sst"

    invoke-static {v9, v3, v12, v2, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_3d3
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v3

    if-ge v2, v3, :cond_3e6

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d3

    :cond_3e6
    const-string/jumbo v2, "sgc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v2, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_3f2
    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v2, v3, :cond_407

    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f2

    :cond_407
    const-string v2, "dct"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_40e
    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v2, v3, :cond_41f

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_40e

    :cond_41f
    const-string v2, "dcc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_42a
    if-ge v3, v2, :cond_43f

    invoke-virtual {v0, v3, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v4

    const-wide/16 v64, 0x3e8

    div-long v4, v4, v64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x8

    goto :goto_42a

    :cond_43f
    const-string/jumbo v2, "wst"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_447
    const/16 v3, 0x8

    if-ge v2, v3, :cond_458

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_447

    :cond_458
    const-string/jumbo v2, "wsc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_462
    if-ge v2, v6, :cond_475

    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_462

    :cond_475
    const-string/jumbo v2, "wsst"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_47d
    if-ge v2, v6, :cond_48c

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_47d

    :cond_48c
    const-string/jumbo v2, "wssc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_497
    if-ge v1, v2, :cond_4ab

    invoke-virtual {v0, v1, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v64, 0x3e8

    div-long v2, v2, v64

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    goto :goto_497

    :cond_4ab
    const-string/jumbo v1, "wsgt"

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v1, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_4b3
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c3

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b3

    :cond_4c3
    const-string/jumbo v1, "wsgc"

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v1, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v109

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v61

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-wide/16 v64, 0x3e8

    div-long v111, v109, v64

    invoke-static/range {v111 .. v112}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string/jumbo v1, "wmct"

    invoke-static {v9, v2, v12, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xa

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v60, 0x2

    aput-object v1, v3, v60

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-wide/16 v1, 0x3e8

    div-long v64, v50, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v64, 0x4

    aput-object v4, v3, v64

    div-long v64, v52, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v64, 0x5

    aput-object v4, v3, v64

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v64, 0x6

    aput-object v4, v3, v64

    div-long v64, v54, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v64, 0x7

    aput-object v4, v3, v64

    div-long v64, v56, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v64, 0x8

    aput-object v4, v3, v64

    div-long v111, v58, v1

    invoke-static/range {v111 .. v112}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v3, v2

    const-string v1, "dc"

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v111, 0x1f4

    const-string v3, "\""

    if-gez v11, :cond_67a

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v81

    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5ea

    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v113

    :goto_57b
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e1

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v114, v1

    check-cast v114, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface/range {v114 .. v114}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Timer;

    const/16 v115, 0x0

    const-string v116, ""

    move-object v1, v13

    move-object/from16 v117, v14

    move-object v14, v3

    move-wide v3, v7

    move-object/from16 v118, v5

    move-object/from16 v5, v115

    move/from16 v6, p3

    move-wide v10, v7

    move/from16 v8, v60

    move-object/from16 v7, v116

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v114 .. v114}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "kwl"

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v7, v10

    move-object v3, v14

    move-object/from16 v14, v117

    move-object/from16 v5, v118

    const/16 v6, 0xd

    move/from16 v10, p3

    move/from16 v11, p4

    goto :goto_57b

    :cond_5e1
    move-object/from16 v118, v5

    move-wide v10, v7

    move-object/from16 v117, v14

    move/from16 v8, v60

    move-object v14, v3

    goto :goto_5f2

    :cond_5ea
    move-object/from16 v118, v5

    move-wide v10, v7

    move-object/from16 v117, v14

    move/from16 v8, v60

    move-object v14, v3

    :goto_5f2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_674

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_604
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move-wide v6, v10

    move/from16 v10, p3

    invoke-virtual {v4, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v11

    move-object/from16 v113, v1

    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v114

    move-object/from16 v115, v2

    move-object/from16 v2, v114

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v1, v8

    add-long v120, v4, v111

    const-wide/16 v64, 0x3e8

    div-long v120, v120, v64

    invoke-static/range {v120 .. v121}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v1, v16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x2

    aput-object v2, v1, v16

    const-string/jumbo v2, "wr"

    invoke-static {v9, v8, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v10, v6

    move-object/from16 v1, v113

    move-object/from16 v2, v115

    const/4 v8, 0x2

    goto :goto_604

    :cond_66e
    move-object/from16 v113, v1

    move-wide v6, v10

    move/from16 v10, p3

    goto :goto_680

    :cond_674
    move-object/from16 v113, v1

    move-wide v6, v10

    move/from16 v10, p3

    goto :goto_680

    :cond_67a
    move-object/from16 v118, v5

    move-wide v6, v7

    move-object/from16 v117, v14

    move-object v14, v3

    :goto_680
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v1

    const-wide/16 v113, 0x0

    if-lez v1, :cond_722

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_698
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_720

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long v4, v4, v111

    const-wide/16 v64, 0x3e8

    div-long v4, v4, v64

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v81

    move-object/from16 v115, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Timer;

    if-eqz v1, :cond_6d5

    invoke-virtual {v1, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v120

    add-long v120, v120, v111

    const-wide/16 v64, 0x3e8

    div-long v120, v120, v64

    goto :goto_6d7

    :cond_6d5
    move-wide/from16 v120, v113

    :goto_6d7
    if-eqz v1, :cond_6de

    invoke-virtual {v1, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v116

    goto :goto_6e0

    :cond_6de
    const/16 v116, 0x0

    :goto_6e0
    move-object/from16 v122, v1

    move-object/from16 v123, v3

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v124

    move-object/from16 v125, v2

    move-object/from16 v2, v124

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v3, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v3, v16

    invoke-static/range {v81 .. v81}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x2

    aput-object v1, v3, v16

    const-string/jumbo v1, "rpm"

    invoke-static {v9, v2, v12, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, v115

    goto/16 :goto_698

    :cond_720
    const/4 v2, 0x0

    goto :goto_723

    :cond_722
    const/4 v2, 0x0

    :goto_723
    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v5, p1

    move/from16 v4, p5

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    move-object v3, v1

    invoke-virtual {v3, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v2, -0x1

    invoke-virtual {v3, v10, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_86d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v81

    if-lez v81, :cond_86d

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v115

    invoke-static/range {v115 .. v116}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x0

    aput-object v2, v0, v16

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v115

    invoke-static/range {v115 .. v116}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    const/16 v63, 0x1

    aput-object v2, v0, v63

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v115

    invoke-static/range {v115 .. v116}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    const/16 v60, 0x2

    aput-object v2, v0, v60

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v115

    invoke-static/range {v115 .. v116}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    const/16 v67, 0x3

    aput-object v2, v0, v67

    const-string/jumbo v2, "pws"

    move-object/from16 v115, v3

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_782
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_866

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    sget-object v116, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move/from16 v120, v0

    iget-object v0, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v0

    aget v0, v116, v0

    packed-switch v0, :pswitch_data_144a

    move-object/from16 v116, v1

    const-string v0, "???"

    move-object v1, v0

    move/from16 v0, v120

    goto/16 :goto_828

    :pswitch_7a6
    const-string/jumbo v0, "memory"

    move-object/from16 v116, v1

    move-object v1, v0

    move/from16 v0, v120

    goto/16 :goto_828

    :pswitch_7b0
    const-string v0, "camera"

    move-object/from16 v116, v1

    move-object v1, v0

    move/from16 v0, v120

    goto/16 :goto_828

    :pswitch_7b9
    const-string/jumbo v0, "over"

    move-object/from16 v116, v1

    move-object v1, v0

    move/from16 v0, v120

    goto/16 :goto_828

    :pswitch_7c3
    const-string/jumbo v0, "unacc"

    move-object/from16 v116, v1

    move-object v1, v0

    move/from16 v0, v120

    goto/16 :goto_828

    :pswitch_7cd
    iget v0, v3, Lcom/android/internal/os/BatterySipper;->userId:I

    move-object/from16 v116, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const-string/jumbo v1, "user"

    goto :goto_828

    :pswitch_7da
    move-object/from16 v116, v1

    iget-object v0, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    const-string/jumbo v1, "uid"

    goto :goto_828

    :pswitch_7e6
    move-object/from16 v116, v1

    const-string v0, "flashlight"

    move-object v1, v0

    move/from16 v0, v120

    goto :goto_828

    :pswitch_7ee
    move-object/from16 v116, v1

    const-string/jumbo v0, "scrn"

    move-object v1, v0

    move/from16 v0, v120

    goto :goto_828

    :pswitch_7f7
    move-object/from16 v116, v1

    const-string v0, "blue"

    move-object v1, v0

    move/from16 v0, v120

    goto :goto_828

    :pswitch_7ff
    move-object/from16 v116, v1

    const-string/jumbo v0, "wifi"

    move-object v1, v0

    move/from16 v0, v120

    goto :goto_828

    :pswitch_808
    move-object/from16 v116, v1

    const-string/jumbo v0, "phone"

    move-object v1, v0

    move/from16 v0, v120

    goto :goto_828

    :pswitch_811
    move-object/from16 v116, v1

    const-string v0, "cell"

    move-object v1, v0

    move/from16 v0, v120

    goto :goto_828

    :pswitch_819
    move-object/from16 v116, v1

    const-string v0, "idle"

    move-object v1, v0

    move/from16 v0, v120

    goto :goto_828

    :pswitch_821
    move-object/from16 v116, v1

    const-string v0, "ambi"

    move-object v1, v0

    move/from16 v0, v120

    :goto_828
    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v5, v4

    move-wide/from16 v121, v6

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    iget-boolean v4, v3, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v5, v6

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v5, v6

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v5, v6

    const-string/jumbo v4, "pwi"

    invoke-static {v9, v0, v12, v4, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, p1

    move/from16 v4, p5

    move-object/from16 v1, v116

    move-wide/from16 v6, v121

    goto/16 :goto_782

    :cond_866
    move/from16 v120, v0

    move-object/from16 v116, v1

    move-wide/from16 v121, v6

    goto :goto_873

    :cond_86d
    move-object/from16 v116, v1

    move-object/from16 v115, v3

    move-wide/from16 v121, v6

    :goto_873
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v0

    const-string v120, ""

    const-string v7, ","

    if-eqz v0, :cond_8b1

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    :goto_882
    array-length v2, v0

    if-ge v1, v2, :cond_8a2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_88f

    move-object/from16 v3, v120

    goto :goto_890

    :cond_88f
    move-object v3, v7

    :goto_890
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v0, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_882

    :cond_8a2
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "gcf"

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8b1
    const/4 v1, 0x0

    move v6, v1

    :goto_8b3
    move/from16 v5, v82

    if-ge v6, v5, :cond_1449

    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move/from16 v3, p4

    if-ltz v3, :cond_8f4

    if-eq v4, v3, :cond_8f4

    move-object/from16 v71, v0

    move/from16 v60, v5

    move-object/from16 v165, v8

    move-object/from16 v166, v11

    move-object/from16 v197, v13

    move-object/from16 v184, v14

    move-object/from16 v167, v15

    move-wide/from16 v14, v103

    move-wide/from16 v200, v105

    move-wide/from16 v195, v121

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v66, 0xc

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v72, 0x8

    const/16 v73, 0x9

    const/16 v81, -0x1

    const/16 v119, 0xd

    const/16 v169, 0xa

    const/16 v190, 0x2

    move/from16 v121, v6

    move-object v13, v12

    goto/16 :goto_1430

    :cond_8f4
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Uid;

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v123

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v125

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v127

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v129

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v131

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v133

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v135

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v82

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v137

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v139

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v141

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v143

    const/4 v1, 0x4

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v145

    const/4 v1, 0x5

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v147

    const/4 v1, 0x6

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v149

    const/4 v1, 0x7

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v151

    const/16 v1, 0x8

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v153

    const/16 v1, 0x9

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v155

    const/4 v1, 0x6

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v157

    const/4 v1, 0x7

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v159

    const/16 v1, 0x8

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v161

    const/16 v1, 0x9

    invoke-virtual {v2, v1, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v163

    cmp-long v1, v123, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v125, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v127, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v129, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v131, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v133, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v139, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v141, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v135, v113

    if-gtz v1, :cond_9c6

    if-gtz v82, :cond_9c6

    cmp-long v1, v145, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v147, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v137, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v143, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v149, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v151, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v153, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v155, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v157, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v159, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v161, v113

    if-gtz v1, :cond_9c6

    cmp-long v1, v163, v113

    if-lez v1, :cond_9c0

    goto :goto_9c6

    :cond_9c0
    move-object/from16 v166, v11

    const/16 v66, 0xc

    goto/16 :goto_a82

    :cond_9c6
    :goto_9c6
    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {v123 .. v124}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v16, 0x0

    aput-object v165, v1, v16

    invoke-static/range {v125 .. v126}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v63, 0x1

    aput-object v165, v1, v63

    invoke-static/range {v127 .. v128}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v60, 0x2

    aput-object v165, v1, v60

    invoke-static/range {v129 .. v130}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v67, 0x3

    aput-object v165, v1, v67

    invoke-static/range {v131 .. v132}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v68, 0x4

    aput-object v165, v1, v68

    invoke-static/range {v133 .. v134}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v69, 0x5

    aput-object v165, v1, v69

    invoke-static/range {v139 .. v140}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v70, 0x6

    aput-object v165, v1, v70

    invoke-static/range {v141 .. v142}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v71, 0x7

    aput-object v165, v1, v71

    invoke-static/range {v135 .. v136}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v72, 0x8

    aput-object v165, v1, v72

    invoke-static/range {v82 .. v82}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v165

    const/16 v73, 0x9

    aput-object v165, v1, v73

    invoke-static/range {v145 .. v146}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v74, 0xa

    aput-object v165, v1, v74

    invoke-static/range {v147 .. v148}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v62, 0xb

    aput-object v165, v1, v62

    invoke-static/range {v137 .. v138}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    const/16 v66, 0xc

    aput-object v165, v1, v66

    invoke-static/range {v143 .. v144}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    move-object/from16 v166, v11

    const/16 v11, 0xd

    aput-object v165, v1, v11

    const/16 v119, 0xe

    invoke-static/range {v149 .. v150}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    aput-object v165, v1, v119

    const/16 v119, 0xf

    invoke-static/range {v151 .. v152}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    aput-object v165, v1, v119

    const/16 v119, 0x10

    invoke-static/range {v153 .. v154}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    aput-object v165, v1, v119

    const/16 v119, 0x11

    invoke-static/range {v155 .. v156}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    aput-object v165, v1, v119

    const/16 v119, 0x12

    invoke-static/range {v157 .. v158}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    aput-object v165, v1, v119

    const/16 v119, 0x13

    invoke-static/range {v159 .. v160}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    aput-object v165, v1, v119

    const/16 v119, 0x14

    invoke-static/range {v161 .. v162}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    aput-object v165, v1, v119

    const/16 v119, 0x15

    invoke-static/range {v163 .. v164}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    aput-object v165, v1, v119

    const-string/jumbo v11, "nt"

    invoke-static {v9, v4, v12, v11, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a82
    nop

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v11

    const-string/jumbo v165, "mcd"

    move-object/from16 v1, p2

    move-object/from16 v167, v15

    const/16 v81, -0x1

    move-object v15, v2

    move v2, v4

    move-object v3, v12

    move-object/from16 v168, v0

    move v0, v4

    move-object/from16 v4, v165

    move/from16 v165, v5

    move-object v5, v11

    move-object/from16 v169, v7

    move-object v11, v8

    move-wide/from16 v7, v121

    move/from16 v121, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v15, v7, v8, v10}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v170

    invoke-virtual {v15, v7, v8, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v172

    invoke-virtual {v15, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v122

    invoke-virtual {v15, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v174

    invoke-virtual {v15, v7, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v1

    add-long v1, v1, v111

    const-wide/16 v3, 0x3e8

    div-long v175, v1, v3

    invoke-virtual {v15, v7, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v1

    add-long v1, v1, v111

    div-long v177, v1, v3

    invoke-virtual {v15, v7, v8, v10}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v179

    cmp-long v1, v170, v113

    if-nez v1, :cond_ae5

    cmp-long v1, v172, v113

    if-nez v1, :cond_ae5

    if-nez v122, :cond_ae5

    if-nez v174, :cond_ae5

    cmp-long v1, v175, v113

    if-nez v1, :cond_ae5

    cmp-long v1, v177, v113

    if-nez v1, :cond_ae5

    cmp-long v1, v179, v113

    if-eqz v1, :cond_b2b

    :cond_ae5
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static/range {v170 .. v171}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static/range {v172 .. v173}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static/range {v179 .. v180}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static/range {v122 .. v122}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v1, 0x4

    aput-object v117, v2, v1

    const/4 v1, 0x5

    aput-object v117, v2, v1

    const/4 v1, 0x6

    aput-object v117, v2, v1

    invoke-static/range {v174 .. v174}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v2, v3

    invoke-static/range {v175 .. v176}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v2, v3

    invoke-static/range {v177 .. v178}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v2, v3

    const-string/jumbo v1, "wfl"

    invoke-static {v9, v0, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b2b
    nop

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string/jumbo v4, "wfcd"

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v12

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_c3e

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    add-long v1, v1, v111

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    cmp-long v3, v1, v113

    if-eqz v3, :cond_c2f

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_b5e

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    goto :goto_b5f

    :cond_b5e
    const/4 v5, 0x0

    :goto_b5f
    move-wide/from16 v181, v7

    move-wide/from16 v7, v105

    invoke-virtual {v6, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v105

    if-eqz v4, :cond_b6e

    invoke-virtual {v4, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v183

    goto :goto_b70

    :cond_b6e
    move-wide/from16 v183, v113

    :goto_b70
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v185

    if-eqz v185, :cond_b81

    move-object/from16 v185, v4

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    goto :goto_b84

    :cond_b81
    move-object/from16 v185, v4

    const/4 v4, 0x0

    :goto_b84
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v186

    if-eqz v186, :cond_b95

    move-object/from16 v186, v6

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_b98

    :cond_b95
    move-object/from16 v186, v6

    const/4 v6, 0x0

    :goto_b98
    move-object/from16 v187, v11

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_ba5

    invoke-virtual {v11, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v188

    goto :goto_ba7

    :cond_ba5
    move-wide/from16 v188, v113

    :goto_ba7
    if-eqz v11, :cond_bae

    invoke-virtual {v11, v7, v8}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v190

    goto :goto_bb0

    :cond_bae
    move-wide/from16 v190, v113

    :goto_bb0
    nop

    move-object/from16 v192, v11

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_bbe

    invoke-virtual {v11, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v193

    goto :goto_bc0

    :cond_bbe
    move-wide/from16 v193, v113

    :goto_bc0
    if-eqz v11, :cond_bc7

    invoke-virtual {v11, v7, v8}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v195

    goto :goto_bc9

    :cond_bc7
    move-wide/from16 v195, v113

    :goto_bc9
    move-object/from16 v197, v11

    move-object/from16 v62, v14

    const/16 v11, 0xb

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v198

    const/16 v16, 0x0

    aput-object v198, v14, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v198

    const/16 v63, 0x1

    aput-object v198, v14, v63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v198

    const/16 v60, 0x2

    aput-object v198, v14, v60

    invoke-static/range {v105 .. v106}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v198

    const/16 v67, 0x3

    aput-object v198, v14, v67

    invoke-static/range {v183 .. v184}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v198

    const/16 v68, 0x4

    aput-object v198, v14, v68

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v198

    const/16 v69, 0x5

    aput-object v198, v14, v69

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v198

    const/16 v70, 0x6

    aput-object v198, v14, v70

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v198

    const/16 v71, 0x7

    aput-object v198, v14, v71

    invoke-static/range {v193 .. v194}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v198

    const/16 v72, 0x8

    aput-object v198, v14, v72

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v198

    const/16 v73, 0x9

    aput-object v198, v14, v73

    invoke-static/range {v195 .. v196}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v198

    const/16 v74, 0xa

    aput-object v198, v14, v74

    const-string v11, "blem"

    invoke-static {v9, v0, v12, v11, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c4c

    :cond_c2f
    move-object/from16 v186, v6

    move-wide/from16 v181, v7

    move-object/from16 v187, v11

    move-object/from16 v62, v14

    move-wide/from16 v7, v105

    const/16 v72, 0x8

    const/16 v73, 0x9

    goto :goto_c4c

    :cond_c3e
    move-object/from16 v186, v6

    move-wide/from16 v181, v7

    move-object/from16 v187, v11

    move-object/from16 v62, v14

    move-wide/from16 v7, v105

    const/16 v72, 0x8

    const/16 v73, 0x9

    :goto_c4c
    nop

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string v4, "ble"

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v12

    move-object/from16 v11, v186

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_c88

    sget v1, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c6a
    sget v4, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v3, v4, :cond_c7e

    invoke-virtual {v15, v3, v10}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    if-eqz v4, :cond_c7b

    const/4 v2, 0x1

    :cond_c7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c6a

    :cond_c7e
    if-eqz v2, :cond_c86

    const-string/jumbo v3, "ua"

    invoke-static {v9, v0, v12, v3, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c86
    move-object/from16 v118, v1

    :cond_c88
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_cbe

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_ca1

    invoke-virtual {v4, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    goto :goto_ca3

    :cond_ca1
    move-wide/from16 v5, v113

    :goto_ca3
    move-object/from16 v105, v1

    const/4 v14, 0x2

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v1, v16

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v63, 0x1

    aput-object v14, v1, v63

    const-string v14, "awl"

    invoke-static {v9, v0, v12, v14, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_cc0

    :cond_cbe
    const/16 v63, 0x1

    :goto_cc0
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    :goto_ccb
    const/16 v5, 0x5f

    if-ltz v6, :cond_d89

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v105, ""

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v106, "f"

    move-object v1, v13

    move-wide/from16 v183, v7

    move-object v8, v3

    move-wide/from16 v3, v181

    move v7, v5

    move-object/from16 v5, v106

    move-object/from16 v186, v11

    move v11, v6

    move/from16 v6, p3

    move v10, v7

    move-object/from16 v199, v169

    move-wide/from16 v200, v183

    move-object/from16 v7, v105

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v105

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v106

    const-string/jumbo v5, "p"

    move-object v1, v13

    move-object/from16 v2, v106

    move-object/from16 v7, v105

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v105

    if-eqz v106, :cond_d14

    invoke-virtual/range {v106 .. v106}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_d15

    :cond_d14
    const/4 v1, 0x0

    :goto_d15
    move-object v2, v1

    const-string v5, "bp"

    move-object v1, v13

    move-wide/from16 v3, v181

    move/from16 v6, p3

    move-object/from16 v7, v105

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v105

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string/jumbo v5, "w"

    move-object v1, v13

    move-object/from16 v7, v105

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d78

    invoke-virtual {v14, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_d4c

    const/16 v3, 0x2c

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_d4c
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_d58

    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_d58
    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_d64

    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_d64
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string/jumbo v3, "wl"

    invoke-static {v9, v0, v12, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d7c

    :cond_d78
    const/16 v6, 0xa

    const/16 v7, 0xd

    :goto_d7c
    add-int/lit8 v1, v11, -0x1

    move/from16 v10, p3

    move v6, v1

    move-object/from16 v11, v186

    move-object/from16 v169, v199

    move-wide/from16 v7, v200

    goto/16 :goto_ccb

    :cond_d89
    move v10, v5

    move-wide/from16 v200, v7

    move-object/from16 v186, v11

    move-object/from16 v199, v169

    const/16 v7, 0xd

    move v11, v6

    const/16 v6, 0xa

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_dcb

    nop

    move v8, v10

    move-wide/from16 v4, v181

    move/from16 v10, p3

    invoke-virtual {v11, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v64, 0x3e8

    div-long v1, v1, v64

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    cmp-long v74, v1, v113

    if-lez v74, :cond_dd0

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v7, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v63, 0x1

    aput-object v6, v7, v63

    const-string/jumbo v6, "wmc"

    invoke-static {v9, v0, v12, v6, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_dd0

    :cond_dcb
    move v8, v10

    move-wide/from16 v4, v181

    move/from16 v10, p3

    :cond_dd0
    :goto_dd0
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_dda
    if-ltz v1, :cond_e7b

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v105

    add-long v105, v105, v111

    const-wide/16 v64, 0x3e8

    div-long v105, v105, v64

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_e01

    move-object/from16 v169, v13

    move-object/from16 v181, v14

    move-wide/from16 v13, v200

    invoke-virtual {v7, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v182

    goto :goto_e09

    :cond_e01
    move-object/from16 v169, v13

    move-object/from16 v181, v14

    move-wide/from16 v13, v200

    const-wide/16 v182, -0x1

    :goto_e09
    if-eqz v7, :cond_e10

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v184

    goto :goto_e12

    :cond_e10
    move/from16 v184, v81

    :goto_e12
    cmp-long v185, v105, v113

    if-eqz v185, :cond_e61

    move-object/from16 v188, v2

    const/4 v8, 0x5

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v189, v11

    move-object/from16 v11, v62

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v62

    move-object/from16 v190, v6

    move-object/from16 v6, v62

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v2, v8

    invoke-static/range {v105 .. v106}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v2, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v2, v8

    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v2, v8

    invoke-static/range {v184 .. v184}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x4

    aput-object v6, v2, v8

    const-string/jumbo v6, "sy"

    invoke-static {v9, v0, v12, v6, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e69

    :cond_e61
    move-object/from16 v188, v2

    move-object/from16 v190, v6

    move-object/from16 v189, v11

    move-object/from16 v11, v62

    :goto_e69
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v62, v11

    move-wide/from16 v200, v13

    move-object/from16 v13, v169

    move-object/from16 v14, v181

    move-object/from16 v11, v189

    move-object/from16 v6, v190

    const/16 v8, 0x5f

    goto/16 :goto_dda

    :cond_e7b
    move-object/from16 v190, v6

    move-object/from16 v189, v11

    move-object/from16 v169, v13

    move-object/from16 v181, v14

    move-object/from16 v11, v62

    move-wide/from16 v13, v200

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_e91
    if-ltz v1, :cond_f1c

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long v6, v6, v111

    const-wide/16 v64, 0x3e8

    div-long v6, v6, v64

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    move-wide/from16 v105, v4

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_eb4

    invoke-virtual {v4, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v182

    goto :goto_eb6

    :cond_eb4
    const-wide/16 v182, -0x1

    :goto_eb6
    if-eqz v4, :cond_ebd

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    goto :goto_ebf

    :cond_ebd
    move/from16 v5, v81

    :goto_ebf
    cmp-long v62, v6, v113

    if-eqz v62, :cond_f0d

    move-object/from16 v62, v2

    move-object/from16 v184, v4

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v188

    move-object/from16 v191, v8

    move-object/from16 v8, v188

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v4, v8

    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v60, 0x3

    aput-object v2, v4, v60

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v60, 0x4

    aput-object v2, v4, v60

    const-string v2, "jb"

    invoke-static {v9, v0, v12, v2, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f14

    :cond_f0d
    move-object/from16 v62, v2

    move-object/from16 v184, v4

    move-object/from16 v191, v8

    const/4 v8, 0x2

    :goto_f14
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v4, v105

    move-object/from16 v8, v191

    goto/16 :goto_e91

    :cond_f1c
    move-wide/from16 v105, v4

    move-object/from16 v191, v8

    const/4 v8, 0x2

    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v6

    array-length v1, v6

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_f33
    if-ltz v1, :cond_f83

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-eqz v2, :cond_f7b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const/4 v3, 0x0

    :goto_f59
    array-length v8, v6

    if-ge v3, v8, :cond_f73

    add-int/lit8 v8, v3, 0x1

    move-object/from16 v62, v5

    aget v5, v6, v3

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v62

    const/4 v4, 0x0

    const/4 v8, 0x2

    goto :goto_f59

    :cond_f73
    move-object/from16 v62, v5

    const-string v3, "jbc"

    invoke-static {v9, v0, v12, v3, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f7d

    :cond_f7b
    move-object/from16 v62, v5

    :goto_f7d
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v5, v62

    const/4 v8, 0x2

    goto :goto_f33

    :cond_f83
    move-object/from16 v62, v5

    move-object/from16 v8, v169

    invoke-virtual {v15, v8, v10}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f9f

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "jbd"

    invoke-static {v9, v0, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f9f
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "fla"

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v12

    move-wide/from16 v182, v105

    move-object/from16 v105, v6

    move-object/from16 v106, v7

    move-object/from16 v74, v190

    const/16 v119, 0xd

    const/16 v169, 0xa

    move-wide/from16 v6, v182

    move-object/from16 v184, v11

    move/from16 v60, v165

    move-object/from16 v165, v187

    move-object/from16 v185, v191

    const/4 v11, 0x2

    move-object/from16 v187, v8

    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "cam"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v4, "vid"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "aud"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_fec
    if-ge v1, v6, :cond_108c

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_1079

    move-object/from16 v188, v12

    move-wide/from16 v11, v182

    invoke-virtual {v4, v11, v12, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v182

    add-long v182, v182, v111

    const-wide/16 v64, 0x3e8

    div-long v182, v182, v64

    cmp-long v5, v182, v113

    if-eqz v5, :cond_1070

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_101f

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v191

    goto :goto_1021

    :cond_101f
    const/16 v191, 0x0

    :goto_1021
    invoke-virtual {v4, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v192

    if-eqz v7, :cond_102c

    invoke-virtual {v7, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_102e

    :cond_102c
    move-wide/from16 v194, v113

    :goto_102e
    move-object/from16 v196, v2

    move-object/from16 v197, v4

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x0

    aput-object v2, v4, v16

    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v63, 0x1

    aput-object v2, v4, v63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v190, 0x2

    aput-object v2, v4, v190

    invoke-static/range {v191 .. v191}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v67, 0x3

    aput-object v2, v4, v67

    invoke-static/range {v192 .. v193}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v68, 0x4

    aput-object v2, v4, v68

    invoke-static/range {v194 .. v195}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v69, 0x5

    aput-object v2, v4, v69

    const-string/jumbo v2, "sr"

    move-wide/from16 v200, v13

    move-object/from16 v13, v188

    invoke-static {v9, v0, v13, v2, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1082

    :cond_1070
    move-object/from16 v196, v2

    move-object/from16 v197, v4

    move-wide/from16 v200, v13

    move-object/from16 v13, v188

    goto :goto_1082

    :cond_1079
    move-object/from16 v196, v2

    move-object/from16 v197, v4

    move-wide/from16 v200, v13

    move-object v13, v12

    move-wide/from16 v11, v182

    :goto_1082
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v182, v11

    move-object v12, v13

    move-wide/from16 v13, v200

    const/4 v11, 0x2

    goto/16 :goto_fec

    :cond_108c
    move-wide/from16 v200, v13

    move-object v13, v12

    move-wide/from16 v11, v182

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v4, "vib"

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v13

    move v14, v6

    move-wide v6, v11

    move-object/from16 v182, v8

    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "fg"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "fgs"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_10bd
    if-ge v5, v1, :cond_10d4

    invoke-virtual {v15, v5, v11, v12, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v6

    add-long/2addr v3, v6

    add-long v191, v6, v111

    const-wide/16 v64, 0x3e8

    div-long v191, v191, v64

    invoke-static/range {v191 .. v192}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x7

    goto :goto_10bd

    :cond_10d4
    cmp-long v1, v3, v113

    if-lez v1, :cond_10de

    const-string/jumbo v1, "st"

    invoke-static {v9, v0, v13, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10de
    invoke-virtual {v15, v10}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v5

    invoke-virtual {v15, v10}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v7

    cmp-long v1, v5, v113

    if-gtz v1, :cond_10f2

    cmp-long v1, v7, v113

    if-lez v1, :cond_10ef

    goto :goto_10f2

    :cond_10ef
    move-object/from16 v183, v2

    goto :goto_1115

    :cond_10f2
    :goto_10f2
    move-object/from16 v183, v2

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v64, 0x3e8

    div-long v191, v5, v64

    invoke-static/range {v191 .. v192}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v16, 0x0

    aput-object v1, v2, v16

    div-long v191, v7, v64

    invoke-static/range {v191 .. v192}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v63, 0x1

    aput-object v1, v2, v63

    const/4 v1, 0x2

    aput-object v117, v2, v1

    const-string v1, "cpu"

    invoke-static {v9, v0, v13, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1115
    if-eqz v168, :cond_1263

    invoke-virtual {v15, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v1

    if-eqz v1, :cond_11bb

    array-length v2, v1

    move-wide/from16 v191, v3

    move-object/from16 v3, v168

    array-length v4, v3

    if-ne v2, v4, :cond_11b0

    move-object/from16 v2, v187

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x0

    :goto_112c
    move-wide/from16 v187, v5

    array-length v5, v1

    if-ge v4, v5, :cond_1155

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_113b

    move-object/from16 v6, v120

    goto :goto_113d

    :cond_113b
    move-object/from16 v6, v199

    :goto_113d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v193, v7

    aget-wide v6, v1, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v5, v187

    move-wide/from16 v7, v193

    goto :goto_112c

    :cond_1155
    move-wide/from16 v193, v7

    invoke-virtual {v15, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v4

    if-eqz v4, :cond_1183

    const/4 v5, 0x0

    :goto_115e
    array-length v6, v4

    if-ge v5, v6, :cond_117e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v199

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v195, v11

    aget-wide v11, v4, v5

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v11, v195

    goto :goto_115e

    :cond_117e
    move-wide/from16 v195, v11

    move-object/from16 v7, v199

    goto :goto_1193

    :cond_1183
    move-wide/from16 v195, v11

    move-object/from16 v7, v199

    const/4 v5, 0x0

    :goto_1188
    array-length v6, v1

    if-ge v5, v6, :cond_1193

    const-string v6, ",0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1188

    :cond_1193
    :goto_1193
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v5, "A"

    const/4 v8, 0x0

    aput-object v5, v6, v8

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v6, v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v6, v8

    const-string v5, "ctf"

    invoke-static {v9, v0, v13, v5, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11c9

    :cond_11b0
    move-wide/from16 v193, v7

    move-wide/from16 v195, v11

    move-object/from16 v2, v187

    move-object/from16 v7, v199

    move-wide/from16 v187, v5

    goto :goto_11c9

    :cond_11bb
    move-wide/from16 v191, v3

    move-wide/from16 v193, v7

    move-wide/from16 v195, v11

    move-object/from16 v3, v168

    move-object/from16 v2, v187

    move-object/from16 v7, v199

    move-wide/from16 v187, v5

    :goto_11c9
    const/4 v4, 0x0

    :goto_11ca
    const/4 v5, 0x7

    if-ge v4, v5, :cond_125f

    invoke-virtual {v15, v10, v4}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(II)[J

    move-result-object v5

    if-eqz v5, :cond_1255

    array-length v6, v5

    array-length v8, v3

    if-ne v6, v8, :cond_1255

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v6, 0x0

    :goto_11dc
    array-length v8, v5

    if-ge v6, v8, :cond_11fc

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v6, :cond_11e9

    move-object/from16 v11, v120

    goto :goto_11ea

    :cond_11e9
    move-object v11, v7

    :goto_11ea
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v5, v6

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_11dc

    :cond_11fc
    invoke-virtual {v15, v10, v4}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(II)[J

    move-result-object v6

    if-eqz v6, :cond_1227

    const/4 v8, 0x0

    :goto_1203
    array-length v11, v6

    if-ge v8, v11, :cond_1223

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v168, v14

    move-object v12, v15

    aget-wide v14, v6, v8

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    move-object v15, v12

    move/from16 v14, v168

    goto :goto_1203

    :cond_1223
    move/from16 v168, v14

    move-object v12, v15

    goto :goto_1236

    :cond_1227
    move/from16 v168, v14

    move-object v12, v15

    const/4 v8, 0x0

    :goto_122b
    array-length v11, v5

    if-ge v8, v11, :cond_1236

    const-string v11, ",0"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_122b

    :cond_1236
    :goto_1236
    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/Object;

    sget-object v8, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v14, 0x0

    aput-object v8, v11, v14

    array-length v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v11, v14

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x2

    aput-object v8, v11, v14

    const-string v8, "ctf"

    invoke-static {v9, v0, v13, v8, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1258

    :cond_1255
    move/from16 v168, v14

    move-object v12, v15

    :goto_1258
    add-int/lit8 v4, v4, 0x1

    move-object v15, v12

    move/from16 v14, v168

    goto/16 :goto_11ca

    :cond_125f
    move/from16 v168, v14

    move-object v12, v15

    goto :goto_1274

    :cond_1263
    move-wide/from16 v191, v3

    move-wide/from16 v193, v7

    move-wide/from16 v195, v11

    move-object v12, v15

    move-object/from16 v3, v168

    move-object/from16 v2, v187

    move-object/from16 v7, v199

    move-wide/from16 v187, v5

    move/from16 v168, v14

    :goto_1274
    nop

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_127f
    if-ltz v4, :cond_1321

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v14

    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v202

    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v204

    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v6

    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v8

    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v11

    cmp-long v197, v14, v113

    if-nez v197, :cond_12bb

    cmp-long v197, v202, v113

    if-nez v197, :cond_12bb

    cmp-long v197, v204, v113

    if-nez v197, :cond_12bb

    if-nez v6, :cond_12bb

    if-nez v11, :cond_12bb

    if-eqz v8, :cond_12b2

    goto :goto_12bb

    :cond_12b2
    move-object/from16 v207, v1

    move-object/from16 v197, v2

    move-object/from16 v71, v3

    move-object/from16 v5, v184

    goto :goto_1315

    :cond_12bb
    :goto_12bb
    move-object/from16 v197, v2

    move-object/from16 v71, v3

    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v206, v5

    move-object/from16 v5, v184

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v184

    move-object/from16 v207, v1

    move-object/from16 v1, v184

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v3, v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-static/range {v202 .. v203}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    invoke-static/range {v204 .. v205}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v3, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v3, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v3, v2

    const-string/jumbo v1, "pr"

    invoke-static {v9, v0, v13, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1315
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v184, v5

    move-object/from16 v3, v71

    move-object/from16 v2, v197

    move-object/from16 v1, v207

    goto/16 :goto_127f

    :cond_1321
    move-object/from16 v207, v1

    move-object/from16 v197, v2

    move-object/from16 v71, v3

    move-object/from16 v5, v184

    nop

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1334
    if-ltz v2, :cond_141e

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    :goto_1347
    if-ltz v8, :cond_137d

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v11

    add-int/2addr v4, v11

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/16 v15, 0x2c

    move-object/from16 v184, v5

    const/16 v5, 0x5f

    invoke-virtual {v14, v15, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v5, v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v63, 0x1

    aput-object v15, v5, v63

    const-string/jumbo v15, "wua"

    invoke-static {v9, v0, v13, v15, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v5, v184

    goto :goto_1347

    :cond_137d
    move-object/from16 v184, v5

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    :goto_1389
    if-ltz v8, :cond_1404

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v14, v103

    invoke-virtual {v11, v14, v15, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v103

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v202

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v203

    cmp-long v204, v103, v113

    if-nez v204, :cond_13bb

    if-nez v202, :cond_13bb

    if-eqz v203, :cond_13a8

    goto :goto_13bb

    :cond_13a8
    move-object/from16 v204, v3

    move-object/from16 v70, v6

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v190, 0x2

    goto :goto_13fb

    :cond_13bb
    :goto_13bb
    move-object/from16 v204, v3

    move-object/from16 v70, v6

    const/4 v3, 0x6

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v205

    const/16 v16, 0x0

    aput-object v205, v6, v16

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v205

    const/16 v63, 0x1

    aput-object v205, v6, v63

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v205

    const/16 v190, 0x2

    aput-object v205, v6, v190

    const-wide/16 v64, 0x3e8

    div-long v205, v103, v64

    invoke-static/range {v205 .. v206}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v205

    const/16 v67, 0x3

    aput-object v205, v6, v67

    invoke-static/range {v202 .. v202}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v205

    const/16 v68, 0x4

    aput-object v205, v6, v68

    invoke-static/range {v203 .. v203}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v205

    const/16 v69, 0x5

    aput-object v205, v6, v69

    const-string v3, "apk"

    invoke-static {v9, v0, v13, v3, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_13fb
    add-int/lit8 v8, v8, -0x1

    move-wide/from16 v103, v14

    move-object/from16 v6, v70

    move-object/from16 v3, v204

    goto :goto_1389

    :cond_1404
    move-object/from16 v204, v3

    move-object/from16 v70, v6

    move-wide/from16 v14, v103

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v190, 0x2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v5, v184

    goto/16 :goto_1334

    :cond_141e
    move-object/from16 v184, v5

    move-wide/from16 v14, v103

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v190, 0x2

    :goto_1430
    add-int/lit8 v6, v121, 0x1

    move-object v12, v13

    move-wide/from16 v103, v14

    move/from16 v82, v60

    move-object/from16 v0, v71

    move-object/from16 v8, v165

    move-object/from16 v11, v166

    move-object/from16 v15, v167

    move-object/from16 v14, v184

    move-wide/from16 v121, v195

    move-object/from16 v13, v197

    move-wide/from16 v105, v200

    goto/16 :goto_8b3

    :cond_1449
    return-void

    :pswitch_data_144a
    .packed-switch 0x1
        :pswitch_821
        :pswitch_819
        :pswitch_811
        :pswitch_808
        :pswitch_7ff
        :pswitch_7f7
        :pswitch_7ee
        :pswitch_7e6
        :pswitch_7da
        :pswitch_7cd
        :pswitch_7c3
        :pswitch_7b9
        :pswitch_7b0
        :pswitch_7a6
    .end packed-switch
.end method

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "\""

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v1, v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v1, v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x2

    aput-object v2, v1, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v13, "i"

    const-string/jumbo v2, "vers"

    invoke-static {v8, v10, v13, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v14, v1, v3

    and-int/lit8 v1, p4, 0x18

    if-eqz v1, :cond_ae

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v1

    if-eqz v1, :cond_ae

    const/4 v1, 0x0

    :goto_4d
    :try_start_4d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    if-ge v1, v2, :cond_99

    const/16 v2, 0x9

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(C)V

    const-string v3, "hsp"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ",\""

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    const-string v3, "\\\""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_99
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-wide/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_a5
    .catchall {:try_start_4d .. :try_end_a5} :catchall_a9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_ae

    :catchall_a9
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    :cond_ae
    :goto_ae
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_b3

    return-void

    :cond_b3
    if-eqz v9, :cond_162

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_bb
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_fa

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_ee

    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/MutableBoolean;

    invoke-direct {v6, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_ee
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    :cond_fa
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v12, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_105
    if-ge v4, v2, :cond_160

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v6, :cond_158

    iget-object v12, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/MutableBoolean;

    iget-boolean v12, v12, Landroid/util/MutableBoolean;->value:Z

    if-nez v12, :cond_158

    iget-object v12, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/MutableBoolean;

    iput-boolean v11, v12, Landroid/util/MutableBoolean;->value:Z

    const/4 v12, 0x0

    :goto_126
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v12, v11, :cond_155

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v11, v3, v16

    move-object v11, v3

    check-cast v11, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const-string/jumbo v0, "uid"

    invoke-static {v8, v10, v13, v0, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    const/4 v11, 0x1

    goto :goto_126

    :cond_155
    move-object/from16 v17, v0

    goto :goto_15a

    :cond_158
    move-object/from16 v17, v0

    :goto_15a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v17

    const/4 v11, 0x1

    goto :goto_105

    :cond_160
    move-object/from16 v17, v0

    :cond_162
    and-int/lit8 v0, p4, 0x4

    if-nez v0, :cond_1cd

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const-string v1, ""

    const-string v2, "dsd"

    const/4 v3, 0x1

    invoke-static {v8, v1, v2, v0, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v7, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    const-wide/16 v11, 0x0

    cmp-long v6, v2, v11

    if-ltz v6, :cond_193

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    const-string v11, "dtr"

    invoke-static {v8, v10, v13, v11, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_193
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v6

    const-string v11, "csd"

    const/4 v12, 0x1

    invoke-static {v8, v1, v11, v6, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    mul-long v4, v4, v18

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v18

    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-ltz v1, :cond_1bb

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    const-string v2, "ctr"

    invoke-static {v8, v10, v13, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1bb
    const/4 v4, 0x0

    const/4 v5, -0x1

    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_1c3

    move v6, v12

    goto :goto_1c4

    :cond_1c3
    move v6, v10

    :goto_1c4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    :cond_1cd
    return-void
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .registers 35

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v0, p3, 0xe

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move/from16 v16, v0

    and-int/lit8 v0, p3, 0x8

    const-wide/16 v8, 0x0

    if-nez v0, :cond_18

    if-nez v16, :cond_cb

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v0

    int-to-long v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_81

    :try_start_28
    const-string v0, "Battery History ("

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    mul-long/2addr v0, v6

    div-long/2addr v0, v10

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "% used, "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v14, v15, v6, v7}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " used of "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v14, v15, v10, v11}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, ", "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " strings using "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v14, v15, v0, v1}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, "):"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_28 .. :try_end_62} :catchall_7a

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p5

    move-wide/from16 v17, v6

    move v6, v0

    :try_start_6e
    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_78

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_83

    :catchall_78
    move-exception v0

    goto :goto_7d

    :catchall_7a
    move-exception v0

    move-wide/from16 v17, v6

    :goto_7d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    :cond_81
    move-wide/from16 v17, v6

    :goto_83
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_cb

    :try_start_89
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-string v1, "Old battery History:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    const-wide/16 v2, -0x1

    :goto_9a
    invoke-virtual {v14, v0}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_bf

    cmp-long v4, v2, v8

    if-gez v4, :cond_aa

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v2, v4

    move-wide/from16 v19, v2

    goto :goto_ac

    :cond_aa
    move-wide/from16 v19, v2

    :goto_ac
    const/4 v6, 0x0

    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_b3

    const/4 v7, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v7, 0x0

    :goto_b4
    move-object/from16 v2, p2

    move-object v3, v0

    move-wide/from16 v4, v19

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move-wide/from16 v2, v19

    goto :goto_9a

    :cond_bf
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_c2
    .catchall {:try_start_89 .. :try_end_c2} :catchall_c6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    goto :goto_cb

    :catchall_c6
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    throw v0

    :cond_cb
    :goto_cb
    if-eqz v16, :cond_d2

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_d2

    return-void

    :cond_d2
    if-nez v16, :cond_13b

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    :goto_e2
    if-ge v5, v1, :cond_136

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v7

    if-eqz v7, :cond_131

    const/4 v10, 0x0

    :goto_f1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_131

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v2, :cond_105

    const-string v13, "Per-PID Stats:"

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_105
    iget-wide v8, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v13, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v13, :cond_110

    iget-wide v12, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v12, v3, v12

    goto :goto_112

    :cond_110
    const-wide/16 v12, 0x0

    :goto_112
    add-long/2addr v8, v12

    const-string v12, "  PID "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " wake time: "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8, v9, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v12, ""

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v8, 0x0

    goto :goto_f1

    :cond_131
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v8, 0x0

    goto :goto_e2

    :cond_136
    if-eqz v2, :cond_13b

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_13b
    if-eqz v16, :cond_145

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_142

    goto :goto_145

    :cond_142
    const/4 v12, 0x0

    goto/16 :goto_1d4

    :cond_145
    :goto_145
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const-string v7, "  "

    const-string v1, "Discharge step durations:"

    const/4 v2, 0x0

    invoke-static {v15, v7, v1, v0, v2}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    const-wide/16 v8, 0x3e8

    if-eqz v0, :cond_1a6

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v8

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    const-wide/16 v0, 0x0

    cmp-long v2, v10, v0

    if-ltz v2, :cond_174

    const-string v0, "  Estimated discharge time remaining: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long v0, v10, v8

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_174
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const/4 v1, 0x0

    move v12, v1

    :goto_17a
    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v2, v1

    if-ge v12, v2, :cond_1a3

    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v2, v12

    aget v1, v1, v12

    int-to-long v1, v1

    sget-object v4, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v4, v4, v12

    int-to-long v4, v4

    const/16 v26, 0x0

    move-object/from16 v21, v0

    move-wide/from16 v22, v1

    move-wide/from16 v24, v4

    invoke-virtual/range {v21 .. v26}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v5

    const-string v2, "  Estimated "

    const-string v4, " time: "

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_17a

    :cond_1a3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1a6
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const-string v1, "Charge step durations:"

    const/4 v12, 0x0

    invoke-static {v15, v7, v1, v0, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_1d4

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v8

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1d1

    const-string v2, "  Estimated charge time remaining: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long v2, v0, v8

    invoke-static {v2, v3, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1d1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1d4
    :goto_1d4
    if-eqz v16, :cond_1e0

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1db

    goto :goto_1e0

    :cond_1db
    move v1, v12

    const/16 v17, 0x1

    goto/16 :goto_38a

    :cond_1e0
    :goto_1e0
    const-string v0, "Daily stats:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Current start time: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v0

    const-string/jumbo v13, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Next min deadline: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Next max deadline: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x1

    new-array v11, v0, [I

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v8

    iget v1, v10, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-string v7, "    "

    if-gtz v1, :cond_256

    iget v1, v9, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_256

    if-eqz v8, :cond_24a

    goto :goto_256

    :cond_24a
    move/from16 v17, v0

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    move-object v1, v10

    move-object v2, v11

    move v5, v12

    move-object/from16 v27, v13

    goto/16 :goto_2cd

    :cond_256
    :goto_256
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_294

    if-nez v16, :cond_267

    move/from16 v17, v0

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    move-object v1, v10

    move-object v2, v11

    move v5, v12

    move-object/from16 v27, v13

    goto :goto_29e

    :cond_267
    const-string v1, "  Current daily steps:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    const-string v4, "Discharge"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v10

    move-object v0, v7

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v1, "    "

    const-string v2, "Charge"

    move-object/from16 v7, p0

    move-object v3, v8

    move-object/from16 v8, p2

    move-object v4, v9

    move-object v9, v1

    move-object v1, v10

    move-object v10, v2

    move-object v2, v11

    move-object v11, v4

    move v5, v12

    move-object v12, v6

    move-object/from16 v27, v13

    const/16 v17, 0x1

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_2cd

    :cond_294
    move/from16 v17, v0

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    move-object v1, v10

    move-object v2, v11

    move v5, v12

    move-object/from16 v27, v13

    :goto_29e
    const-string v7, "  Current daily discharge step durations:"

    invoke-static {v15, v0, v7, v1, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_2b4

    const-string v9, "      "

    const-string v10, "Discharge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v11, v1

    move-object v12, v6

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_2b4
    const-string v7, "  Current daily charge step durations:"

    invoke-static {v15, v0, v7, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_2ca

    const-string v9, "      "

    const-string v10, "Charge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v11, v4

    move-object v12, v6

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_2ca
    invoke-direct {v14, v15, v0, v3}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_2cd
    const/4 v7, 0x0

    :goto_2ce
    invoke-virtual {v14, v7}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v8

    move-object v13, v8

    if-eqz v8, :cond_383

    add-int/lit8 v18, v7, 0x1

    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_2de

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_2de
    const-string v7, "  Daily from "

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v13, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    move-object/from16 v12, v27

    invoke-static {v12, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " to "

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v13, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v12, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v7, p3, 0x4

    if-nez v7, :cond_332

    if-nez v16, :cond_313

    move-object/from16 v19, v12

    move-object v5, v13

    goto :goto_335

    :cond_313
    iget-object v11, v13, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "    "

    const-string v10, "Discharge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v5, v13

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "    "

    const-string v10, "Charge"

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    move-object/from16 v21, v1

    const/4 v1, 0x0

    goto :goto_37a

    :cond_332
    move-object/from16 v19, v12

    move-object v5, v13

    :goto_335
    iget-object v7, v5, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v13, "      "

    const-string v8, "    Discharge step durations:"

    const/4 v9, 0x0

    invoke-static {v15, v13, v8, v7, v9}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_355

    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "        "

    const-string v10, "Discharge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v12, v6

    move-object/from16 v21, v1

    move-object v1, v13

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_358

    :cond_355
    move-object/from16 v21, v1

    move-object v1, v13

    :goto_358
    iget-object v7, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v8, "    Charge step durations:"

    const/4 v13, 0x0

    invoke-static {v15, v1, v8, v7, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_374

    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "        "

    const-string v10, "Charge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v12, v6

    move v1, v13

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_375

    :cond_374
    move v1, v13

    :goto_375
    iget-object v7, v5, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v14, v15, v0, v7}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_37a
    move v5, v1

    move/from16 v7, v18

    move-object/from16 v27, v19

    move-object/from16 v1, v21

    goto/16 :goto_2ce

    :cond_383
    move-object/from16 v21, v1

    move v1, v5

    move-object v5, v13

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_38a
    if-eqz v16, :cond_390

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_3d2

    :cond_390
    const-string v0, "Statistics since last charge:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  System starts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currently on battery: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_3c1

    move/from16 v7, v17

    goto :goto_3c2

    :cond_3c1
    move v7, v1

    :goto_3c2
    const-string v4, ""

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_3d2
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .registers 13

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .registers 233

    move-object/from16 v7, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v13, p4

    move/from16 v11, p5

    if-eqz v13, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: BatteryStats.dump called for which type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but only STATS_SINCE_CHARGED is supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v16, 0x3e8

    mul-long v9, v0, v16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v5, v0, v16

    const-wide/16 v18, 0x1f4

    add-long v0, v5, v18

    div-long v3, v0, v16

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    move-wide/from16 v20, v3

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v3

    move-wide/from16 v22, v1

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v1

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v11

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v24

    move-wide/from16 v26, v3

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v3

    move-wide/from16 v28, v9

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v9

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v30

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v32

    move-wide/from16 v34, v3

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    move-wide/from16 v36, v5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v6

    move-object/from16 v38, v0

    const-string v0, " mAh"

    move/from16 v39, v5

    const/4 v5, 0x0

    if-lez v6, :cond_ab

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Estimated battery capacity: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v41, v3

    int-to-double v3, v6

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ad

    :cond_ab
    move-wide/from16 v41, v3

    :goto_ad
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v5

    if-lez v5, :cond_d3

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Min learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v5, 0x3e8

    int-to-double v3, v3

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    if-lez v4, :cond_fc

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Max learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v4, 0x3e8

    move/from16 v43, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fe

    :cond_fc
    move/from16 v43, v4

    :goto_fe
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v1, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") realtime, "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v45, v5

    move/from16 v44, v6

    div-long v5, v26, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v26

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") uptime"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery screen off: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    div-long v5, v9, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") realtime, "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v34, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v34

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") uptime"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery screen doze: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    div-long v5, v41, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v41

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Total run time: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v11, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "realtime, "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v24, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "uptime"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v46, 0x0

    cmp-long v5, v30, v46

    if-ltz v5, :cond_1f1

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Battery time remaining: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v30, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f1
    cmp-long v5, v32, v46

    if-ltz v5, :cond_20d

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Charge time remaining: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v32, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20d
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v5

    cmp-long v48, v5, v46

    const-wide v49, 0x408f400000000000L    # 1000.0

    if-ltz v48, :cond_23d

    move-wide/from16 v51, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  Discharge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v9, v5

    div-double v9, v9, v49

    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23f

    :cond_23d
    move-wide/from16 v51, v9

    :goto_23f
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v9

    cmp-long v48, v9, v46

    if-ltz v48, :cond_26a

    move-wide/from16 v53, v11

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Screen off discharge: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v11, v9

    div-double v11, v11, v49

    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26c

    :cond_26a
    move-wide/from16 v53, v11

    :goto_26c
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v11

    cmp-long v48, v11, v46

    if-ltz v48, :cond_299

    move-object/from16 v48, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Screen doze discharge: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v55, v1

    long-to-double v1, v11

    div-double v1, v1, v49

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29d

    :cond_299
    move-wide/from16 v55, v1

    move-object/from16 v48, v3

    :goto_29d
    sub-long v2, v5, v9

    cmp-long v1, v2, v46

    if-ltz v1, :cond_2c6

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Screen on discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v57, v5

    long-to-double v5, v2

    div-double v5, v5, v49

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c8

    :cond_2c6
    move-wide/from16 v57, v5

    :goto_2c8
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v5

    cmp-long v1, v5, v46

    if-ltz v1, :cond_2f3

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Device light doze discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v59, v2

    long-to-double v1, v5

    div-double v1, v1, v49

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f5

    :cond_2f3
    move-wide/from16 v59, v2

    :goto_2f5
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v2

    cmp-long v1, v2, v46

    if-ltz v1, :cond_320

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Device deep doze discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v61, v5

    long-to-double v5, v2

    div-double v5, v5, v49

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_322

    :cond_320
    move-wide/from16 v61, v5

    :goto_322
    const-string v0, "  Start clock time: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v0

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v5, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v5, v36

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    move-wide/from16 v36, v11

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v11

    move-wide/from16 v49, v9

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v9

    move-wide/from16 v63, v2

    const/4 v3, 0x1

    move-wide/from16 v65, v9

    invoke-virtual {v7, v3, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    const/4 v2, 0x2

    move-wide/from16 v67, v9

    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    move-wide/from16 v69, v9

    invoke-virtual {v7, v3, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v9

    move-object/from16 v71, v4

    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v3

    move-wide/from16 v74, v3

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v76

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v78

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Screen on: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v80, v2

    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v4, v71

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v55

    move-wide/from16 v55, v9

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x, Interactive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v71, v10

    div-long v9, v11, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v48

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  Screen brightnesses:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    const/16 v48, 0x0

    move-wide/from16 v82, v11

    move/from16 v11, v48

    :goto_3da
    const/4 v12, 0x5

    move-wide/from16 v84, v2

    const-string v2, " "

    if-ge v11, v12, :cond_41f

    move-object/from16 v48, v9

    move v12, v10

    invoke-virtual {v7, v11, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    cmp-long v3, v9, v46

    if-nez v3, :cond_3f0

    move v10, v12

    move-object/from16 v3, v48

    goto :goto_419

    :cond_3f0
    const-string v3, "\n    "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    sget-object v12, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v12, v12, v11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v12, v3

    div-long v2, v9, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v48

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v12

    :goto_419
    add-int/lit8 v11, v11, 0x1

    move-object v9, v3

    move-wide/from16 v2, v84

    goto :goto_3da

    :cond_41f
    move-object v3, v9

    move v12, v10

    const-string v9, " (no activity)"

    if-nez v12, :cond_428

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_428
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v10, v65, v46

    if-eqz v10, :cond_463

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  Power save mode enabled: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v65, v16

    invoke-static {v8, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v48, v2

    move-wide/from16 v10, v84

    move-wide/from16 v222, v0

    move-wide/from16 v1, v65

    move-wide/from16 v65, v222

    invoke-virtual {v7, v1, v2, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_46d

    :cond_463
    move-object/from16 v48, v2

    move-wide/from16 v10, v84

    move-wide/from16 v222, v0

    move-wide/from16 v1, v65

    move-wide/from16 v65, v222

    :goto_46d
    cmp-long v0, v55, v46

    move/from16 v84, v12

    const-string/jumbo v12, "x"

    if-eqz v0, :cond_4ad

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device light idling: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v85, v1

    div-long v0, v55, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v55

    invoke-virtual {v7, v1, v2, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v71

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v7, v1, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b1

    :cond_4ad
    move-wide/from16 v85, v1

    move-object/from16 v0, v71

    :goto_4b1
    cmp-long v1, v67, v46

    if-eqz v1, :cond_4f8

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Idle mode light time: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v67, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v67

    move-object/from16 v67, v9

    invoke-virtual {v7, v1, v2, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v87, v1

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- longest "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4fc

    :cond_4f8
    move-wide/from16 v87, v67

    move-object/from16 v67, v9

    :goto_4fc
    cmp-long v1, v74, v46

    if-eqz v1, :cond_532

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Device full idling: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v74, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v74

    invoke-virtual {v7, v1, v2, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_532
    cmp-long v1, v69, v46

    if-eqz v1, :cond_574

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Idle mode full time: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v69, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v69

    invoke-virtual {v7, v1, v2, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- longest "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_574
    cmp-long v1, v80, v46

    if-eqz v1, :cond_5a3

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Active phone call: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v80, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v80

    invoke-virtual {v7, v1, v2, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a5

    :cond_5a3
    move-wide/from16 v1, v80

    :goto_5a5
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v9

    if-eqz v9, :cond_5b9

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v71, v0

    const-string v0, "  Connectivity changes: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5bb

    :cond_5b9
    move-object/from16 v71, v0

    :goto_5bb
    const-wide/16 v80, 0x0

    const-wide/16 v89, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v68, 0x0

    move-wide/from16 v91, v1

    move/from16 v1, v68

    :goto_5ca
    move/from16 v2, v39

    if-ge v1, v2, :cond_64d

    move/from16 v39, v2

    move-object/from16 v2, v38

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/BatteryStats$Uid;

    nop

    move-object/from16 v68, v2

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v93

    move/from16 v94, v9

    const/4 v9, 0x1

    add-int/lit8 v93, v93, -0x1

    move/from16 v9, v93

    :goto_5ea
    if-ltz v9, :cond_63f

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v93

    move-object/from16 v95, v12

    move-object/from16 v12, v93

    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/from16 v93, v3

    move-object/from16 v96, v4

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_607

    invoke-virtual {v4, v5, v6, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v97

    add-long v80, v80, v97

    :cond_607
    move-object/from16 v103, v4

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_636

    invoke-virtual {v4, v5, v6, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v104

    cmp-long v3, v104, v46

    if-lez v3, :cond_636

    if-gez p5, :cond_634

    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v97

    move-object/from16 v98, v97

    check-cast v98, Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v99

    move-object/from16 v97, v3

    move-object/from16 v100, v4

    move-wide/from16 v101, v104

    invoke-direct/range {v97 .. v102}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_634
    add-long v89, v89, v104

    :cond_636
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v3, v93

    move-object/from16 v12, v95

    move-object/from16 v4, v96

    goto :goto_5ea

    :cond_63f
    move-object/from16 v93, v3

    move-object/from16 v96, v4

    move-object/from16 v95, v12

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v38, v68

    move/from16 v9, v94

    goto/16 :goto_5ca

    :cond_64d
    move/from16 v39, v2

    move-object/from16 v93, v3

    move-object/from16 v96, v4

    move/from16 v94, v9

    move-object/from16 v95, v12

    move-object/from16 v68, v38

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    move-wide/from16 v72, v10

    const/4 v12, 0x2

    invoke-virtual {v7, v12, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    const/4 v11, 0x3

    move-wide/from16 v97, v9

    invoke-virtual {v7, v11, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-wide/from16 v99, v9

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v101, v9

    const/4 v11, 0x1

    invoke-virtual {v7, v11, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v103, v9

    invoke-virtual {v7, v12, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    const/4 v11, 0x3

    invoke-virtual {v7, v11, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v11

    move-object/from16 v106, v0

    const/4 v0, 0x4

    move-wide/from16 v107, v11

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v11

    const/4 v0, 0x5

    move-wide/from16 v109, v11

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v11

    cmp-long v0, v80, v46

    if-eqz v0, :cond_6bb

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total full wakelock time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v111, v80, v18

    move-wide/from16 v113, v1

    div-long v0, v111, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6bd

    :cond_6bb
    move-wide/from16 v113, v1

    :goto_6bd
    cmp-long v0, v89, v46

    if-eqz v0, :cond_6db

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total partial wakelock time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v0, v89, v18

    div-long v0, v0, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6db
    nop

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v111

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v2

    cmp-long v0, v111, v46

    if-eqz v0, :cond_718

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total WiFi Multicast wakelock Count: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total WiFi Multicast wakelock time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v0, v111, v18

    div-long v0, v0, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_718
    const-string v0, ""

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Logging duration for connectivity statistics: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v72, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Cellular Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular kernel active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v115, v11

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v11

    move/from16 v40, v2

    div-long v1, v11, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v2, v96

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v72

    invoke-virtual {v7, v11, v12, v0, v1}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v93

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v93

    const-string v118, "Cellular"

    move-wide/from16 v119, v11

    move-object/from16 v1, v68

    move-object/from16 v11, v71

    move-wide/from16 v222, v65

    move-wide/from16 v65, v72

    move-wide/from16 v71, v222

    move-object/from16 v0, p0

    move-wide/from16 v121, v22

    move-wide/from16 v68, v69

    move-wide/from16 v22, v9

    move-object/from16 v70, v11

    move-wide/from16 v9, v65

    move-wide/from16 v65, v87

    move-wide/from16 v87, v91

    move-wide/from16 v11, v113

    const/16 v91, 0x0

    move-wide/from16 v222, v74

    move-object/from16 v75, v1

    move-wide/from16 v73, v55

    move-wide/from16 v55, v85

    move-wide/from16 v85, v222

    move-object/from16 v1, p2

    move-wide/from16 v113, v9

    move-object/from16 v9, v48

    move-object/from16 v92, v96

    const/4 v10, 0x2

    move-object/from16 v48, v2

    move-object v2, v8

    move-wide/from16 v123, v20

    move-wide/from16 v20, v26

    move-wide/from16 v26, v34

    move-wide/from16 v34, v41

    move-wide/from16 v41, v85

    move-wide/from16 v85, v11

    move-wide v10, v3

    move-object/from16 v4, v48

    move-object/from16 v3, p3

    move/from16 v38, v43

    move-object/from16 v12, v92

    move-object/from16 v4, v118

    move-object/from16 v96, v12

    move/from16 v126, v39

    move/from16 v39, v45

    move-wide v12, v5

    move/from16 v6, v91

    move-object/from16 v5, v93

    move/from16 v43, v44

    move-wide/from16 v44, v12

    move v13, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string v0, "     Cellular data received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v10, v11}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular data sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v85

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular packets received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v101

    invoke-virtual {v15, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Cellular packets sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v103

    invoke-virtual {v15, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular Radio Access Technology:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_83c
    sget v13, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v12, v13, :cond_8a8

    move/from16 v13, p4

    move-wide/from16 v103, v1

    move-wide/from16 v222, v10

    move-wide/from16 v10, v44

    move-wide/from16 v44, v222

    invoke-virtual {v7, v12, v10, v11, v13}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v1

    cmp-long v84, v1, v46

    if-nez v84, :cond_85d

    move-wide/from16 v101, v3

    move-wide/from16 v85, v5

    move-object/from16 v3, v70

    move-object/from16 v4, v96

    move-wide/from16 v5, v113

    goto :goto_892

    :cond_85d
    move-wide/from16 v101, v3

    const-string v3, "\n       "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v3, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v4, v3

    if-ge v12, v4, :cond_870

    aget-object v3, v3, v12

    goto :goto_872

    :cond_870
    const-string v3, "ERROR"

    :goto_872
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v1, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v4, v96

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v85, v5

    move-wide/from16 v5, v113

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v70

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_892
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v70, v3

    move-object/from16 v96, v4

    move-wide/from16 v113, v5

    move-wide/from16 v5, v85

    move-wide/from16 v3, v101

    move-wide/from16 v1, v103

    const/4 v13, 0x0

    move-wide/from16 v222, v10

    move-wide/from16 v10, v44

    move-wide/from16 v44, v222

    goto :goto_83c

    :cond_8a8
    move/from16 v13, p4

    move-wide/from16 v103, v1

    move-wide/from16 v101, v3

    move-wide/from16 v85, v5

    move-object/from16 v3, v70

    move-object/from16 v4, v96

    move-wide/from16 v5, v113

    move-wide/from16 v222, v10

    move-wide/from16 v10, v44

    move-wide/from16 v44, v222

    if-nez v0, :cond_8c4

    move-object/from16 v12, v67

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c6

    :cond_8c4
    move-object/from16 v12, v67

    :goto_8c6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "very poor (less than -128dBm): "

    const-string/jumbo v2, "poor (-128dBm to -118dBm): "

    move/from16 v67, v0

    const-string/jumbo v0, "moderate (-118dBm to -108dBm): "

    const-string v15, "good (-108dBm to -98dBm): "

    move-object/from16 v70, v12

    const-string v12, "great (greater than -98dBm): "

    filled-new-array {v1, v2, v0, v15, v12}, [Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    array-length v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v1, 0x0

    move/from16 v67, v0

    :goto_8fc
    if-ge v1, v12, :cond_942

    move-object/from16 v84, v3

    invoke-virtual {v7, v1, v10, v11, v13}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    cmp-long v0, v2, v46

    if-nez v0, :cond_90f

    move-object/from16 v92, v9

    move-wide/from16 v113, v10

    move-object/from16 v9, v84

    goto :goto_93a

    :cond_90f
    const-string v0, "\n       "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    move/from16 v67, v0

    aget-object v0, v15, v1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v92, v9

    move-wide/from16 v113, v10

    div-long v9, v2, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v84

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_93a
    add-int/lit8 v1, v1, 0x1

    move-object v3, v9

    move-object/from16 v9, v92

    move-wide/from16 v10, v113

    goto :goto_8fc

    :cond_942
    move-object/from16 v92, v9

    move-wide/from16 v113, v10

    move-object v9, v3

    if-nez v67, :cond_94f

    move-object/from16 v10, v70

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_951

    :cond_94f
    move-object/from16 v10, v70

    :goto_951
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p2

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wifi Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi kernel active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v113

    invoke-virtual {v7, v2, v3, v13}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v0

    nop

    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v48

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v48

    const-string v70, "WiFi"

    move-wide/from16 v117, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v84, v9

    move-object/from16 v93, v10

    move-wide/from16 v9, v113

    move-object v2, v8

    move-object/from16 v96, v15

    move-object/from16 v15, v84

    move/from16 v84, v12

    move-object v12, v3

    move-object/from16 v3, p3

    move-object/from16 v113, v12

    move-object v12, v4

    move-object/from16 v4, v70

    move-wide/from16 v127, v5

    move-object/from16 v5, v48

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string v0, "     Wifi data received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v97

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi data sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v99

    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi packets received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v22

    invoke-virtual {v11, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Wifi packets sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v107

    invoke-virtual {v11, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi states:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v22, 0x0

    move-wide/from16 v222, v1

    move/from16 v1, v22

    move-wide/from16 v22, v222

    :goto_a11
    const/16 v2, 0x8

    if-ge v1, v2, :cond_a5d

    move-wide/from16 v99, v3

    invoke-virtual {v7, v1, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v2

    cmp-long v4, v2, v46

    if-nez v4, :cond_a26

    move-wide/from16 v107, v5

    move-object/from16 v4, v92

    move-wide/from16 v5, v127

    goto :goto_a52

    :cond_a26
    const-string v4, "\n       "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v4, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v92

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v107, v5

    div-long v5, v2, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v48, v0

    move-wide/from16 v5, v127

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v48

    :goto_a52
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v92, v4

    move-wide/from16 v127, v5

    move-wide/from16 v3, v99

    move-wide/from16 v5, v107

    goto :goto_a11

    :cond_a5d
    move-wide/from16 v99, v3

    move-wide/from16 v107, v5

    move-object/from16 v4, v92

    move-wide/from16 v5, v127

    if-nez v0, :cond_a6d

    move-object/from16 v1, v93

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6f

    :cond_a6d
    move-object/from16 v1, v93

    :goto_a6f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "     Wifi supplicant states:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_a84
    const/16 v3, 0xd

    if-ge v2, v3, :cond_ac3

    move v3, v0

    move-object/from16 v67, v1

    invoke-virtual {v7, v2, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v0

    cmp-long v48, v0, v46

    if-nez v48, :cond_a97

    move v0, v3

    move-wide/from16 v92, v9

    goto :goto_abc

    :cond_a97
    move-wide/from16 v92, v9

    const-string v9, "\n       "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    sget-object v9, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v0, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    :goto_abc
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v67

    move-wide/from16 v9, v92

    goto :goto_a84

    :cond_ac3
    move v3, v0

    move-object/from16 v67, v1

    move-wide/from16 v92, v9

    if-nez v3, :cond_ad0

    move-object/from16 v0, v67

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ad2

    :cond_ad0
    move-object/from16 v0, v67

    :goto_ad2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "very poor (less than -88.75dBm): "

    const-string/jumbo v2, "poor (-88.75 to -77.5dBm): "

    const-string/jumbo v9, "moderate (-77.5dBm to -66.25dBm): "

    const-string v10, "good (-66.25dBm to -55dBm): "

    move/from16 v48, v3

    const-string v3, "great (greater than -55dBm): "

    filled-new-array {v1, v2, v9, v10, v3}, [Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    const/4 v1, 0x0

    const/4 v2, 0x5

    array-length v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v2, 0x0

    move/from16 v48, v1

    :goto_b03
    if-ge v2, v9, :cond_b50

    move-object/from16 v70, v0

    move-object/from16 v67, v4

    move-wide/from16 v3, v92

    invoke-virtual {v7, v2, v3, v4, v13}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v0

    cmp-long v92, v0, v46

    if-nez v92, :cond_b18

    move/from16 v92, v9

    move-object/from16 v93, v10

    goto :goto_b43

    :cond_b18
    move/from16 v92, v9

    const-string v9, "\n    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    move/from16 v48, v9

    const-string v9, "     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v10, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v93, v10

    div-long v9, v0, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b43
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v70

    move/from16 v9, v92

    move-object/from16 v10, v93

    move-wide/from16 v92, v3

    move-object/from16 v4, v67

    goto :goto_b03

    :cond_b50
    move-object/from16 v70, v0

    move-object/from16 v67, v4

    move-wide/from16 v3, v92

    move/from16 v92, v9

    move-object/from16 v93, v10

    if-nez v48, :cond_b61

    move-object/from16 v0, v70

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  GPS Statistics:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     GPS signal quality (Top 4 Average CN0):"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "poor (less than 20 dBHz): "

    const-string v1, "good (greater than 20 dBHz): "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    array-length v0, v10

    const/4 v9, 0x2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    :goto_b9a
    if-ge v0, v2, :cond_bd0

    move-object/from16 v70, v10

    invoke-virtual {v7, v0, v3, v4, v13}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v9

    const-string v1, "\n    "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v70, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v114, v2

    div-long v1, v9, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v70

    move/from16 v2, v114

    const/4 v9, 0x2

    goto :goto_b9a

    :cond_bd0
    move/from16 v114, v2

    move-object/from16 v70, v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v9

    cmp-long v0, v9, v46

    if-lez v0, :cond_c15

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     GPS Battery Drain: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v1, v9

    const-wide v127, 0x414b774000000000L    # 3600000.0

    div-double v1, v1, v127

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c15
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Bluetooth total received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v109

    invoke-virtual {v7, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v109, v9

    move-wide/from16 v9, v115

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4, v13}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v115

    move-wide/from16 v127, v9

    div-long v9, v115, v16

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Bluetooth scan time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v115

    const-string v116, "Bluetooth"

    move-object/from16 v0, p0

    move-wide/from16 v129, v1

    move-object/from16 v1, p2

    move-object v2, v8

    move-wide/from16 v131, v9

    move-wide v9, v3

    move-object/from16 v3, p3

    move-object/from16 v133, v67

    move-object/from16 v4, v116

    move-wide/from16 v134, v9

    move-wide v9, v5

    move-object/from16 v5, v115

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device battery use since last full charge"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (lower bound): "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (upper bound): "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v6, p1

    move/from16 v5, p6

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1, v5}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    move-object v4, v0

    invoke-virtual {v4, v7}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v2, -0x1

    invoke-virtual {v4, v13, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    const-string v3, " ("

    const-string v1, ": "

    if-eqz v0, :cond_f01

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v67

    if-lez v67, :cond_f01

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Estimated power use (mAh):"

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Capacity: "

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v5

    invoke-direct {v7, v11, v5, v6}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v2, ", Computed drain: "

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v5

    invoke-direct {v7, v11, v5, v6}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v2, ", actual drain: "

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v5

    invoke-direct {v7, v11, v5, v6}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v5

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v115

    cmpl-double v2, v5, v115

    if-eqz v2, :cond_d55

    const-string v2, "-"

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v5

    invoke-direct {v7, v11, v5, v6}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_d55
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v2, 0x0

    :goto_d59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_ef7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v6, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 v115, v0

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_2656

    const-string v0, "    ???: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_d7d
    const-string v0, "    Camera: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_d83
    const-string v0, "    Over-counted: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_d89
    const-string v0, "    Unaccounted: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_d8f
    const-string v0, "    User "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_d9d
    const-string v0, "    Uid "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_daf
    const-string v0, "    Flashlight: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_db5
    const-string v0, "    Screen: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_dbb
    const-string v0, "    Bluetooth: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_dc1
    const-string v0, "    Wifi: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_dc7
    const-string v0, "    Phone calls: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_dcd
    const-string v0, "    Cell standby: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_dd3
    const-string v0, "    Idle: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ddf

    :pswitch_dd9
    const-string v0, "    Ambient display: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    :goto_ddf
    move-wide/from16 v136, v9

    iget-wide v9, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-direct {v7, v11, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    iget-wide v9, v5, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v116, v12

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v9, v12

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_e9a

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e05

    const-string v0, " usage="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e05
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e15

    const-string v0, " cpu="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e15
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e25

    const-string v0, " wake="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e25
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e35

    const-string v0, " radio="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e35
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e45

    const-string v0, " wifi="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e45
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e55

    const-string v0, " bt="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e55
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e65

    const-string v0, " gps="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e65
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e75

    const-string v0, " sensor="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e75
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e85

    const-string v0, " camera="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e85
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_e95

    const-string v0, " flash="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-direct {v7, v11, v12, v13}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e95
    const-string v0, " )"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e9a
    iget-wide v12, v5, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    iget-wide v9, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v12, v9

    if-eqz v0, :cond_ed8

    const-string v0, " Including smearing: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v5, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    invoke-direct {v7, v11, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v5, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v0, v9, v12

    if-eqz v0, :cond_ec1

    const-string v0, " screen="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v5, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-direct {v7, v11, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_ec1
    iget-wide v9, v5, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    const-wide/16 v12, 0x0

    cmpl-double v0, v9, v12

    if-eqz v0, :cond_ed3

    const-string v0, " proportional="

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v5, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-direct {v7, v11, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_ed3
    const-string v0, " )"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_ed8
    iget-boolean v0, v5, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v0, :cond_ee1

    const-string v0, " Excluded from smearing"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_ee1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getSystemAppUsageList()Ljava/util/List;

    move-result-object v0

    invoke-static {v11, v5, v0, v14}, Lcom/android/internal/os/BatteryStatsInjector;->dumpSysApp(Ljava/io/PrintWriter;Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v13, p4

    move-object/from16 v0, v115

    move-object/from16 v12, v116

    move-wide/from16 v9, v136

    goto/16 :goto_d59

    :cond_ef7
    move-object/from16 v115, v0

    move-wide/from16 v136, v9

    move-object/from16 v116, v12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_f07

    :cond_f01
    move-object/from16 v115, v0

    move-wide/from16 v136, v9

    move-object/from16 v116, v12

    :goto_f07
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_fb2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_fb2

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Per-app mobile ms per packet:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    :goto_f1e
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_f80

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    Uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-static {v8, v9}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    move-object/from16 v115, v3

    move-object v12, v4

    iget-wide v3, v2, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " packets over "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v95

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v5, v3

    add-int/lit8 v0, v0, 0x1

    move-object v4, v12

    move-object/from16 v3, v115

    goto :goto_f1e

    :cond_f80
    move-object/from16 v115, v3

    move-object v12, v4

    move-object/from16 v10, v95

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    TOTAL TIME: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v9, v116

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v136

    invoke-virtual {v7, v5, v6, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v113

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_fbd

    :cond_fb2
    move-object/from16 v115, v3

    move-object v12, v4

    move-object/from16 v10, v95

    move-object/from16 v4, v113

    move-object/from16 v9, v116

    move-wide/from16 v2, v136

    :goto_fbd
    new-instance v0, Landroid/os/BatteryStats$1;

    invoke-direct {v0, v7}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    move-object v6, v0

    const-string v5, " realtime"

    if-gez p5, :cond_1243

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v95

    invoke-interface/range {v95 .. v95}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_10ef

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v95 .. v95}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v113

    invoke-interface/range {v113 .. v113}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v113

    :goto_fdf
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v116

    if-eqz v116, :cond_1035

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Ljava/util/Map$Entry;

    invoke-interface/range {v116 .. v116}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v136

    move-object/from16 v143, v1

    move-object/from16 v1, v136

    check-cast v1, Landroid/os/BatteryStats$Timer;

    move-object/from16 v136, v4

    move/from16 v4, p4

    move-wide/from16 v222, v134

    move-object/from16 v135, v9

    move-object/from16 v134, v10

    move-wide/from16 v9, v222

    invoke-static {v1, v9, v10, v4}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v144

    cmp-long v137, v144, v46

    if-lez v137, :cond_1024

    move-wide/from16 v146, v2

    new-instance v2, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v116 .. v116}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v138, v3

    check-cast v138, Ljava/lang/String;

    const/16 v139, 0x0

    move-object/from16 v137, v2

    move-object/from16 v140, v1

    move-wide/from16 v141, v144

    invoke-direct/range {v137 .. v142}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1026

    :cond_1024
    move-wide/from16 v146, v2

    :goto_1026
    move-object/from16 v4, v136

    move-object/from16 v1, v143

    move-wide/from16 v2, v146

    move-wide/from16 v222, v9

    move-object/from16 v10, v134

    move-object/from16 v9, v135

    move-wide/from16 v134, v222

    goto :goto_fdf

    :cond_1035
    move-object/from16 v143, v1

    move-wide/from16 v146, v2

    move-object/from16 v136, v4

    move/from16 v4, p4

    move-wide/from16 v222, v134

    move-object/from16 v135, v9

    move-object/from16 v134, v10

    move-wide/from16 v9, v222

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10de

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  All kernel wake locks:"

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1058
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_10c8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$TimerEntry;

    const-string v113, ": "

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Kernel Wake lock "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v116, 0x0

    move-object/from16 v137, v0

    move-object v0, v8

    move-object/from16 v148, v143

    move-object/from16 v140, v3

    move-object/from16 v149, v115

    move-wide/from16 v138, v146

    const/16 v67, -0x1

    move/from16 v115, v2

    move-wide v2, v9

    move-object/from16 v141, v136

    move-object/from16 v136, v12

    move v12, v4

    move-object/from16 v4, v116

    move-object/from16 v150, v5

    move/from16 v5, p4

    move-object v7, v6

    move-object/from16 v6, v113

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v148

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10b3

    move-object/from16 v5, v150

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10b5

    :cond_10b3
    move-object/from16 v5, v150

    :goto_10b5
    add-int/lit8 v2, v115, 0x1

    move-object/from16 v143, v6

    move-object v6, v7

    move v4, v12

    move-object/from16 v12, v136

    move-object/from16 v0, v137

    move-wide/from16 v146, v138

    move-object/from16 v136, v141

    move-object/from16 v115, v149

    move-object/from16 v7, p0

    goto :goto_1058

    :cond_10c8
    move-object/from16 v137, v0

    move-object v7, v6

    move-object/from16 v149, v115

    move-object/from16 v141, v136

    move-object/from16 v6, v143

    move-wide/from16 v138, v146

    const/16 v67, -0x1

    move/from16 v115, v2

    move-object/from16 v136, v12

    move v12, v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1105

    :cond_10de
    move-object/from16 v137, v0

    move-object v7, v6

    move-object/from16 v149, v115

    move-object/from16 v141, v136

    move-object/from16 v6, v143

    move-wide/from16 v138, v146

    const/16 v67, -0x1

    move-object/from16 v136, v12

    move v12, v4

    goto :goto_1105

    :cond_10ef
    move-wide/from16 v138, v2

    move-object/from16 v141, v4

    move-object v7, v6

    move-object/from16 v136, v12

    move-object/from16 v149, v115

    const/16 v67, -0x1

    move/from16 v12, p4

    move-object v6, v1

    move-wide/from16 v222, v134

    move-object/from16 v135, v9

    move-object/from16 v134, v10

    move-wide/from16 v9, v222

    :goto_1105
    invoke-virtual/range {v106 .. v106}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1186

    move-object/from16 v4, v106

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All partial wake locks:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_111a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1176

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/BatteryStats$TimerEntry;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "  Wake lock "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    move-object/from16 v1, v133

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v106, 0x0

    const-string v113, ": "

    move-object/from16 v115, v0

    move-object v0, v8

    move-object/from16 v116, v1

    move-object/from16 v1, v115

    move/from16 v115, v2

    move-object/from16 v133, v3

    move-wide v2, v9

    move-object/from16 v137, v4

    move-object/from16 v4, v106

    move-object/from16 v151, v5

    move/from16 v5, p4

    move-object/from16 v152, v6

    move-object/from16 v6, v113

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-object/from16 v6, v151

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v115, 0x1

    move-object v5, v6

    move-object/from16 v133, v116

    move-object/from16 v4, v137

    move-object/from16 v6, v152

    goto :goto_111a

    :cond_1176
    move/from16 v115, v2

    move-object/from16 v137, v4

    move-object/from16 v152, v6

    move-object/from16 v116, v133

    move-object v6, v5

    invoke-virtual/range {v137 .. v137}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_118d

    :cond_1186
    move-object/from16 v152, v6

    move-object/from16 v137, v106

    move-object/from16 v116, v133

    move-object v6, v5

    :goto_118d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v106

    invoke-interface/range {v106 .. v106}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_123f

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All wakeup reasons:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    invoke-interface/range {v106 .. v106}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11e3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v143, v4

    check-cast v143, Ljava/lang/String;

    const/16 v144, 0x0

    invoke-virtual {v2, v12}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    move-object/from16 v113, v0

    move-object/from16 v115, v1

    int-to-long v0, v4

    move-object/from16 v142, v3

    move-object/from16 v145, v2

    move-wide/from16 v146, v0

    invoke-direct/range {v142 .. v147}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v113

    goto :goto_11ad

    :cond_11e3
    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v4, v0

    :goto_11e8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1234

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/BatteryStats$TimerEntry;

    const-string v113, ": "

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wakeup reason "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v115, 0x0

    const-string v133, ": "

    move-object v0, v8

    move-object/from16 v140, v2

    move-wide v2, v9

    move/from16 v142, v4

    move-object/from16 v4, v115

    move-object/from16 v115, v5

    move/from16 v5, p4

    move-object/from16 v143, v7

    move-object v7, v6

    move-object/from16 v6, v133

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v142, 0x1

    move-object v6, v7

    move-object/from16 v5, v115

    move-object/from16 v7, v143

    goto :goto_11e8

    :cond_1234
    move/from16 v142, v4

    move-object/from16 v115, v5

    move-object/from16 v143, v7

    move-object v7, v6

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1260

    :cond_123f
    move-object/from16 v143, v7

    move-object v7, v6

    goto :goto_1260

    :cond_1243
    move-object/from16 v152, v1

    move-wide/from16 v138, v2

    move-object/from16 v141, v4

    move-object v7, v5

    move-object/from16 v143, v6

    move-object/from16 v136, v12

    move-object/from16 v137, v106

    move-object/from16 v149, v115

    move-object/from16 v116, v133

    const/16 v67, -0x1

    move/from16 v12, p4

    move-wide/from16 v222, v134

    move-object/from16 v135, v9

    move-object/from16 v134, v10

    move-wide/from16 v9, v222

    :goto_1260
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_12a7

    const-string v0, "  Memory Stats"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1270
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_12a2

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "  Bandwidth "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Time "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v9, v10, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1270

    :cond_12a2
    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_12a8

    :cond_12a7
    const/4 v1, 0x0

    :goto_12a8
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v91

    invoke-interface/range {v91 .. v91}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1421

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Resource Power Manager Stats"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface/range {v91 .. v91}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_13da

    invoke-interface/range {v91 .. v91}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1396

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move-object v5, v8

    move-object/from16 v8, p2

    move-wide/from16 v105, v127

    move-wide/from16 v127, v131

    move-object/from16 v113, v135

    move-wide/from16 v153, v138

    move-wide/from16 v222, v109

    move/from16 v109, v92

    move/from16 v92, v94

    move-wide/from16 v94, v97

    move-wide/from16 v97, v99

    move-wide/from16 v99, v101

    move-wide/from16 v101, v103

    const/16 v110, 0x2

    move-wide/from16 v103, v22

    move-wide/from16 v22, v28

    move-wide/from16 v28, v9

    move-object/from16 v10, v116

    move-wide/from16 v115, v222

    move-wide/from16 v224, v49

    move-wide/from16 v49, v51

    move-wide/from16 v51, v224

    move-object v9, v5

    move-object/from16 v150, v7

    move-object v7, v10

    move-object/from16 v155, v15

    move-wide/from16 v131, v28

    move-wide/from16 v28, v44

    move-object/from16 v45, v70

    move-object/from16 v44, v93

    move-object/from16 v15, v134

    move-object/from16 v70, v6

    move/from16 v6, v110

    move-object v10, v4

    move-object/from16 v110, v0

    move-object/from16 v6, v75

    move/from16 v93, v84

    move-wide/from16 v84, v85

    move-object/from16 v0, v113

    move-object/from16 v156, v141

    move-object/from16 v86, v2

    move-wide/from16 v1, v119

    move-wide/from16 v119, v129

    move-wide/from16 v129, v105

    move-wide/from16 v106, v107

    move-object/from16 v108, v4

    move-object v4, v15

    move/from16 v15, p5

    move-wide/from16 v11, v131

    move-wide/from16 v138, v1

    move-object/from16 v134, v4

    move-object/from16 v75, v13

    const/4 v1, 0x0

    move/from16 v4, p4

    move/from16 v13, p4

    move-object v2, v14

    move-object/from16 v14, p3

    move-object v15, v3

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v11, p2

    move-object/from16 v135, v0

    move-object v14, v2

    move v12, v4

    move-object v8, v5

    move-object/from16 v13, v75

    move-wide/from16 v85, v84

    move/from16 v84, v93

    move-wide/from16 v107, v106

    move-object/from16 v0, v110

    move-wide/from16 v9, v131

    move-object/from16 v15, v155

    move-object/from16 v75, v6

    move-object/from16 v93, v44

    move-object/from16 v6, v70

    move-wide/from16 v131, v127

    move-wide/from16 v127, v129

    move-object/from16 v70, v45

    move-wide/from16 v129, v119

    move-wide/from16 v119, v138

    move-wide/from16 v138, v153

    move-wide/from16 v44, v28

    move-wide/from16 v28, v22

    move-wide/from16 v22, v103

    move-wide/from16 v103, v101

    move-wide/from16 v101, v99

    move-wide/from16 v99, v97

    move-wide/from16 v97, v94

    move/from16 v94, v92

    move/from16 v92, v109

    move-wide/from16 v109, v115

    move-object/from16 v116, v7

    move-object/from16 v7, v150

    move-wide/from16 v222, v49

    move-wide/from16 v49, v51

    move-wide/from16 v51, v222

    goto/16 :goto_12c8

    :cond_1396
    move-object/from16 v150, v7

    move-object v5, v8

    move v4, v12

    move-object v2, v14

    move-object/from16 v155, v15

    move-wide/from16 v106, v107

    move-object/from16 v7, v116

    move-object/from16 v0, v135

    move-wide/from16 v153, v138

    move-object/from16 v156, v141

    move-wide/from16 v115, v109

    move-wide/from16 v138, v119

    move-wide/from16 v119, v129

    move/from16 v109, v92

    move/from16 v92, v94

    move-wide/from16 v94, v97

    move-wide/from16 v97, v99

    move-wide/from16 v99, v101

    move-wide/from16 v101, v103

    move-wide/from16 v129, v127

    move-wide/from16 v127, v131

    move-wide/from16 v131, v9

    move-wide/from16 v103, v22

    move-wide/from16 v22, v28

    move-wide/from16 v28, v44

    move-object/from16 v45, v70

    move-object/from16 v44, v93

    move-object/from16 v70, v6

    move-object/from16 v6, v75

    move/from16 v93, v84

    move-wide/from16 v84, v85

    move-object/from16 v75, v13

    move-wide/from16 v222, v49

    move-wide/from16 v49, v51

    move-wide/from16 v51, v222

    goto :goto_141d

    :cond_13da
    move-object/from16 v150, v7

    move-object v5, v8

    move v4, v12

    move-object v2, v14

    move-object/from16 v155, v15

    move-wide/from16 v106, v107

    move-object/from16 v7, v116

    move-object/from16 v0, v135

    move-wide/from16 v153, v138

    move-object/from16 v156, v141

    move-wide/from16 v115, v109

    move-wide/from16 v138, v119

    move-wide/from16 v119, v129

    move/from16 v109, v92

    move/from16 v92, v94

    move-wide/from16 v94, v97

    move-wide/from16 v97, v99

    move-wide/from16 v99, v101

    move-wide/from16 v101, v103

    move-wide/from16 v129, v127

    move-wide/from16 v127, v131

    move-wide/from16 v131, v9

    move-wide/from16 v103, v22

    move-wide/from16 v22, v28

    move-wide/from16 v28, v44

    move-object/from16 v45, v70

    move-object/from16 v44, v93

    move-object/from16 v70, v6

    move-object/from16 v6, v75

    move/from16 v93, v84

    move-wide/from16 v84, v85

    move-object/from16 v75, v13

    move-wide/from16 v222, v49

    move-wide/from16 v49, v51

    move-wide/from16 v51, v222

    :goto_141d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1464

    :cond_1421
    move-object/from16 v150, v7

    move-object v5, v8

    move v4, v12

    move-object v2, v14

    move-object/from16 v155, v15

    move-wide/from16 v106, v107

    move-object/from16 v7, v116

    move-object/from16 v0, v135

    move-wide/from16 v153, v138

    move-object/from16 v156, v141

    move-wide/from16 v115, v109

    move-wide/from16 v138, v119

    move-wide/from16 v119, v129

    move/from16 v109, v92

    move/from16 v92, v94

    move-wide/from16 v94, v97

    move-wide/from16 v97, v99

    move-wide/from16 v99, v101

    move-wide/from16 v101, v103

    move-wide/from16 v129, v127

    move-wide/from16 v127, v131

    move-wide/from16 v131, v9

    move-wide/from16 v103, v22

    move-wide/from16 v22, v28

    move-wide/from16 v28, v44

    move-object/from16 v45, v70

    move-object/from16 v44, v93

    move-object/from16 v70, v6

    move-object/from16 v6, v75

    move/from16 v93, v84

    move-wide/from16 v84, v85

    move-object/from16 v75, v13

    move-wide/from16 v222, v49

    move-wide/from16 v49, v51

    move-wide/from16 v51, v222

    :goto_1464
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v15

    if-eqz v15, :cond_149a

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "  CPU freqs:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1473
    array-length v8, v15

    if-ge v3, v8, :cond_148d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v15, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1473

    :cond_148d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v14, p2

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_149c

    :cond_149a
    move-object/from16 v14, p2

    :goto_149c
    const/4 v3, 0x0

    move v13, v3

    :goto_149e
    move/from16 v11, v126

    if-ge v13, v11, :cond_2654

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    move/from16 v10, p5

    if-ltz v10, :cond_14dc

    if-eq v12, v10, :cond_14dc

    const/16 v3, 0x3e8

    if-eq v12, v3, :cond_14dc

    move-object/from16 v146, v0

    move-object v1, v2

    move-object/from16 v209, v7

    move/from16 v188, v11

    move/from16 v105, v13

    move-object/from16 v113, v15

    move-object/from16 v125, v70

    move-wide/from16 v203, v123

    move-wide/from16 v200, v131

    move-object/from16 v126, v134

    move-wide/from16 v163, v138

    move-object/from16 v184, v149

    move-wide/from16 v140, v153

    move-object/from16 v151, v155

    move-object/from16 v185, v156

    const/16 v139, 0x1

    move v11, v4

    move-object v7, v5

    move-object/from16 v70, v6

    move-object v5, v14

    move-wide/from16 v13, v121

    move-object/from16 v155, v150

    move-object/from16 v4, v152

    goto/16 :goto_2628

    :cond_14dc
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v14, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ":"

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    move/from16 v126, v11

    move/from16 v86, v12

    invoke-virtual {v9, v1, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    const/4 v3, 0x1

    invoke-virtual {v9, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    move-object/from16 v133, v7

    move/from16 v110, v8

    const/4 v3, 0x2

    invoke-virtual {v9, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const/4 v3, 0x3

    move-wide/from16 v140, v7

    invoke-virtual {v9, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const/4 v3, 0x4

    move-wide/from16 v144, v7

    invoke-virtual {v9, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const/4 v3, 0x5

    move-wide/from16 v146, v7

    invoke-virtual {v9, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    move-wide/from16 v157, v7

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    move-object/from16 v113, v5

    move-object/from16 v125, v6

    const/4 v3, 0x1

    invoke-virtual {v9, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v5

    move/from16 v105, v13

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    const/4 v3, 0x3

    move-wide/from16 v159, v13

    move-object/from16 v142, v15

    invoke-virtual {v9, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    move-wide/from16 v161, v14

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v13

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v15

    move-wide/from16 v163, v13

    move-wide/from16 v13, v131

    move-wide/from16 v131, v5

    invoke-virtual {v9, v13, v14, v4}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v5

    move-wide/from16 v165, v5

    invoke-virtual {v9, v13, v14, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v5

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v3

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v10

    move-wide/from16 v167, v5

    invoke-virtual {v9, v13, v14}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v5

    move-wide/from16 v169, v5

    invoke-virtual {v9, v13, v14}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v5

    move-wide/from16 v171, v5

    invoke-virtual {v9, v13, v14, v4}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    move-wide/from16 v173, v13

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v13

    move-wide/from16 v175, v5

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v5

    cmp-long v151, v11, v46

    if-gtz v151, :cond_159f

    cmp-long v151, v1, v46

    if-gtz v151, :cond_159f

    cmp-long v151, v7, v46

    if-gtz v151, :cond_159f

    cmp-long v151, v131, v46

    if-lez v151, :cond_1590

    goto :goto_159f

    :cond_1590
    move/from16 v151, v3

    move/from16 v177, v10

    move-wide/from16 v178, v159

    move-object/from16 v3, p0

    move-object/from16 v10, p2

    move-wide/from16 v159, v5

    move-wide/from16 v5, v131

    goto :goto_15dd

    :cond_159f
    :goto_159f
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v151, v3

    const-string v3, "    Mobile network: "

    move/from16 v177, v10

    move-wide/from16 v178, v159

    move-object/from16 v10, p2

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-virtual {v3, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " received, "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " sent (packets "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " received, "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v159, v5

    move-wide/from16 v5, v131

    invoke-virtual {v10, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " sent)"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_15dd
    cmp-long v4, v163, v46

    if-gtz v4, :cond_15fe

    if-lez v15, :cond_15e4

    goto :goto_15fe

    :cond_15e4
    move-wide/from16 v131, v1

    move-wide/from16 v184, v5

    move-wide/from16 v182, v7

    move-wide/from16 v180, v11

    move-object/from16 v4, v113

    move-object/from16 v11, v134

    move-wide/from16 v186, v163

    move-object/from16 v2, p3

    move-object/from16 v113, v0

    move-wide/from16 v163, v138

    move-object/from16 v138, v9

    move-object/from16 v9, v155

    goto/16 :goto_166a

    :cond_15fe
    :goto_15fe
    move-wide/from16 v131, v1

    move-object/from16 v4, v113

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v2, p3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Mobile radio active: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v180, v11

    div-long v11, v163, v16

    invoke-static {v4, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v113, v0

    move-wide/from16 v11, v138

    move-wide/from16 v0, v163

    move-object/from16 v138, v9

    invoke-virtual {v3, v0, v1, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v155

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-wide/from16 v163, v11

    move-object/from16 v11, v134

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v182, v7, v5

    cmp-long v12, v182, v46

    if-nez v12, :cond_1645

    const-wide/16 v182, 0x1

    move-wide/from16 v184, v5

    move-wide/from16 v5, v182

    goto :goto_1649

    :cond_1645
    move-wide/from16 v184, v5

    move-wide/from16 v5, v182

    :goto_1649
    const-string v12, " @ "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v182, v7

    div-long v7, v0, v16

    long-to-double v7, v7

    move-wide/from16 v186, v0

    long-to-double v0, v5

    div-double/2addr v7, v0

    invoke-static {v7, v8}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mspp"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_166a
    cmp-long v0, v13, v46

    if-lez v0, :cond_1685

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Mobile radio AP wakeups: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1686

    :cond_1685
    const/4 v1, 0x0

    :goto_1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    const-string v7, "Cellular"

    move-object/from16 v12, v113

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p2

    move-object v2, v4

    move-object v8, v3

    move-wide/from16 v134, v13

    move/from16 v113, v15

    move/from16 v15, v151

    const/4 v14, 0x1

    move-object v3, v5

    move/from16 v13, p4

    move-object v5, v4

    move-object v4, v7

    move-object v7, v5

    move-object/from16 v155, v12

    move-wide/from16 v194, v159

    move-wide/from16 v14, v165

    move-wide/from16 v188, v169

    move-wide/from16 v190, v171

    move-wide/from16 v192, v175

    move-wide/from16 v159, v184

    move-object/from16 v165, v11

    move-wide/from16 v11, v167

    move-object v5, v6

    move-object/from16 v222, v125

    move-object/from16 v125, v70

    move-object/from16 v70, v222

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v140, v46

    if-gtz v0, :cond_16ed

    cmp-long v0, v144, v46

    if-gtz v0, :cond_16ed

    move-wide/from16 v5, v178

    cmp-long v0, v5, v46

    if-gtz v0, :cond_16ef

    cmp-long v0, v161, v46

    if-lez v0, :cond_16e4

    goto :goto_16ef

    :cond_16e4
    move-wide/from16 v178, v5

    move-wide/from16 v3, v140

    move-wide/from16 v1, v144

    move-wide/from16 v5, v161

    goto :goto_1727

    :cond_16ed
    move-wide/from16 v5, v178

    :cond_16ef
    :goto_16ef
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Wi-Fi network: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v140

    invoke-virtual {v8, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v144

    invoke-virtual {v8, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent (packets "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " received, "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v178, v5

    move-wide/from16 v5, v161

    invoke-virtual {v10, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " sent)"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1727
    cmp-long v0, v14, v46

    if-nez v0, :cond_176b

    cmp-long v0, v11, v46

    if-nez v0, :cond_176b

    if-nez v151, :cond_176b

    if-nez v177, :cond_176b

    move-wide/from16 v161, v5

    move-wide/from16 v5, v188

    cmp-long v0, v5, v46

    if-nez v0, :cond_1762

    move-wide/from16 v140, v3

    move-wide/from16 v3, v190

    cmp-long v0, v3, v46

    if-nez v0, :cond_175d

    move-wide/from16 v144, v1

    move-wide/from16 v1, v192

    cmp-long v0, v1, v46

    if-eqz v0, :cond_174c

    goto :goto_1777

    :cond_174c
    move-object/from16 v0, p3

    move-wide/from16 v192, v1

    move-object v2, v10

    move-wide/from16 v167, v11

    move/from16 v10, v151

    move-object/from16 v13, v155

    move-object/from16 v12, v165

    move/from16 v11, v177

    goto/16 :goto_1843

    :cond_175d
    move-wide/from16 v144, v1

    move-wide/from16 v1, v192

    goto :goto_1777

    :cond_1762
    move-wide/from16 v144, v1

    move-wide/from16 v140, v3

    move-wide/from16 v3, v190

    move-wide/from16 v1, v192

    goto :goto_1777

    :cond_176b
    move-wide/from16 v144, v1

    move-wide/from16 v140, v3

    move-wide/from16 v161, v5

    move-wide/from16 v5, v188

    move-wide/from16 v3, v190

    move-wide/from16 v1, v192

    :goto_1777
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "    Wifi Running: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v190, v3

    div-long v3, v1, v16

    invoke-static {v7, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v13, v155

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v153

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Full Wifi Lock: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v192, v1

    div-long v1, v14, v16

    invoke-static {v7, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wifi Scan (blamed): "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v11, v16

    invoke-static {v7, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v151

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wifi Scan (actual): "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v5, v16

    invoke-static {v7, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v167, v11

    move-wide/from16 v1, v173

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v11

    invoke-virtual {v8, v5, v6, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x\n"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Background Wifi Scan: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v190, v16

    invoke-static {v7, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v11

    move-wide/from16 v3, v190

    invoke-virtual {v8, v3, v4, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v177

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v165

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1843
    move-wide/from16 v165, v14

    move-wide/from16 v14, v194

    cmp-long v1, v14, v46

    if-lez v1, :cond_1861

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    WiFi AP wakeups: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v148

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v151

    const-string v155, "WiFi"

    move-object/from16 v1, p3

    move-object/from16 v0, p0

    move/from16 v177, v11

    move-wide/from16 v194, v14

    move-wide/from16 v169, v192

    move-object v15, v1

    move-object v14, v12

    move-wide/from16 v11, v173

    move-object/from16 v1, p2

    move/from16 v171, v10

    move-object v10, v2

    move-object v2, v7

    move-wide/from16 v172, v3

    move-wide/from16 v222, v140

    move-wide/from16 v140, v153

    move-wide/from16 v153, v222

    move-object/from16 v3, v148

    move-object/from16 v4, v155

    move-wide/from16 v174, v161

    move-wide/from16 v161, v178

    move-wide/from16 v178, v5

    move-object/from16 v5, v151

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v146, v46

    if-gtz v0, :cond_18b3

    cmp-long v0, v157, v46

    if-lez v0, :cond_18ae

    goto :goto_18b3

    :cond_18ae
    move-wide/from16 v5, v146

    move-wide/from16 v2, v157

    goto :goto_18d7

    :cond_18b3
    :goto_18b3
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Bluetooth network: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v146

    invoke-virtual {v8, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v2, v157

    invoke-virtual {v8, v2, v3}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_18d7
    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const-string v1, "\n"

    const-string v0, " times)"

    if-eqz v4, :cond_1ac3

    move-object/from16 v146, v14

    move/from16 v14, p4

    invoke-virtual {v4, v11, v12, v14}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v147

    add-long v147, v147, v18

    move-wide/from16 v157, v2

    div-long v2, v147, v16

    cmp-long v147, v2, v46

    if-eqz v147, :cond_1ab0

    move-wide/from16 v147, v5

    invoke-virtual {v4, v14}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_1904

    invoke-virtual {v6, v14}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v151

    goto :goto_1906

    :cond_1904
    const/16 v151, 0x0

    :goto_1906
    move/from16 v155, v151

    move-object/from16 v151, v9

    move-wide/from16 v8, v123

    move-wide/from16 v123, v11

    invoke-virtual {v4, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v11

    if-eqz v6, :cond_1919

    invoke-virtual {v6, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v184

    goto :goto_191b

    :cond_1919
    move-wide/from16 v184, v46

    :goto_191b
    move-wide/from16 v188, v184

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v176

    if-eqz v176, :cond_192e

    move-object/from16 v176, v13

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v13

    goto :goto_1931

    :cond_192e
    move-object/from16 v176, v13

    const/4 v13, 0x0

    :goto_1931
    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v184

    if-eqz v184, :cond_1940

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v10

    goto :goto_1941

    :cond_1940
    const/4 v10, 0x0

    :goto_1941
    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    if-eqz v14, :cond_194c

    invoke-virtual {v14, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v184

    goto :goto_194e

    :cond_194c
    move-wide/from16 v184, v46

    :goto_194e
    move-wide/from16 v190, v184

    if-eqz v14, :cond_1957

    invoke-virtual {v14, v8, v9}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v184

    goto :goto_1959

    :cond_1957
    move-wide/from16 v184, v46

    :goto_1959
    move-wide/from16 v192, v184

    nop

    move-object/from16 v184, v14

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    if-eqz v14, :cond_1969

    invoke-virtual {v14, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v196

    goto :goto_196b

    :cond_1969
    move-wide/from16 v196, v46

    :goto_196b
    move-wide/from16 v198, v196

    if-eqz v14, :cond_1974

    invoke-virtual {v14, v8, v9}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v196

    goto :goto_1976

    :cond_1974
    move-wide/from16 v196, v46

    :goto_1976
    move-wide/from16 v200, v196

    move-wide/from16 v196, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    cmp-long v8, v11, v2

    if-eqz v8, :cond_19a7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v9, v149

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v8

    if-eqz v8, :cond_19a3

    const-string v8, " (currently running)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19a3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19a9

    :cond_19a7
    move-object/from16 v9, v149

    :goto_19a9
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v8

    if-eqz v8, :cond_19c8

    const-string v8, " (currently running)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19c8
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v202, v2

    move-wide/from16 v2, v188

    cmp-long v8, v2, v46

    if-gtz v8, :cond_19db

    move/from16 v8, v155

    if-lez v8, :cond_19d8

    goto :goto_19dd

    :cond_19d8
    move-object/from16 v149, v4

    goto :goto_1a03

    :cond_19db
    move/from16 v8, v155

    :goto_19dd
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v149, v4

    const-string v4, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_1a00

    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v4

    if-eqz v4, :cond_1a00

    const-string v4, " (currently running in background)"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a00
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a03
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Bluetooth Scan Results: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in background)"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v188, v2

    move-wide/from16 v2, v190

    cmp-long v4, v2, v46

    if-gtz v4, :cond_1a32

    move/from16 v155, v5

    move-wide/from16 v4, v198

    cmp-long v185, v4, v46

    if-lez v185, :cond_1a2a

    goto :goto_1a36

    :cond_1a2a
    move-object/from16 v185, v0

    move-wide/from16 v190, v2

    move-wide/from16 v2, v200

    goto/16 :goto_1aa2

    :cond_1a32
    move/from16 v155, v5

    move-wide/from16 v4, v198

    :goto_1a36
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v185, v0

    const-string v0, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v190, v2

    move-wide/from16 v2, v192

    invoke-static {v7, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v0, v156

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v184, :cond_1a6a

    invoke-virtual/range {v184 .. v184}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v156

    if-eqz v156, :cond_1a67

    move-wide/from16 v192, v2

    const-string v2, " (currently running unoptimized)"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a6c

    :cond_1a67
    move-wide/from16 v192, v2

    goto :goto_1a6c

    :cond_1a6a
    move-wide/from16 v192, v2

    :goto_1a6c
    if-eqz v14, :cond_1a9e

    cmp-long v2, v4, v46

    if-lez v2, :cond_1a9e

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, " (max "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v200

    invoke-static {v7, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v156

    if-eqz v156, :cond_1a9b

    move-object/from16 v156, v0

    const-string v0, " (currently running unoptimized in background)"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1aa2

    :cond_1a9b
    move-object/from16 v156, v0

    goto :goto_1aa2

    :cond_1a9e
    move-object/from16 v156, v0

    move-wide/from16 v2, v200

    :goto_1aa2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v198, v10

    move-object/from16 v10, p2

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    move v8, v0

    goto :goto_1ad9

    :cond_1ab0
    move-object/from16 v185, v0

    move-wide/from16 v202, v2

    move-wide/from16 v147, v5

    move-object/from16 v151, v9

    move-object/from16 v176, v13

    move-wide/from16 v196, v123

    move-object/from16 v9, v149

    move-object/from16 v149, v4

    move-wide/from16 v123, v11

    goto :goto_1ad7

    :cond_1ac3
    move-object/from16 v185, v0

    move-wide/from16 v157, v2

    move-wide/from16 v147, v5

    move-object/from16 v151, v9

    move-object/from16 v176, v13

    move-object/from16 v146, v14

    move-wide/from16 v196, v123

    move-object/from16 v9, v149

    move-object/from16 v149, v4

    move-wide/from16 v123, v11

    :goto_1ad7
    move/from16 v8, v110

    :goto_1ad9
    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    const-string v14, ", "

    if-eqz v0, :cond_1b2a

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1ae3
    sget v3, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v2, v3, :cond_1b1a

    move/from16 v13, p4

    move-object/from16 v11, v138

    invoke-virtual {v11, v2, v13}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v3

    if-eqz v3, :cond_1b11

    if-nez v0, :cond_1afe

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "    User activity: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_1b01

    :cond_1afe
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b01
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v133

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b13

    :cond_1b11
    move-object/from16 v12, v133

    :goto_1b13
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v138, v11

    move-object/from16 v133, v12

    goto :goto_1ae3

    :cond_1b1a
    move/from16 v13, p4

    move-object/from16 v12, v133

    move-object/from16 v11, v138

    if-eqz v0, :cond_1b30

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b30

    :cond_1b2a
    move/from16 v13, p4

    move-object/from16 v12, v133

    move-object/from16 v11, v138

    :cond_1b30
    :goto_1b30
    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v188, 0x0

    const-wide/16 v190, 0x0

    const/4 v0, 0x0

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v110

    const/16 v133, 0x1

    add-int/lit8 v110, v110, -0x1

    move-object/from16 v138, v11

    move-object/from16 v133, v12

    move-wide/from16 v11, v188

    move-wide/from16 v204, v190

    move/from16 v222, v8

    move v8, v0

    move/from16 v0, v110

    move/from16 v110, v222

    move-wide/from16 v223, v2

    move-wide v2, v4

    move-wide/from16 v4, v223

    :goto_1b5a
    if-ltz v0, :cond_1c44

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v155

    move-object/from16 v184, v9

    move-object/from16 v9, v155

    check-cast v9, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v155, ": "

    move-object/from16 v188, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wake lock "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v189

    const-string v190, "full"

    move-object/from16 v1, v185

    move-object/from16 v185, v156

    move/from16 v156, v0

    move-object v0, v7

    move-object/from16 v207, v1

    move-object/from16 v206, v188

    move-object/from16 v1, v189

    move-object/from16 v188, v14

    move-wide v14, v2

    move-wide/from16 v2, v123

    move-wide/from16 v191, v11

    move-wide v11, v4

    move-object/from16 v4, v190

    move/from16 v5, p4

    move-object/from16 v189, v6

    move-object/from16 v6, v155

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v155

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v190

    const-string/jumbo v4, "partial"

    move-object v0, v7

    move-object/from16 v1, v190

    move-object/from16 v6, v155

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v155

    if-eqz v190, :cond_1bbf

    invoke-virtual/range {v190 .. v190}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    goto :goto_1bc0

    :cond_1bbf
    const/4 v0, 0x0

    :goto_1bc0
    move-object v1, v0

    const-string v4, "background partial"

    move-object v0, v7

    move-wide/from16 v2, v123

    move/from16 v5, p4

    move-object/from16 v6, v155

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v155

    const/4 v6, 0x2

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "window"

    move-object/from16 v6, v155

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v155

    const/16 v0, 0x12

    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v4, "draw"

    move-object v0, v7

    move-object/from16 v6, v155

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v150

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v110, 0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    move-wide/from16 v4, v123

    invoke-static {v3, v4, v5, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v2

    add-long/2addr v2, v11

    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    invoke-static {v11, v4, v5, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v11

    add-long/2addr v11, v14

    const/4 v6, 0x2

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v14

    invoke-static {v14, v4, v5, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v14

    add-long v14, v191, v14

    const/16 v6, 0x12

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    invoke-static {v6, v4, v5, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v123

    move-wide/from16 v198, v2

    move-wide/from16 v2, v204

    add-long v204, v2, v123

    add-int/lit8 v0, v156, -0x1

    move-wide/from16 v123, v4

    move-wide v2, v11

    move-wide v11, v14

    move-object/from16 v9, v184

    move-object/from16 v156, v185

    move-object/from16 v14, v188

    move-object/from16 v6, v189

    move-wide/from16 v4, v198

    move-object/from16 v1, v206

    move-object/from16 v185, v207

    move-object/from16 v15, p3

    goto/16 :goto_1b5a

    :cond_1c44
    move-object/from16 v206, v1

    move-object/from16 v189, v6

    move-object/from16 v184, v9

    move-wide/from16 v191, v11

    move-object/from16 v188, v14

    move-object/from16 v1, v150

    move-object/from16 v207, v185

    move-wide v14, v2

    move-wide v11, v4

    move-wide/from16 v4, v123

    move-object/from16 v185, v156

    move-wide/from16 v2, v204

    move/from16 v156, v0

    const/4 v0, 0x1

    if-le v8, v0, :cond_1d60

    const-wide/16 v123, 0x0

    const-wide/16 v155, 0x0

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_1c8f

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    nop

    move v6, v8

    move-wide/from16 v8, v196

    invoke-virtual {v0, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v123

    move/from16 v150, v6

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_1c82

    invoke-virtual {v6, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v196

    goto :goto_1c84

    :cond_1c82
    move-wide/from16 v196, v46

    :goto_1c84
    move-wide/from16 v155, v196

    move-wide/from16 v196, v8

    move-wide/from16 v8, v123

    move-wide/from16 v123, v4

    move-wide/from16 v4, v155

    goto :goto_1c99

    :cond_1c8f
    move/from16 v150, v8

    move-wide/from16 v8, v196

    move-wide/from16 v8, v123

    move-wide/from16 v123, v4

    move-wide/from16 v4, v155

    :goto_1c99
    cmp-long v0, v8, v46

    if-nez v0, :cond_1cb8

    cmp-long v0, v4, v46

    if-nez v0, :cond_1cb8

    cmp-long v0, v11, v46

    if-nez v0, :cond_1cb8

    cmp-long v0, v14, v46

    if-nez v0, :cond_1cb8

    cmp-long v0, v191, v46

    if-eqz v0, :cond_1cae

    goto :goto_1cb8

    :cond_1cae
    move-object/from16 v0, p3

    move-wide/from16 v198, v11

    move-object/from16 v6, v188

    move-wide/from16 v11, v191

    goto/16 :goto_1d6c

    :cond_1cb8
    :goto_1cb8
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    TOTAL wake: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    cmp-long v155, v11, v46

    if-eqz v155, :cond_1cd8

    const/4 v6, 0x1

    invoke-static {v7, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move/from16 v155, v6

    const-string v6, "full"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v155

    :cond_1cd8
    cmp-long v155, v14, v46

    if-eqz v155, :cond_1cf7

    if-eqz v6, :cond_1ce6

    move/from16 v155, v6

    move-object/from16 v6, v188

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1cea

    :cond_1ce6
    move/from16 v155, v6

    move-object/from16 v6, v188

    :goto_1cea
    const/16 v155, 0x1

    invoke-static {v7, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v198, v11

    const-string v11, "blamed partial"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1cfd

    :cond_1cf7
    move/from16 v155, v6

    move-wide/from16 v198, v11

    move-object/from16 v6, v188

    :goto_1cfd
    cmp-long v11, v8, v46

    if-eqz v11, :cond_1d10

    if-eqz v155, :cond_1d06

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d06
    const/16 v155, 0x1

    invoke-static {v7, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v11, "actual partial"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d10
    cmp-long v11, v4, v46

    if-eqz v11, :cond_1d23

    if-eqz v155, :cond_1d19

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d19
    const/16 v155, 0x1

    invoke-static {v7, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v11, "actual background partial"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d23
    cmp-long v11, v191, v46

    if-eqz v11, :cond_1d3c

    if-eqz v155, :cond_1d2c

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d2c
    const/16 v155, 0x1

    move-wide/from16 v11, v191

    invoke-static {v7, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v190, v4

    const-string/jumbo v4, "window"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d40

    :cond_1d3c
    move-wide/from16 v11, v191

    move-wide/from16 v190, v4

    :goto_1d40
    cmp-long v4, v2, v46

    if-eqz v4, :cond_1d55

    if-eqz v155, :cond_1d4b

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d4b
    const/16 v155, 0x1

    invoke-static {v7, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "draw"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d55
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d6c

    :cond_1d60
    move-object/from16 v0, p3

    move-wide/from16 v123, v4

    move/from16 v150, v8

    move-wide/from16 v198, v11

    move-object/from16 v6, v188

    move-wide/from16 v11, v191

    :goto_1d6c
    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_1db1

    move-wide/from16 v8, v123

    invoke-virtual {v4, v8, v9, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v123

    invoke-virtual {v4, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    cmp-long v155, v123, v46

    if-lez v155, :cond_1dac

    move-object/from16 v155, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    WiFi Multicast Wakelock"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " count = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v190, v123, v18

    move-wide/from16 v192, v2

    div-long v1, v190, v16

    invoke-static {v7, v1, v2}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1db7

    :cond_1dac
    move-object/from16 v155, v1

    move-wide/from16 v192, v2

    goto :goto_1db7

    :cond_1db1
    move-object/from16 v155, v1

    move-wide/from16 v192, v2

    move-wide/from16 v8, v123

    :goto_1db7
    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1dc1
    if-ltz v2, :cond_1e79

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v8, v9, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v123

    add-long v123, v123, v18

    move-object/from16 v156, v4

    div-long v4, v123, v16

    move-wide/from16 v123, v11

    invoke-virtual {v3, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v11

    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_1de8

    move-wide/from16 v190, v14

    move-wide/from16 v14, v196

    invoke-virtual {v12, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v196

    goto :goto_1dee

    :cond_1de8
    move-wide/from16 v190, v14

    move-wide/from16 v14, v196

    const-wide/16 v196, -0x1

    :goto_1dee
    move-wide/from16 v200, v196

    if-eqz v12, :cond_1df7

    invoke-virtual {v12, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v188

    goto :goto_1df9

    :cond_1df7
    move/from16 v188, v67

    :goto_1df9
    move/from16 v196, v188

    move-object/from16 v188, v3

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Sync "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v152

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v152, v4, v46

    if-eqz v152, :cond_1e51

    invoke-static {v7, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v152, v1

    const-string/jumbo v1, "realtime ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v207

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v202, v4

    move-wide/from16 v4, v200

    cmp-long v197, v4, v46

    if-lez v197, :cond_1e4c

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v200, v4

    const-string v4, "background ("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v196

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e5e

    :cond_1e4c
    move-wide/from16 v200, v4

    move/from16 v4, v196

    goto :goto_1e5e

    :cond_1e51
    move-object/from16 v152, v1

    move-wide/from16 v202, v4

    move/from16 v4, v196

    move-object/from16 v1, v207

    const-string v5, "(not used)"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1e5e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v110, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v207, v1

    move-wide/from16 v196, v14

    move-wide/from16 v11, v123

    move-object/from16 v1, v152

    move-object/from16 v4, v156

    move-wide/from16 v14, v190

    move-object/from16 v152, v3

    goto/16 :goto_1dc1

    :cond_1e79
    move-object/from16 v156, v4

    move-wide/from16 v123, v11

    move-wide/from16 v190, v14

    move-object/from16 v3, v152

    move-wide/from16 v14, v196

    move-object/from16 v152, v1

    move-object/from16 v1, v207

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1e91
    if-ltz v4, :cond_1f2b

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v5, v8, v9, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v11

    add-long v11, v11, v18

    div-long v11, v11, v16

    move-wide/from16 v196, v8

    invoke-virtual {v5, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    invoke-virtual {v5}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    if-eqz v9, :cond_1eb2

    invoke-virtual {v9, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v200

    goto :goto_1eb4

    :cond_1eb2
    const-wide/16 v200, -0x1

    :goto_1eb4
    move-wide/from16 v202, v200

    if-eqz v9, :cond_1ebd

    invoke-virtual {v9, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v188

    goto :goto_1ebf

    :cond_1ebd
    move/from16 v188, v67

    :goto_1ebf
    move/from16 v200, v188

    move-object/from16 v188, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Job "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, v11, v46

    if-eqz v5, :cond_1f0e

    invoke-static {v7, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "realtime ("

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v8

    move-object/from16 v201, v9

    move-wide/from16 v8, v202

    cmp-long v202, v8, v46

    if-lez v202, :cond_1f0b

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "background ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v200

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f1a

    :cond_1f0b
    move/from16 v0, v200

    goto :goto_1f1a

    :cond_1f0e
    move v5, v8

    move-object/from16 v201, v9

    move/from16 v0, v200

    move-wide/from16 v8, v202

    const-string v0, "(not used)"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1f1a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v110, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p3

    move-wide/from16 v8, v196

    goto/16 :goto_1e91

    :cond_1f2b
    move-wide/from16 v196, v8

    invoke-virtual/range {v138 .. v138}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1f37
    if-ltz v4, :cond_1f98

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    if-eqz v8, :cond_1f8c

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "    Job Completions "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1f58
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v9, v11, :cond_1f84

    move-object/from16 v11, v133

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/job/JobParameters;->getReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v12, v176

    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x)"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_1f58

    :cond_1f84
    move-object/from16 v11, v133

    move-object/from16 v12, v176

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1f90

    :cond_1f8c
    move-object/from16 v11, v133

    move-object/from16 v12, v176

    :goto_1f90
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v133, v11

    move-object/from16 v176, v12

    const/4 v5, 0x1

    goto :goto_1f37

    :cond_1f98
    move-object/from16 v11, v133

    move-object/from16 v12, v176

    move-object/from16 v4, v138

    invoke-virtual {v4, v7, v13}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1fb3

    const-string v5, "    Jobs deferred on launch "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1fb3
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v133, "Flashlight"

    move-object/from16 v108, v0

    move-object/from16 v207, v1

    move-wide v0, v14

    move/from16 v138, v150

    move-wide/from16 v14, v196

    const/4 v9, 0x0

    move-wide/from16 v222, v144

    move-wide/from16 v144, v153

    move-wide/from16 v153, v147

    move-wide/from16 v147, v222

    move-object/from16 v8, p2

    move-object/from16 v150, v2

    move-object/from16 v188, v6

    move v6, v9

    move-object/from16 v2, v184

    move-object v9, v7

    move/from16 v176, v177

    move-object v10, v5

    move-object/from16 v209, v11

    move/from16 v5, v126

    move-object/from16 v126, v146

    move-object/from16 v146, v12

    move-wide/from16 v222, v123

    move-wide/from16 v123, v180

    move-wide/from16 v180, v222

    move-wide v11, v14

    move-wide/from16 v196, v134

    move-wide/from16 v134, v14

    move v15, v13

    move/from16 v13, p4

    move-object/from16 v210, v188

    const/16 v139, 0x1

    move-wide/from16 v222, v190

    move-wide/from16 v190, v194

    move-wide/from16 v194, v222

    move-wide/from16 v224, v165

    move-wide/from16 v165, v174

    move-wide/from16 v174, v224

    move-object/from16 v14, p3

    move-object/from16 v222, v142

    move/from16 v142, v113

    move-object/from16 v113, v222

    move-object/from16 v15, v133

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v110, v110, v8

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Camera"

    move-object/from16 v8, p2

    move-wide/from16 v11, v134

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v110, v110, v8

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Video"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v110, v110, v8

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Audio"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v8, v110, v8

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/4 v9, 0x0

    move/from16 v110, v8

    :goto_2045
    if-ge v9, v14, :cond_2163

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v13, p3

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Sensor "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v11

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_206c

    const-string v12, "GPS"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_206f

    :cond_206c
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_206f
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_211e

    move/from16 v6, p4

    move-object/from16 v184, v2

    move-wide/from16 v222, v134

    move-object/from16 v134, v3

    move-wide/from16 v2, v222

    invoke-virtual {v12, v2, v3, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v200

    add-long v200, v200, v18

    move/from16 v135, v10

    move/from16 v177, v11

    div-long v10, v200, v16

    move/from16 v188, v5

    invoke-virtual {v12, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v13

    if-eqz v13, :cond_209f

    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v200

    goto :goto_20a1

    :cond_209f
    const/16 v200, 0x0

    :goto_20a1
    move/from16 v201, v200

    move/from16 v202, v14

    move-object/from16 v200, v15

    invoke-virtual {v12, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v14

    if-eqz v13, :cond_20b2

    invoke-virtual {v13, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v203

    goto :goto_20b4

    :cond_20b2
    move-wide/from16 v203, v46

    :goto_20b4
    move-wide/from16 v211, v203

    cmp-long v203, v10, v46

    if-eqz v203, :cond_2108

    cmp-long v203, v14, v10

    if-eqz v203, :cond_20c9

    invoke-static {v7, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v203, v0

    const-string v0, "blamed realtime, "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20cb

    :cond_20c9
    move-wide/from16 v203, v0

    :goto_20cb
    invoke-static {v7, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "realtime ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v207

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v207, v10

    move-wide/from16 v10, v211

    cmp-long v1, v10, v46

    if-nez v1, :cond_20ee

    move/from16 v1, v201

    if-lez v1, :cond_20e9

    goto :goto_20f0

    :cond_20e9
    move-object/from16 v205, v8

    move-object/from16 v5, v210

    goto :goto_211d

    :cond_20ee
    move/from16 v1, v201

    :goto_20f0
    move/from16 v201, v5

    move-object/from16 v5, v210

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v205, v8

    const-string v8, "background ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_211d

    :cond_2108
    move-wide/from16 v203, v0

    move-object/from16 v205, v8

    move/from16 v1, v201

    move-object/from16 v0, v207

    move/from16 v201, v5

    move-wide/from16 v207, v10

    move-object/from16 v5, v210

    move-wide/from16 v10, v211

    const-string v8, "(not used)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_211d
    goto :goto_213f

    :cond_211e
    move/from16 v6, p4

    move-wide/from16 v203, v0

    move-object/from16 v184, v2

    move/from16 v188, v5

    move-object/from16 v205, v8

    move/from16 v177, v11

    move/from16 v202, v14

    move-object/from16 v200, v15

    move-object/from16 v0, v207

    move-object/from16 v5, v210

    move-wide/from16 v222, v134

    move-object/from16 v134, v3

    move/from16 v135, v10

    move-wide/from16 v2, v222

    const-string v1, "(not used)"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_213f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, p2

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v110, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v207, v0

    move-object/from16 v210, v5

    move/from16 v5, v188

    move-object/from16 v15, v200

    move/from16 v14, v202

    move-wide/from16 v0, v203

    const/4 v6, 0x0

    move-wide/from16 v222, v2

    move-object/from16 v3, v134

    move-wide/from16 v134, v222

    move-object/from16 v2, v184

    goto/16 :goto_2045

    :cond_2163
    move/from16 v6, p4

    move-wide/from16 v203, v0

    move-object/from16 v184, v2

    move/from16 v188, v5

    move/from16 v202, v14

    move-object/from16 v200, v15

    move-object/from16 v5, v210

    move-object/from16 v15, p2

    move-wide/from16 v222, v134

    move-object/from16 v134, v3

    move-wide/from16 v2, v222

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v0, "Vibrator"

    move-object/from16 v8, p2

    move-object v9, v7

    move-wide v11, v2

    move-object/from16 v1, p3

    move/from16 v13, p4

    move/from16 v135, v202

    move-object/from16 v14, p3

    move-object v5, v15

    move-object/from16 v177, v200

    move-object v15, v0

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int v0, v110, v0

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground activities"

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v0, v8

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground services"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v0, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :goto_21b0
    const/4 v11, 0x7

    if-ge v10, v11, :cond_21e6

    invoke-virtual {v4, v10, v2, v3, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v11

    cmp-long v13, v11, v46

    if-lez v13, :cond_21e3

    add-long/2addr v8, v11

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "    "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v13, v13, v10

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " for: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v13, v11, v18

    div-long v13, v13, v16

    invoke-static {v7, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_21e3
    add-int/lit8 v10, v10, 0x1

    goto :goto_21b0

    :cond_21e6
    cmp-long v10, v8, v46

    if-lez v10, :cond_2204

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Total running: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v10, v8, v18

    div-long v10, v10, v16

    invoke-static {v7, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2204
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v10

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v12

    cmp-long v14, v10, v46

    if-gtz v14, :cond_2214

    cmp-long v14, v12, v46

    if-lez v14, :cond_2237

    :cond_2214
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "    Total cpu time: u="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v10, v16

    invoke-static {v7, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v14, "s="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v12, v16

    invoke-static {v7, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2237
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v14

    if-eqz v14, :cond_227d

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v15, "    Total cpu time per freq:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    :goto_2247
    move/from16 v110, v0

    array-length v0, v14

    if-ge v15, v0, :cond_226f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v200, v2

    move-object/from16 v2, v209

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v207, v8

    aget-wide v8, v14, v15

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v110

    move-wide/from16 v2, v200

    move-wide/from16 v8, v207

    goto :goto_2247

    :cond_226f
    move-wide/from16 v200, v2

    move-wide/from16 v207, v8

    move-object/from16 v2, v209

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2285

    :cond_227d
    move/from16 v110, v0

    move-wide/from16 v200, v2

    move-wide/from16 v207, v8

    move-object/from16 v2, v209

    :goto_2285
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v0

    if-eqz v0, :cond_22bd

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "    Total screen-off cpu time per freq:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_2295
    array-length v8, v0

    if-ge v3, v8, :cond_22b3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v211, v10

    aget-wide v9, v0, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v10, v211

    goto :goto_2295

    :cond_22b3
    move-wide/from16 v211, v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22bf

    :cond_22bd
    move-wide/from16 v211, v10

    :goto_22bf
    const/4 v3, 0x0

    :goto_22c0
    const/4 v8, 0x7

    if-ge v3, v8, :cond_2364

    invoke-virtual {v4, v6, v3}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(II)[J

    move-result-object v8

    if-eqz v8, :cond_2313

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    Cpu times per freq at state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    :goto_22eb
    array-length v10, v8

    if-ge v9, v10, :cond_2309

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v213, v12

    aget-wide v11, v8, v9

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v12, v213

    goto :goto_22eb

    :cond_2309
    move-wide/from16 v213, v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2315

    :cond_2313
    move-wide/from16 v213, v12

    :goto_2315
    invoke-virtual {v4, v6, v3}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(II)[J

    move-result-object v9

    if-eqz v9, :cond_235e

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   Screen-off cpu times per freq at state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :goto_233d
    array-length v11, v9

    if-ge v10, v11, :cond_2357

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v9, v10

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_233d

    :cond_2357
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_235e
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v12, v213

    goto/16 :goto_22c0

    :cond_2364
    move-wide/from16 v213, v12

    nop

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_2371
    if-ltz v8, :cond_24fb

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v10

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v12

    move-object/from16 v202, v14

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v14

    move-object/from16 v205, v0

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v0

    move-object/from16 v209, v2

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v2

    move-object/from16 v215, v4

    invoke-virtual {v9, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v4

    if-nez v6, :cond_23a0

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v216

    goto :goto_23a2

    :cond_23a0
    const/16 v216, 0x0

    :goto_23a2
    move/from16 v217, v216

    cmp-long v216, v10, v46

    if-nez v216, :cond_23c3

    cmp-long v216, v12, v46

    if-nez v216, :cond_23c3

    cmp-long v216, v14, v46

    if-nez v216, :cond_23c3

    if-nez v0, :cond_23c3

    move/from16 v6, v217

    if-nez v6, :cond_23c5

    if-nez v2, :cond_23c5

    if-eqz v4, :cond_23bb

    goto :goto_23c5

    :cond_23bb
    move-object/from16 v11, v206

    move-object/from16 v216, v210

    move-object/from16 v206, v3

    goto/16 :goto_24e7

    :cond_23c3
    move/from16 v6, v217

    :cond_23c5
    :goto_23c5
    move-object/from16 v216, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    Proc "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "      CPU: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v9, "usr + "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "krn ; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "fg"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2414

    if-nez v2, :cond_2414

    if-eqz v4, :cond_2409

    goto :goto_2414

    :cond_2409
    move/from16 v217, v0

    move-object/from16 v9, v206

    move-object/from16 v0, v210

    move/from16 v210, v2

    move-object/from16 v206, v3

    goto :goto_245f

    :cond_2414
    :goto_2414
    move-object/from16 v9, v206

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v206, v3

    const-string v3, "      "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-eqz v0, :cond_2432

    const/4 v3, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v217, v0

    const-string v0, " starts"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2434

    :cond_2432
    move/from16 v217, v0

    :goto_2434
    if-eqz v2, :cond_244c

    if-eqz v3, :cond_243e

    move-object/from16 v0, v210

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2440

    :cond_243e
    move-object/from16 v0, v210

    :goto_2440
    const/4 v3, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v210, v2

    const-string v2, " crashes"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2450

    :cond_244c
    move-object/from16 v0, v210

    move/from16 v210, v2

    :goto_2450
    if-eqz v4, :cond_245f

    if-eqz v3, :cond_2457

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2457
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " anrs"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_245f
    :goto_245f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2467
    if-ge v2, v6, :cond_24db

    move-object/from16 v3, v216

    move-object/from16 v216, v0

    invoke-virtual {v3, v2}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v0

    if-eqz v0, :cond_24c8

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v218, v3

    const-string v3, "      * Killed for "

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    move/from16 v219, v4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_248a

    const-string v3, "cpu"

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2490

    :cond_248a
    const-string/jumbo v3, "unknown"

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2490
    const-string v3, " use: "

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v3, v4, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " over "

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v3, v4, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-wide v3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v3, v3, v46

    if-eqz v3, :cond_24c4

    move-object/from16 v3, v184

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v220, 0x64

    mul-long v3, v3, v220

    move-wide/from16 v220, v10

    move-object v11, v9

    iget-wide v9, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v3, v9

    invoke-virtual {v5, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, "%)"

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_24cf

    :cond_24c4
    move-wide/from16 v220, v10

    move-object v11, v9

    goto :goto_24cf

    :cond_24c8
    move-object/from16 v218, v3

    move/from16 v219, v4

    move-wide/from16 v220, v10

    move-object v11, v9

    :goto_24cf
    add-int/lit8 v2, v2, 0x1

    move-object v9, v11

    move-object/from16 v0, v216

    move-object/from16 v216, v218

    move/from16 v4, v219

    move-wide/from16 v10, v220

    goto :goto_2467

    :cond_24db
    move/from16 v219, v4

    move-wide/from16 v220, v10

    move-object/from16 v218, v216

    move-object/from16 v216, v0

    move-object v11, v9

    const/4 v0, 0x1

    move/from16 v110, v0

    :goto_24e7
    add-int/lit8 v8, v8, -0x1

    move/from16 v6, p4

    move-object/from16 v14, v202

    move-object/from16 v0, v205

    move-object/from16 v3, v206

    move-object/from16 v2, v209

    move-object/from16 v4, v215

    move-object/from16 v210, v216

    move-object/from16 v206, v11

    goto/16 :goto_2371

    :cond_24fb
    move-object/from16 v205, v0

    move-object/from16 v209, v2

    move-object/from16 v206, v3

    move-object/from16 v215, v4

    move-object/from16 v202, v14

    nop

    invoke-virtual/range {v215 .. v215}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2510
    if-ltz v2, :cond_2616

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Apk "

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_2539
    if-ltz v8, :cond_2569

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "      Wakeup alarm "

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v9, v134

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Counter;

    move/from16 v11, p4

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " times"

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_2539

    :cond_2569
    move/from16 v11, p4

    move-object/from16 v9, v134

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_2577
    if-ltz v10, :cond_25f7

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v13, v121

    invoke-virtual {v12, v13, v14, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v121

    invoke-virtual {v12, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v15

    move-object/from16 v134, v0

    invoke-virtual {v12, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v0

    cmp-long v210, v121, v46

    if-nez v210, :cond_259e

    if-nez v15, :cond_259e

    if-eqz v0, :cond_2598

    goto :goto_259e

    :cond_2598
    move-object/from16 v210, v4

    move-object/from16 v216, v8

    move-object v4, v9

    goto :goto_25eb

    :cond_259e
    :goto_259e
    move-object/from16 v210, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "      Service "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "        Created for: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v216, v8

    move-object v4, v9

    div-long v8, v121, v16

    invoke-static {v7, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v8, "uptime\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "        Starts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", launches: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_25eb
    add-int/lit8 v10, v10, -0x1

    move-object v9, v4

    move-wide/from16 v121, v13

    move-object/from16 v0, v134

    move-object/from16 v4, v210

    move-object/from16 v8, v216

    goto :goto_2577

    :cond_25f7
    move-object/from16 v134, v0

    move-object/from16 v210, v4

    move-object/from16 v216, v8

    move-object v4, v9

    move-wide/from16 v13, v121

    if-nez v3, :cond_260a

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "      (nothing executed)"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_260a
    const/16 v110, 0x1

    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v121, v13

    move-object/from16 v0, v134

    move-object/from16 v134, v4

    goto/16 :goto_2510

    :cond_2616
    move/from16 v11, p4

    move-wide/from16 v13, v121

    move-object/from16 v4, v134

    move-object/from16 v134, v0

    if-nez v110, :cond_2628

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    (nothing executed)"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2628
    :goto_2628
    add-int/lit8 v0, v105, 0x1

    move-object v2, v1

    move-object/from16 v152, v4

    move v4, v11

    move-wide/from16 v121, v13

    move-object/from16 v6, v70

    move-object/from16 v15, v113

    move-object/from16 v70, v125

    move-object/from16 v134, v126

    move-wide/from16 v153, v140

    move-object/from16 v150, v155

    move-wide/from16 v138, v163

    move-object/from16 v149, v184

    move-object/from16 v156, v185

    move/from16 v126, v188

    move-wide/from16 v131, v200

    move-wide/from16 v123, v203

    const/4 v1, 0x0

    move v13, v0

    move-object v14, v5

    move-object v5, v7

    move-object/from16 v0, v146

    move-object/from16 v155, v151

    move-object/from16 v7, v209

    goto/16 :goto_149e

    :cond_2654
    return-void

    nop

    :pswitch_data_2656
    .packed-switch 0x1
        :pswitch_dd9
        :pswitch_dd3
        :pswitch_dcd
        :pswitch_dc7
        :pswitch_dc1
        :pswitch_dbb
        :pswitch_db5
        :pswitch_daf
        :pswitch_d9d
        :pswitch_d8f
        :pswitch_d89
        :pswitch_d83
        :pswitch_d7d
    .end packed-switch
.end method

.method public dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v1, p4, 0x18

    if-eqz v1, :cond_13

    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :cond_13
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    const/16 v5, 0x23

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10900000003L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000004L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_68

    new-instance v3, Lcom/android/internal/os/BatteryStatsHelper;

    and-int/lit8 v4, p4, 0x40

    const/4 v5, 0x0

    if-eqz v4, :cond_57

    const/4 v4, 0x1

    goto :goto_58

    :cond_57
    move v4, v5

    :goto_58
    invoke-direct {v3, p1, v5, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v3, p0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v4, -0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-direct {p0, v0, v3, p3}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;Ljava/util/List;)V

    invoke-direct {p0, v0, v3}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;)V

    :cond_68
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method final formatBytesLocked(J)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v2, 0x400

    cmp-long v0, p1, v2

    if-gez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    const-wide/32 v2, 0x100000

    cmp-long v0, p1, v2

    const/4 v2, 0x1

    if-gez v0, :cond_40

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2fKB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_40
    const-wide/32 v3, 0x40000000

    cmp-long v0, p1, v3

    if-gez v0, :cond_61

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2fMB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_61
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2fGB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_9

    const-string v0, "--%"

    return-object v0

    :cond_9
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "%.1f%%"

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanTime(JI)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCpuFreqs()[J
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenDoze()I
.end method

.method public abstract getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getGpsBatteryDrainMaMs()J
.end method

.method public abstract getGpsSignalQualityTime(IJI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMaxLearnedBatteryCapacity()I
.end method

.method public abstract getMinLearnedBatteryCapacity()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getScreenDozeCount(I)I
.end method

.method public abstract getScreenDozeTime(JI)J
.end method

.method public abstract getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUahDischarge(I)J
.end method

.method public abstract getUahDischargeDeepDoze(I)J
.end method

.method public abstract getUahDischargeLightDoze(I)J
.end method

.method public abstract getUahDischargeScreenDoze(I)J
.end method

.method public abstract getUahDischargeScreenOff(I)J
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiActiveTime(JI)J
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiMulticastWakelockCount(I)I
.end method

.method public abstract getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .registers 1

    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
