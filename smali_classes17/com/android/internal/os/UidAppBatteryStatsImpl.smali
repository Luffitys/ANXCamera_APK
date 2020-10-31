.class public Lcom/android/internal/os/UidAppBatteryStatsImpl;
.super Ljava/lang/Object;
.source "UidAppBatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;,
        Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final DEBUG_APP:Z = false

.field private static final MAX_WAKELOCKS_PER_UID:I = 0x64

.field private static final MIUI_FACE:Ljava/lang/String; = "com.miui.face"

.field private static final NUM_BT_TX_LEVELS:I = 0x1

.field private static final NUM_WIFI_TX_LEVELS:I = 0x1

.field private static final SUFIX_REMOTE:Ljava/lang/String; = "remote"

.field private static final SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "UidAppBatteryStatsImpl"

.field private static final TIME_MS_ONE_HOUR:I = 0x36ee80

.field private static final TIME_MS_TWO_MINUTES:I = 0x1d4c0

.field private static final UID1000:Ljava/lang/String; = "android.uid.system:1000"

.field public static final WAKE_LOCK_WEIGHT:I = 0x32

.field protected static mPowerProfile:Lcom/android/internal/os/PowerProfile;


# instance fields
.field mCommHashToCmdline:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCommToCmdline:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastModemNetworkStatsSysApp:Landroid/net/NetworkStatsSysApp;

.field protected mLastPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdateAllPacagesBpfTimeMs:J

.field private mLastUpdateAllPacagesTimeMs:J

.field private mLastWifiNetworkStatsSysApp:Landroid/net/NetworkStatsSysApp;

.field private mMobileDelta:Landroid/net/NetworkStatsSysApp;

.field private final mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactorySysApp;

.field final mPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgCpuTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mSensorTimersSys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSysAppCpuActiveTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;

.field private mSysAppCpuClusterTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;

.field protected mSysAppCpuFreqTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;

.field private mSysAppCpuUserSysTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;

.field private final mUid:I

.field final mUidPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatePackageTimes:I

.field private mUseBpfStats:Z

.field private mWifiDelta:Landroid/net/NetworkStatsSysApp;


# direct methods
.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommHashToCmdline:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSensorTimersSys:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    new-instance v0, Landroid/net/NetworkStatsSysApp;

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStatsSysApp;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastModemNetworkStatsSysApp:Landroid/net/NetworkStatsSysApp;

    new-instance v0, Landroid/net/NetworkStatsSysApp;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStatsSysApp;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastWifiNetworkStatsSysApp:Landroid/net/NetworkStatsSysApp;

    new-instance v0, Lcom/android/internal/net/NetworkStatsFactorySysApp;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactorySysApp;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactorySysApp;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPkgCpuTime:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuUserSysTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;

    invoke-direct {v0, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuActiveTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;

    invoke-direct {v0, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuClusterTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;

    invoke-direct {v0, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuFreqTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;

    iput-wide v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesTimeMs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUpdatePackageTimes:I

    iput-wide v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesBpfTimeMs:J

    iput p1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/bpf/map_netd_app_uid_stats_map"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUseBpfStats:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method static synthetic access$400([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    return-void
.end method

.method private static detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    :cond_5
    return-void
.end method

.method private static detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">(TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->detach()V

    :cond_5
    return-void
.end method

.method private static detachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">([TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_e

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_e

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method private static detachIfNotNull([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">([[TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_e

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_e

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method private getCommHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "5381"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "1111111111111111111111111111111111111111111111111111111111111111"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_40

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object v4, v0

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_40
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getProcCmdline(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->readProcCmdlineFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProcComm(I)Ljava/lang/String;
    .registers 12

    const-string v0, "failed to readProcCmdlineFile:"

    const-string v1, "UidAppBatteryStatsImpl"

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/comm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_bf

    const/4 v3, 0x0

    :try_start_27
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    const/16 v5, 0x64

    new-array v5, v5, [B

    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_5e

    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v7, -0x1

    invoke-direct {v6, v5, v8, v9}, Ljava/lang/String;-><init>([BII)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_41} :catch_9d
    .catchall {:try_start_27 .. :try_end_41} :catchall_7c

    nop

    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_5d

    :catch_46
    move-exception v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return-object v6

    :cond_5e
    nop

    nop

    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_7b

    :catch_64
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    return-object v4

    :catchall_7c
    move-exception v4

    if-eqz v3, :cond_9b

    :try_start_7f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_9b

    :catch_83
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_9b
    :goto_9b
    nop

    :goto_9c
    throw v4

    :catch_9d
    move-exception v5

    nop

    if-eqz v3, :cond_bd

    :try_start_a1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_bd

    :catch_a5
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    :cond_bd
    :goto_bd
    nop

    :goto_be
    return-object v4

    :cond_bf
    return-object v4
.end method

.method private readProcCmdlineFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const-string v0, "failed to readProcCmdlineFile:"

    const-string v1, "UidAppBatteryStatsImpl"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_db

    const/4 v3, 0x0

    :try_start_11
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    const/16 v5, 0x100

    new-array v5, v5, [B

    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_7a

    add-int/lit8 v6, v7, -0x1

    aget-byte v6, v5, v6

    const/16 v9, 0xa

    const/4 v10, 0x0

    if-ne v6, v9, :cond_34

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v9, v7, -0x1

    invoke-direct {v6, v5, v10, v9}, Ljava/lang/String;-><init>([BII)V

    goto :goto_39

    :cond_34
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v10, v7}, Ljava/lang/String;-><init>([BII)V

    :goto_39
    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "\u0000"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4b

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    move v11, v10

    :cond_4b
    const/16 v10, 0x2f

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v10

    if-eq v10, v8, :cond_55

    add-int/lit8 v9, v10, 0x1

    :cond_55
    if-le v11, v9, :cond_5c

    invoke-virtual {v6, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_5b} :catch_b9
    .catchall {:try_start_11 .. :try_end_5b} :catchall_98

    move-object v6, v4

    :cond_5c
    nop

    nop

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_79

    :catch_62
    move-exception v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    return-object v6

    :cond_7a
    nop

    nop

    :try_start_7c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_97

    :catch_80
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    return-object v4

    :catchall_98
    move-exception v4

    if-eqz v3, :cond_b7

    :try_start_9b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_b7

    :catch_9f
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    :cond_b7
    :goto_b7
    nop

    :goto_b8
    throw v4

    :catch_b9
    move-exception v5

    nop

    if-eqz v3, :cond_d9

    :try_start_bd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_d9

    :catch_c1
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    :cond_d9
    :goto_d9
    nop

    :goto_da
    return-object v4

    :cond_db
    return-object v4
.end method

.method private readSysAppNetworkStatsLocked([Ljava/lang/String;)Landroid/net/NetworkStatsSysApp;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactorySysApp;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/net/NetworkStatsFactorySysApp;->readNSDForSystemApp([Ljava/lang/String;Landroid/net/NetworkStatsSysApp;)Landroid/net/NetworkStatsSysApp;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_f

    return-object v0

    :cond_e
    goto :goto_2a

    :catch_f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to read sys network stats for ifaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UidAppBatteryStatsImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-object v0
.end method

.method private static resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;Z)Z
    .registers 3

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private static resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">(TT;Z)Z"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->reset(Z)Z

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private static resetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">([TT;Z)Z"
        }
    .end annotation

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_11

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    return v0

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private static resetIfNotNull([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">([[TT;Z)Z"
        }
    .end annotation

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_11

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->resetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    return v0

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method static setPowerProfile(Lcom/android/internal/os/PowerProfile;)V
    .registers 1

    sput-object p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method

.method private updateAllPackages(Lcom/android/internal/os/BatteryStatsImpl;)Z
    .registers 12

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUpdatePackageTimes:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v2, v5, :cond_1f

    iget-wide v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesTimeMs:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x1d4c0

    cmp-long v5, v5, v7

    if-gez v5, :cond_19

    return v4

    :cond_19
    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesTimeMs:J

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUpdatePackageTimes:I

    goto :goto_2d

    :cond_1f
    iget-wide v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesTimeMs:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x36ee80

    cmp-long v2, v5, v7

    if-gez v2, :cond_2b

    return v4

    :cond_2b
    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesTimeMs:J

    :goto_2d
    const/4 v2, 0x0

    const-string v5, "/proc"

    invoke-static {v5, v2}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v2

    if-nez v2, :cond_37

    goto :goto_38

    :cond_37
    array-length v4, v2

    :goto_38
    const/4 v5, 0x0

    :goto_39
    if-ge v5, v4, :cond_68

    aget v6, v2, v5

    if-gtz v6, :cond_40

    goto :goto_65

    :cond_40
    invoke-direct {p0, v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getProcCmdline(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getProcComm(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_65

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_65

    if-eqz v8, :cond_65

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_65

    iget-object v9, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_65

    iget-object v9, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_68
    return v3
.end method

.method private updateAllPackagesBpf(Lcom/android/internal/os/BatteryStatsImpl;)Z
    .registers 13

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUpdatePackageTimes:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v2, v5, :cond_1f

    iget-wide v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesBpfTimeMs:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x1d4c0

    cmp-long v5, v5, v7

    if-gez v5, :cond_19

    return v4

    :cond_19
    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesBpfTimeMs:J

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUpdatePackageTimes:I

    goto :goto_2d

    :cond_1f
    iget-wide v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesBpfTimeMs:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x36ee80

    cmp-long v2, v5, v7

    if-gez v2, :cond_2b

    return v4

    :cond_2b
    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastUpdateAllPacagesBpfTimeMs:J

    :goto_2d
    const/4 v2, 0x0

    const-string v5, "/proc"

    invoke-static {v5, v2}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v2

    if-nez v2, :cond_37

    goto :goto_38

    :cond_37
    array-length v4, v2

    :goto_38
    const/4 v5, 0x0

    :goto_39
    if-ge v5, v4, :cond_6c

    aget v6, v2, v5

    if-gtz v6, :cond_40

    goto :goto_69

    :cond_40
    invoke-direct {p0, v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getProcCmdline(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getProcComm(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_69

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_69

    invoke-direct {p0, v8}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getCommHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_69

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_69

    iget-object v10, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommHashToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_69

    iget-object v10, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommHashToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_6c
    return v3
.end method


# virtual methods
.method public calculateMobileRadioDelta([Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->readSysAppNetworkStatsLocked([Ljava/lang/String;)Landroid/net/NetworkStatsSysApp;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastModemNetworkStatsSysApp:Landroid/net/NetworkStatsSysApp;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/NetworkStatsSysApp;->subtract(Landroid/net/NetworkStatsSysApp;Landroid/net/NetworkStatsSysApp;Landroid/net/NetworkStatsSysApp;)Landroid/net/NetworkStatsSysApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mMobileDelta:Landroid/net/NetworkStatsSysApp;

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastModemNetworkStatsSysApp:Landroid/net/NetworkStatsSysApp;

    :cond_11
    return-void
.end method

.method public calculateWifiDelta([Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->readSysAppNetworkStatsLocked([Ljava/lang/String;)Landroid/net/NetworkStatsSysApp;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastWifiNetworkStatsSysApp:Landroid/net/NetworkStatsSysApp;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/NetworkStatsSysApp;->subtract(Landroid/net/NetworkStatsSysApp;Landroid/net/NetworkStatsSysApp;Landroid/net/NetworkStatsSysApp;)Landroid/net/NetworkStatsSysApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mWifiDelta:Landroid/net/NetworkStatsSysApp;

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastWifiNetworkStatsSysApp:Landroid/net/NetworkStatsSysApp;

    :cond_11
    return-void
.end method

.method public clearAllPackagesLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommHashToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public distributeWifiTrafficToSysApp(JJJJ)V
    .registers 24

    move-object v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_55

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    iget-object v6, v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const-wide/16 v7, 0x3e8

    mul-long v9, v1, v7

    invoke-virtual {v6, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v9

    div-long/2addr v9, v7

    const-wide/16 v6, 0x0

    cmp-long v6, v9, v6

    if-lez v6, :cond_52

    iget-object v6, v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v6, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->setMark(J)V

    move-wide v6, v9

    move-wide v11, v9

    cmp-long v8, p3, p5

    if-lez v8, :cond_34

    mul-long v13, p5, v6

    div-long v6, v13, p3

    :cond_34
    cmp-long v8, p3, p7

    if-lez v8, :cond_3c

    mul-long v13, p7, v11

    div-long v11, v13, p3

    :cond_3c
    nop

    invoke-virtual {v5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_55
    return-void
.end method

.method public getUidPackageStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_9f

    const/4 v3, 0x1

    if-eq p4, v3, :cond_82

    const/4 v3, 0x2

    if-eq p4, v3, :cond_6b

    const/4 v3, 0x3

    if-eq p4, v3, :cond_10

    goto/16 :goto_c8

    :cond_10
    iget-boolean v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUseBpfStats:Z

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommHashToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommHashToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_c8

    :cond_27
    invoke-direct {p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->updateAllPackagesBpf(Lcom/android/internal/os/BatteryStatsImpl;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommHashToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommHashToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_c8

    :cond_40
    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_c8

    :cond_53
    invoke-direct {p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->updateAllPackages(Lcom/android/internal/os/BatteryStatsImpl;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    goto :goto_c8

    :cond_6b
    const-string v3, "android"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    const-string v3, "android.uid.system:1000"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    goto :goto_7e

    :cond_7c
    move-object v1, p2

    goto :goto_c8

    :cond_7e
    :goto_7e
    const-string/jumbo v1, "system_server"

    goto :goto_c8

    :cond_82
    invoke-direct {p0, p3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getProcCmdline(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c8

    invoke-direct {p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->updateAllPackages(Lcom/android/internal/os/BatteryStatsImpl;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c8

    return-object v4

    :cond_9e
    return-object v4

    :cond_9f
    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    goto :goto_c8

    :cond_b1
    invoke-direct {p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->updateAllPackages(Lcom/android/internal/os/BatteryStatsImpl;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    :cond_c8
    :goto_c8
    if-eqz v1, :cond_109

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d1

    goto :goto_109

    :cond_d1
    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    if-nez v0, :cond_108

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fd

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_108

    :cond_fd
    new-instance v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-direct {v3, p1, p0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl;Ljava/lang/String;)V

    move-object v0, v3

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_108
    :goto_108
    return-object v0

    :cond_109
    :goto_109
    return-object v0
.end method

.method public synthetic lambda$readKernelSysAppCpuActiveTimesLocked$1$UidAppBatteryStatsImpl(Lcom/android/internal/os/BatteryStatsImpl;ZLjava/lang/String;Ljava/lang/Long;)V
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    return-void
.end method

.method public synthetic lambda$readKernelSysAppCpuClusterTimesLocked$2$UidAppBatteryStatsImpl(Lcom/android/internal/os/BatteryStatsImpl;ZLjava/lang/String;[J)V
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-virtual {v1, p4, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->addCountLocked([JZ)V

    return-void
.end method

.method public synthetic lambda$readKernelSysAppCpuFreqTimesLocked$0$UidAppBatteryStatsImpl(Lcom/android/internal/os/BatteryStatsImpl;ZIZLjava/lang/String;[J)V
    .registers 22

    move-object/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v4, p0

    move-object/from16 v5, p5

    invoke-virtual {p0, v0, v5, v2, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    if-eqz p2, :cond_75

    iget-object v3, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v3, :cond_1b

    iget-object v3, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v3, v3

    if-eq v3, v1, :cond_24

    :cond_1b
    iget-object v3, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    new-array v3, v1, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v3, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :cond_24
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v1, :cond_72

    sget-object v7, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v7

    iget-object v8, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v8, v8, v6

    if-eqz v8, :cond_3b

    iget-object v8, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v8, v8, v6

    array-length v8, v8

    if-eq v8, v7, :cond_48

    :cond_3b
    iget-object v8, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v8, v8, v6

    invoke-static {v8}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->detachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v8, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v9, v7, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v9, v8, v6

    :cond_48
    iget-object v8, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v8, v8, v6

    const/4 v9, 0x0

    :goto_4d
    if-ge v9, v7, :cond_6d

    aget-object v10, v8, v9

    if-nez v10, :cond_5c

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v8, v9

    :cond_5c
    aget-object v10, v8, v9

    aget-wide v11, p6, v3

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    move/from16 v13, p4

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    :cond_6d
    move/from16 v13, p4

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_72
    move/from16 v13, p4

    goto :goto_77

    :cond_75
    move/from16 v13, p4

    :goto_77
    return-void
.end method

.method public synthetic lambda$readKernelSysAppCpuTimesLocked$3$UidAppBatteryStatsImpl(Lcom/android/internal/os/BatteryStatsImpl;ZLjava/lang/String;[J)V
    .registers 15

    const/4 v0, 0x0

    aget-wide v1, p4, v0

    const/4 v3, 0x1

    aget-wide v3, p4, v3

    const/4 v5, -0x1

    invoke-virtual {p0, p1, p3, v5, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v5, 0x0

    if-eqz v5, :cond_3c

    const-string v6, "  adding to package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": u="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v8, v1, v6

    invoke-static {v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v8, " s="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, v3, v6

    invoke-static {v6, v7, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UidAppBatteryStatsImpl"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    iget-object v6, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v1, v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    iget-object v6, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v6, v3, v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPkgCpuTime:Landroid/util/ArrayMap;

    add-long v7, v1, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p3, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public markPartialTimersAsEligible()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_12
    if-ltz v0, :cond_21

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-boolean v1, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_21
    goto :goto_59

    :cond_22
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_29
    if-ltz v0, :cond_39

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_39
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_45
    if-ge v2, v0, :cond_59

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-boolean v1, v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_59
    :goto_59
    return-void
.end method

.method public noteCameraTurnedOffLocked(Lcom/android/internal/os/BatteryStatsImpl;IJ)V
    .registers 8

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_11

    const/4 v0, -0x1

    const/4 v1, 0x2

    const-string v2, "com.miui.face"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteCameraTurnedOffLocked(J)V

    :cond_11
    return-void
.end method

.method public noteCameraTurnedOnLocked(Lcom/android/internal/os/BatteryStatsImpl;IJ)V
    .registers 8

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_11

    const/4 v0, -0x1

    const/4 v1, 0x2

    const-string v2, "com.miui.face"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteCameraTurnedOnLocked(J)V

    :cond_11
    return-void
.end method

.method public noteFlashlightTurnedOffLocked(Lcom/android/internal/os/BatteryStatsImpl;IJ)V
    .registers 8

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_11

    const/4 v0, -0x1

    const/4 v1, 0x2

    const-string v2, "com.android.systemui"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteFlashlightTurnedOffLocked(J)V

    :cond_11
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(Lcom/android/internal/os/BatteryStatsImpl;IJ)V
    .registers 8

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_11

    const/4 v0, -0x1

    const/4 v1, 0x2

    const-string v2, "com.android.systemui"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteFlashlightTurnedOnLocked(J)V

    :cond_11
    return-void
.end method

.method public noteResetCameraLocked(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .registers 7

    const-string v0, "com.miui.face"

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteResetCameraLocked(J)V

    :cond_d
    return-void
.end method

.method public noteResetFlashlightLocked(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .registers 7

    const-string v0, "com.android.systemui"

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteResetFlashlightLocked(J)V

    :cond_d
    return-void
.end method

.method public noteStartSensorLocked(Lcom/android/internal/os/BatteryStatsImpl;IIJLjava/lang/String;)V
    .registers 9

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_17

    if-eqz p6, :cond_17

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p6, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteStartSensor(IJ)V

    :cond_17
    return-void
.end method

.method public noteStartWakeLocked(Lcom/android/internal/os/BatteryStatsImpl;IIILjava/lang/String;J)V
    .registers 10

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_13

    if-nez p4, :cond_13

    if-lez p3, :cond_13

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, p5, p6, p7}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteStartWakeLocked(Ljava/lang/String;J)V

    :cond_13
    return-void
.end method

.method public noteStopSensorLocked(Lcom/android/internal/os/BatteryStatsImpl;IIJLjava/lang/String;)V
    .registers 10

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_37

    if-eqz p6, :cond_37

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "all"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2b

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-virtual {v2, p3, p4, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteStopSensor(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    goto :goto_37

    :cond_2c
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p6, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteStopSensor(IJ)V

    :cond_37
    :goto_37
    return-void
.end method

.method public noteStopWakeLocked(Lcom/android/internal/os/BatteryStatsImpl;IIILjava/lang/String;J)V
    .registers 10

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_13

    if-nez p4, :cond_13

    if-lez p3, :cond_13

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, p5, p6, p7}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteStopWakeLocked(Ljava/lang/String;J)V

    :cond_13
    return-void
.end method

.method public noteUidProcessStateLocked(II)V
    .registers 5

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p1, v0, :cond_1b

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->updateUidAppProcessStateLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public noteWifiScanStartedLocked(Lcom/android/internal/os/BatteryStatsImpl;ILjava/lang/String;J)V
    .registers 8

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_17

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteWifiScanStartedLocked(J)V

    :cond_17
    return-void
.end method

.method public noteWifiScanStoppedLocked(Lcom/android/internal/os/BatteryStatsImpl;ILjava/lang/String;J)V
    .registers 8

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUid:I

    if-ne p2, v0, :cond_17

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteWifiScanStoppedLocked(J)V

    :cond_17
    return-void
.end method

.method public readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V
    .registers 8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_27

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-direct {v3, p1, p0, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_27
    return-void
.end method

.method public readKernelSysAppCpuActiveTimesLocked(Lcom/android/internal/os/BatteryStatsImpl;Z)V
    .registers 9

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuActiveTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;

    new-instance v3, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$nV_uIEz1CL_xJl_Rps7h8qp76sE;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$nV_uIEz1CL_xJl_Rps7h8qp76sE;-><init>(Lcom/android/internal/os/UidAppBatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-ltz v4, :cond_39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading cpu active times took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UidAppBatteryStatsImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method public readKernelSysAppCpuClusterTimesLocked(Lcom/android/internal/os/BatteryStatsImpl;Z)V
    .registers 9

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuClusterTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;

    new-instance v3, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$2D-o3r6Y2suZ94p1t43bbDtNqeA;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$2D-o3r6Y2suZ94p1t43bbDtNqeA;-><init>(Lcom/android/internal/os/UidAppBatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-ltz v4, :cond_39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading cpu cluster times took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UidAppBatteryStatsImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method public readKernelSysAppCpuDataLocked(Lcom/android/internal/os/BatteryStatsImpl;ZZZZ)V
    .registers 8

    if-nez p5, :cond_1a

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuUserSysTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuFreqTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    if-eqz p4, :cond_19

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuActiveTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuClusterTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    :cond_19
    return-void

    :cond_1a
    invoke-virtual {p0, p1, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->readKernelSysAppCpuTimesLocked(Lcom/android/internal/os/BatteryStatsImpl;Z)V

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->readKernelSysAppCpuFreqTimesLocked(Lcom/android/internal/os/BatteryStatsImpl;ZZZ)V

    if-eqz p4, :cond_28

    invoke-virtual {p0, p1, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->readKernelSysAppCpuActiveTimesLocked(Lcom/android/internal/os/BatteryStatsImpl;Z)V

    invoke-virtual {p0, p1, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->readKernelSysAppCpuClusterTimesLocked(Lcom/android/internal/os/BatteryStatsImpl;Z)V

    :cond_28
    return-void
.end method

.method public readKernelSysAppCpuFreqTimesLocked(Lcom/android/internal/os/BatteryStatsImpl;ZZZ)V
    .registers 16

    sget-object v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v0

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuFreqTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;

    new-instance v10, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, v0

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$bpF8N1xaQXYGahkFoPEUlD6wzcU;-><init>(Lcom/android/internal/os/UidAppBatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl;ZIZ)V

    invoke-virtual {v9, v10}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v7

    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    if-ltz v3, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading cpu freq times took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UidAppBatteryStatsImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method public readKernelSysAppCpuTimesLocked(Lcom/android/internal/os/BatteryStatsImpl;Z)V
    .registers 9

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPkgCpuTime:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSysAppCpuUserSysTimeReader:Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;

    new-instance v3, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$p8-q92D1mpHtHjbUrFtBSCFw8TI;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/os/-$$Lambda$UidAppBatteryStatsImpl$p8-q92D1mpHtHjbUrFtBSCFw8TI;-><init>(Lcom/android/internal/os/UidAppBatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading cpu stats took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UidAppBatteryStatsImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void
.end method

.method public readSummaryFromParcel(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_1af

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1ae

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-direct {v3, p1, p0, v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v4, :cond_3e

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->initNetworkActivityLocked()V

    :cond_3e
    const/4 v4, 0x0

    :goto_3f
    const/16 v5, 0xa

    if-ge v4, v5, :cond_54

    iget-object v5, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v5, v5, v4

    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v5, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v5, v5, v4

    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_54
    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_5e
    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_ea

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v6, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v6, :cond_86

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v6

    if-ne v6, v4, :cond_7e

    goto :goto_86

    :cond_7e
    new-instance v5, Landroid/os/ParcelFormatException;

    const-string v6, "Incompatible cpu cluster arrangement"

    invoke-direct {v5, v6}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_86
    :goto_86
    new-array v6, v4, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v6, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x0

    :goto_8b
    if-ge v6, v4, :cond_e9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    sget-object v8, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v8, :cond_b9

    invoke-virtual {v8, v6}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v8

    if-ne v8, v7, :cond_a2

    goto :goto_b9

    :cond_a2
    new-instance v5, Landroid/os/ParcelFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File corrupt: too many speed bins "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b9
    :goto_b9
    iget-object v8, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v9, v7, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v9, v8, v6

    const/4 v8, 0x0

    :goto_c0
    if-ge v8, v7, :cond_e1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_de

    iget-object v9, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v6

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v11, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v9, v8

    iget-object v9, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v6

    aget-object v9, v9, v8

    invoke-virtual {v9, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_de
    add-int/lit8 v8, v8, 0x1

    goto :goto_c0

    :cond_e1
    goto :goto_e6

    :cond_e2
    iget-object v7, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v5, v7, v6

    :goto_e6
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    :cond_e9
    goto :goto_ec

    :cond_ea
    iput-object v5, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :goto_ec
    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v4, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-virtual {v4, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/16 v5, 0x65

    if-gt v4, v5, :cond_197

    const/4 v5, 0x0

    :goto_ff
    if-ge v5, v4, :cond_10b

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_ff

    :cond_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v6, 0x3e8

    if-gt v5, v6, :cond_180

    const/4 v7, 0x0

    :goto_114
    if-ge v7, v5, :cond_12b

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_128

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_128
    add-int/lit8 v7, v7, 0x1

    goto :goto_114

    :cond_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gt v5, v6, :cond_169

    const/16 v6, 0x14

    iput v6, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    const/4 v6, 0x0

    :goto_136
    if-ge v6, v5, :cond_14b

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mLoadedForegroundTime:J

    iput-wide v9, v8, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mForegroundTime:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_136

    :cond_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_158

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_165

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_165
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_169
    new-instance v6, Landroid/os/ParcelFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File corrupt: too many processes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_180
    new-instance v6, Landroid/os/ParcelFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File corrupt: too many sensors "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_197
    new-instance v5, Landroid/os/ParcelFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File corrupt: too many wake locks "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1ae
    return-void

    :cond_1af
    new-instance v1, Landroid/os/ParcelFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File corrupt: too many system packages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public releaseMobileRadioDelta()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mMobileDelta:Landroid/net/NetworkStatsSysApp;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mMobileDelta:Landroid/net/NetworkStatsSysApp;

    :cond_7
    return-void
.end method

.method public releaseWifiDelta()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mWifiDelta:Landroid/net/NetworkStatsSysApp;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mWifiDelta:Landroid/net/NetworkStatsSysApp;

    :cond_7
    return-void
.end method

.method public resetAllStatsLocked(JJ)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->reset(JJ)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-virtual {v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->detachFromTimeBase()V

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_30
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mCommHashToCmdline:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public updateClusterSpeedTimes(Lcom/android/internal/os/BatteryStatsImpl;[[JZ)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_9
    array-length v6, v2

    if-ge v5, v6, :cond_22

    aget-object v6, v2, v5

    if-eqz v6, :cond_1f

    aget-object v6, v2, v5

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    :goto_15
    if-ltz v6, :cond_1f

    aget-object v7, v2, v5

    aget-wide v7, v7, v6

    add-long/2addr v3, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_22
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_c3

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPkgCpuTime:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2f
    if-ge v6, v5, :cond_c0

    iget-object v7, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPkgCpuTime:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v0, v1, v7, v9, v8}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v7

    if-nez v7, :cond_45

    move/from16 v15, p3

    goto/16 :goto_b6

    :cond_45
    iget-object v8, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPkgCpuTime:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v10}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v10

    iget-object v11, v7, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v11, :cond_60

    iget-object v11, v7, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v11, v11

    if-eq v11, v10, :cond_64

    :cond_60
    new-array v11, v10, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v11, v7, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :cond_64
    const/4 v11, 0x0

    :goto_65
    array-length v12, v2

    if-ge v11, v12, :cond_b4

    aget-object v12, v2, v11

    array-length v12, v12

    iget-object v13, v7, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v13, v13, v11

    if-eqz v13, :cond_78

    iget-object v13, v7, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v13, v13, v11

    array-length v13, v13

    if-eq v12, v13, :cond_7e

    :cond_78
    iget-object v13, v7, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v14, v12, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v14, v13, v11

    :cond_7e
    iget-object v13, v7, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v13, v13, v11

    const/4 v14, 0x0

    :goto_83
    if-ge v14, v12, :cond_a9

    aget-object v15, v13, v14

    if-nez v15, :cond_92

    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v15, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v15, v13, v14

    :cond_92
    aget-object v0, v13, v14

    aget-object v15, v2, v11

    aget-wide v15, v15, v14

    mul-long/2addr v15, v8

    div-long v1, v15, v3

    move/from16 v15, p3

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_83

    :cond_a9
    move/from16 v15, p3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_65

    :cond_b4
    move/from16 v15, p3

    :goto_b6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_2f

    :cond_c0
    move/from16 v15, p3

    goto :goto_c5

    :cond_c3
    move/from16 v15, p3

    :goto_c5
    return-void
.end method

.method public updateMobileRadioForPackage(Lcom/android/internal/os/BatteryStatsImpl;Landroid/telephony/ModemActivityInfo;JJJ)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mMobileDelta:Landroid/net/NetworkStatsSysApp;

    if-eqz v2, :cond_ff

    new-instance v2, Landroid/net/NetworkStatsSysApp$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStatsSysApp$Entry;-><init>()V

    iget-object v3, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mMobileDelta:Landroid/net/NetworkStatsSysApp;

    invoke-virtual {v3}, Landroid/net/NetworkStatsSysApp;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_14
    const/4 v5, 0x3

    const/4 v6, -0x1

    const-wide/16 v7, 0x0

    if-ge v4, v3, :cond_4a

    iget-object v9, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mMobileDelta:Landroid/net/NetworkStatsSysApp;

    invoke-virtual {v9, v4, v2}, Landroid/net/NetworkStatsSysApp;->getValues(ILandroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp$Entry;

    move-result-object v2

    iget-wide v9, v2, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    cmp-long v9, v9, v7

    if-nez v9, :cond_2d

    iget-wide v9, v2, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    cmp-long v7, v9, v7

    if-nez v7, :cond_2d

    goto :goto_47

    :cond_2d
    iget-object v7, v2, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v6, v5}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v5

    if-nez v5, :cond_36

    goto :goto_47

    :cond_36
    const/4 v9, 0x0

    iget-wide v10, v2, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-wide v12, v2, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteNetworkActivityLocked(IJJ)V

    const/4 v9, 0x1

    iget-wide v10, v2, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iget-wide v12, v2, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteNetworkActivityLocked(IJJ)V

    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_4a
    add-long v9, p5, p7

    cmp-long v4, v9, v7

    if-lez v4, :cond_f8

    const/4 v4, 0x0

    move-wide v11, v9

    move-wide/from16 v9, p3

    :goto_54
    if-ge v4, v3, :cond_fb

    iget-object v13, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mMobileDelta:Landroid/net/NetworkStatsSysApp;

    invoke-virtual {v13, v4, v2}, Landroid/net/NetworkStatsSysApp;->getValues(ILandroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp$Entry;

    move-result-object v2

    iget-wide v13, v2, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    cmp-long v13, v13, v7

    if-nez v13, :cond_69

    iget-wide v13, v2, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    cmp-long v13, v13, v7

    if-nez v13, :cond_69

    goto :goto_72

    :cond_69
    iget-object v13, v2, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v13, v6, v5}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v13

    if-nez v13, :cond_76

    nop

    :goto_72
    move-object/from16 v18, v2

    goto/16 :goto_ec

    :cond_76
    iget-wide v14, v2, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iget-wide v5, v2, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    add-long/2addr v14, v5

    mul-long v5, v9, v14

    div-long/2addr v5, v11

    invoke-virtual {v13, v5, v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteMobileRadioActiveTimeLocked(J)V

    sub-long/2addr v9, v5

    sub-long/2addr v11, v14

    if-eqz p2, :cond_e8

    nop

    invoke-virtual {v13}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v16

    cmp-long v17, p5, v7

    if-lez v17, :cond_a8

    move-wide/from16 p3, v5

    iget-wide v5, v2, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_aa

    iget-wide v5, v2, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    div-long v5, v5, p5

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_aa

    :cond_a8
    move-wide/from16 p3, v5

    :cond_aa
    :goto_aa
    const-wide/16 v5, 0x0

    cmp-long v7, p7, v5

    if-lez v7, :cond_e5

    iget-wide v7, v2, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_e5

    const/4 v7, 0x0

    :goto_b7
    const/4 v8, 0x5

    if-ge v7, v8, :cond_e2

    iget-wide v5, v2, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ModemActivityInfo;->getTransmitPowerInfo()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v8}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v8

    move-object/from16 v18, v2

    int-to-long v1, v8

    mul-long/2addr v5, v1

    div-long v5, v5, p7

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    const-wide/16 v5, 0x0

    goto :goto_b7

    :cond_e2
    move-object/from16 v18, v2

    goto :goto_ec

    :cond_e5
    move-object/from16 v18, v2

    goto :goto_ec

    :cond_e8
    move-object/from16 v18, v2

    move-wide/from16 p3, v5

    :goto_ec
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    const/4 v5, 0x3

    const/4 v6, -0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_54

    :cond_f8
    move-wide v11, v9

    move-wide/from16 v9, p3

    :cond_fb
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mMobileDelta:Landroid/net/NetworkStatsSysApp;

    goto :goto_101

    :cond_ff
    move-wide/from16 v9, p3

    :goto_101
    return-void
.end method

.method public updateOnBatteryBgTimeBase(JJ)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->updateOnBatteryBgTimeBase(JJ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public updateOnBatteryScreenOffBgTimeBase(JJ)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->updateOnBatteryScreenOffBgTimeBase(JJ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public updateWifiForPackage(Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 16

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mWifiDelta:Landroid/net/NetworkStatsSysApp;

    if-eqz v0, :cond_56

    new-instance v0, Landroid/net/NetworkStatsSysApp$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsSysApp$Entry;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mWifiDelta:Landroid/net/NetworkStatsSysApp;

    invoke-virtual {v1}, Landroid/net/NetworkStatsSysApp;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_53

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mWifiDelta:Landroid/net/NetworkStatsSysApp;

    invoke-virtual {v3, v2, v0}, Landroid/net/NetworkStatsSysApp;->getValues(ILandroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp$Entry;

    move-result-object v0

    iget-wide v3, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    iget-wide v3, v0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    goto :goto_50

    :cond_27
    iget-object v3, v0, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v7, 0x3

    invoke-virtual {p0, p1, v3, v4, v7}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->getUidPackageStatsLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;II)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-result-object v3

    if-nez v3, :cond_32

    goto :goto_50

    :cond_32
    iget-wide v7, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_41

    const/4 v9, 0x2

    iget-wide v10, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteNetworkActivityLocked(IJJ)V

    :cond_41
    iget-wide v7, v0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_50

    const/4 v9, 0x3

    iget-wide v10, v0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->noteNetworkActivityLocked(IJJ)V

    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mWifiDelta:Landroid/net/NetworkStatsSysApp;

    :cond_56
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v11, v1

    :goto_11
    if-ge v11, v10, :cond_177

    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_46

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v1, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_49

    :cond_46
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_49
    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v1, :cond_51

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_74

    :cond_51
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_55
    const/16 v4, 0xa

    if-ge v1, v4, :cond_6a

    iget-object v4, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v4, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_6a
    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_74
    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v1, :cond_b7

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v1, v1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v4, v1

    move v5, v2

    :goto_8f
    if-ge v5, v4, :cond_ba

    aget-object v6, v1, v5

    if-eqz v6, :cond_b1

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    array-length v13, v6

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    array-length v13, v6

    move v14, v2

    :goto_9e
    if-ge v14, v13, :cond_b4

    aget-object v15, v6, v14

    if-eqz v15, :cond_ab

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_ae

    :cond_ab
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_ae
    add-int/lit8 v14, v14, 0x1

    goto :goto_9e

    :cond_b1
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_b4
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    :cond_b7
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_ba
    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-virtual {v1, v7}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    iget-object v1, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    :goto_d2
    if-ge v5, v4, :cond_f6

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    iget-object v13, v6, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v13, :cond_f0

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v6, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_f3

    :cond_f0
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f3
    add-int/lit8 v5, v5, 0x1

    goto :goto_d2

    :cond_f6
    iget-object v5, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_100
    if-ge v6, v5, :cond_126

    iget-object v13, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v13, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    iget-object v14, v13, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v14, :cond_120

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v14, v13, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v14, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_123

    :cond_120
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_123
    add-int/lit8 v6, v6, 0x1

    goto :goto_100

    :cond_126
    iget-object v6, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x0

    :goto_130
    if-ge v13, v6, :cond_14f

    iget-object v14, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v14, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    iget-wide v2, v14, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mForegroundTime:J

    invoke-virtual {v7, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_130

    :cond_14f
    iget-object v2, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v2, :cond_15d

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_161

    :cond_15d
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_161
    iget-object v2, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v2, :cond_16f

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, v12, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_173

    :cond_16f
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_173
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    :cond_177
    return-void
.end method

.method public writeToParcelLocked(Landroid/os/Parcel;JJ)V
    .registers 15

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_29

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mUidPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;

    move-object v3, v2

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->writeToParcelLocked(Landroid/os/Parcel;JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_29
    return-void
.end method
