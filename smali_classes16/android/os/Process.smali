.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final AUDIOSERVER_UID:I = 0x411

.field public static final BLUETOOTH_UID:I = 0x3ea

.field public static final CAMERASERVER_UID:I = 0x417

.field public static final CLAT_UID:I = 0x405

.field public static final CREDSTORE_UID:I = 0x434

.field public static final DNS_TETHER_UID:I = 0x41c

.field public static final DRM_UID:I = 0x3fb

.field public static final EXT_DATA_RW_GID:I = 0x436

.field public static final EXT_OBB_RW_GID:I = 0x437

.field public static final FIRST_APPLICATION_CACHE_GID:I = 0x4e20

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final FIRST_APP_ZYGOTE_ISOLATED_UID:I = 0x15f90

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final FSVERITY_CERT_UID:I = 0x433

.field public static final INCIDENTD_UID:I = 0x42b

.field public static final INET_GID:I = 0xbbb

.field public static final INVALID_UID:I = -0x1

.field public static final KEYSTORE_UID:I = 0x3f9

.field public static final LAST_APPLICATION_CACHE_GID:I = 0x752f

.field public static final LAST_APPLICATION_UID:I = 0x4e1f

.field public static final LAST_APP_ZYGOTE_ISOLATED_UID:I = 0x182b7

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NETWORK_STACK_UID:I = 0x431

.field public static final NFC_UID:I = 0x403

.field public static final NOBODY_UID:I = 0x270f

.field public static final NUM_UIDS_PER_APP_ZYGOTE:I = 0x64

.field public static final OTA_UPDATE_UID:I = 0x425

.field public static final PACKAGE_INFO_GID:I = 0x408

.field public static final PHONE_UID:I = 0x3e9

.field private static final PIDFD_SUPPORTED:I = 0x1

.field private static final PIDFD_UNKNOWN:I = 0x0

.field private static final PIDFD_UNSUPPORTED:I = 0x2

.field public static final PROC_CHAR:I = 0x800

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_NEWLINE_TERM:I = 0xa

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final ROOT_UID:I = 0x0

.field public static final SCHED_BATCH:I = 0x3

.field public static final SCHED_FIFO:I = 0x1

.field public static final SCHED_IDLE:I = 0x5

.field public static final SCHED_OTHER:I = 0x0

.field public static final SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final SCHED_RR:I = 0x2

.field public static final SDCARD_RW_GID:I = 0x3f7

.field public static final SE_UID:I = 0x42c

.field public static final SHARED_RELRO_UID:I = 0x40d

.field public static final SHARED_USER_GID:I = 0x270d

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final STATSD_UID:I = 0x42a

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final THREAD_GROUP_BACKGROUND:I = 0x0

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field private static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_RESTRICTED:I = 0x7

.field public static final THREAD_GROUP_RT_APP:I = 0x6

.field public static final THREAD_GROUP_SYSTEM:I = 0x2

.field public static final THREAD_GROUP_TOP_APP:I = 0x5

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final THREAD_PRIORITY_VIDEO:I = -0xa

.field public static final VPN_UID:I = 0x3f8

.field public static final WEBVIEW_ZYGOTE_UID:I = 0x41d

.field public static final WIFI_UID:I = 0x3f2

.field public static final ZYGOTE_POLICY_FLAG_BATCH_LAUNCH:I = 0x2

.field public static final ZYGOTE_POLICY_FLAG_EMPTY:I = 0x0

.field public static final ZYGOTE_POLICY_FLAG_LATENCY_SENSITIVE:I = 0x1

.field public static final ZYGOTE_POLICY_FLAG_SYSTEM_PROCESS:I = 0x4

.field public static final ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

.field private static sPidFdSupported:I

.field private static sStartElapsedRealtime:J

.field private static sStartUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Landroid/os/Process;->sPidFdSupported:I

    new-instance v0, Landroid/os/ZygoteProcess;

    invoke-direct {v0}, Landroid/os/ZygoteProcess;-><init>()V

    sput-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native enableFreezer(Z)V
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getExclusiveCores()[I
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final getParentPid(I)I
    .registers 6

    const-string v0, "PPid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native getPss(I)J
.end method

.method public static final native getRss(I)[J
.end method

.method public static final getStartElapsedRealtime()J
    .registers 2

    sget-wide v0, Landroid/os/Process;->sStartElapsedRealtime:J

    return-wide v0
.end method

.method public static final getStartUptimeMillis()J
    .registers 2

    sget-wide v0, Landroid/os/Process;->sStartUptimeMillis:J

    return-wide v0
.end method

.method public static final getThreadGroupLeader(I)I
    .registers 6

    const-string v0, "Tgid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getTotalMemory()J
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .registers 6

    const-string v0, "Uid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final is64Bit()Z
    .registers 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static isApplicationUid(I)Z
    .registers 2

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method public static isCoreUid(I)Z
    .registers 2

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    return v0
.end method

.method public static final isIsolated()Z
    .registers 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0
.end method

.method public static final isIsolated(I)Z
    .registers 2

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const v0, 0x182b8

    if-lt p0, v0, :cond_e

    const v0, 0x1869f

    if-le p0, v0, :cond_18

    :cond_e
    const v0, 0x15f90

    if-lt p0, v0, :cond_1a

    const v0, 0x182b7

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static final isThreadInProcess(II)Z
    .registers 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/task/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v2, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_35
    .catchall {:try_start_5 .. :try_end_24} :catchall_30

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :cond_2b
    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :catchall_30
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :catch_35
    move-exception v2

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1
.end method

.method public static final killProcess(I)V
    .registers 2

    invoke-static {p0}, Landroid/os/ProcessInjector;->reportKillProcessEvent(I)V

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    return-void
.end method

.method public static final native killProcessGroup(II)I
.end method

.method public static final killProcessQuiet(I)V
    .registers 2

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    return-void
.end method

.method public static final myPid()I
    .registers 1

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final myPpid()I
    .registers 1

    invoke-static {}, Landroid/system/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static final myTid()I
    .registers 1

    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final myUid()I
    .registers 1

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static myUserHandle()Landroid/os/UserHandle;
    .registers 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static native nativePidFdOpen(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native removeAllProcessGroups()V
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native setArgV0(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setCgroupProcsProcessGroup(IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setProcessFrozen(IIZ)V
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final setStartTimes(JJ)V
    .registers 4

    sput-wide p0, Landroid/os/Process;->sStartElapsedRealtime:J

    sput-wide p2, Landroid/os/Process;->sStartUptimeMillis:J

    return-void
.end method

.method public static final native setSwappiness(IZ)Z
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadGroupAndCpuset(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move-object/from16 v22, p21

    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    invoke-virtual/range {v0 .. v22}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v17, p14

    move-object/from16 v22, p15

    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    move-result-object v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v0 .. v22}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static final supportsProcesses()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static waitForProcessDeath(II)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    sget v1, Landroid/os/Process;->sPidFdSupported:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3e

    const/4 v1, -0x1

    :try_start_9
    invoke-static {p0, v4}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v5

    move v1, v5

    sput v3, Landroid/os/Process;->sPidFdSupported:I
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_10} :catch_1e
    .catchall {:try_start_9 .. :try_end_10} :catchall_1c

    if-ltz v1, :cond_3e

    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    :goto_17
    move-object v0, v5

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    goto :goto_3e

    :catchall_1c
    move-exception v2

    goto :goto_32

    :catch_1e
    move-exception v5

    :try_start_1f
    iget v6, v5, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v6, v7, :cond_27

    move v6, v3

    goto :goto_28

    :cond_27
    move v6, v2

    :goto_28
    sput v6, Landroid/os/Process;->sPidFdSupported:I
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_1c

    if-ltz v1, :cond_3e

    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_17

    :goto_32
    if-ltz v1, :cond_3d

    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    move-object v0, v3

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    :cond_3d
    throw v2

    :cond_3e
    :goto_3e
    sget v1, Landroid/os/Process;->sPidFdSupported:I

    if-ne v1, v2, :cond_44

    move v1, v3

    goto :goto_45

    :cond_44
    move v1, v4

    :goto_45
    if-nez v1, :cond_af

    if-nez v0, :cond_5f

    :try_start_49
    invoke-static {p0, v4}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v2

    if-ltz v2, :cond_59

    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    move-object v0, v5

    invoke-virtual {v0, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    goto :goto_5f

    :cond_59
    const/4 v1, 0x1

    goto :goto_5f

    :catchall_5b
    move-exception v2

    goto :goto_a6

    :catch_5d
    move-exception v2

    goto :goto_93

    :cond_5f
    :goto_5f
    if-eqz v0, :cond_ac

    new-array v2, v3, [Landroid/system/StructPollfd;

    new-instance v5, Landroid/system/StructPollfd;

    invoke-direct {v5}, Landroid/system/StructPollfd;-><init>()V

    aput-object v5, v2, v4

    aget-object v5, v2, v4

    iput-object v0, v5, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v5, v2, v4

    sget v6, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v6, v6

    iput-short v6, v5, Landroid/system/StructPollfd;->events:S

    aget-object v5, v2, v4

    iput-short v4, v5, Landroid/system/StructPollfd;->revents:S

    aget-object v5, v2, v4

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    invoke-static {v2, p1}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v5
    :try_end_82
    .catch Landroid/system/ErrnoException; {:try_start_49 .. :try_end_82} :catch_5d
    .catchall {:try_start_49 .. :try_end_82} :catchall_5b

    if-lez v5, :cond_8a

    if-eqz v0, :cond_89

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    :cond_89
    return-void

    :cond_8a
    if-eqz v5, :cond_8d

    goto :goto_ac

    :cond_8d
    :try_start_8d
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v6
    :try_end_93
    .catch Landroid/system/ErrnoException; {:try_start_8d .. :try_end_93} :catch_5d
    .catchall {:try_start_8d .. :try_end_93} :catchall_5b

    :goto_93
    :try_start_93
    iget v5, v2, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EINTR:I
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_5b

    if-eq v5, v6, :cond_a0

    const/4 v1, 0x1

    if-eqz v0, :cond_af

    :goto_9c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_af

    :cond_a0
    :try_start_a0
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_5b

    :goto_a6
    if-eqz v0, :cond_ab

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    :cond_ab
    throw v2

    :cond_ac
    :goto_ac
    if-eqz v0, :cond_af

    goto :goto_9c

    :cond_af
    :goto_af
    if-eqz v1, :cond_d8

    if-gez p1, :cond_b4

    goto :goto_b5

    :cond_b4
    move v3, v4

    :goto_b5
    move v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    int-to-long v7, p1

    add-long/2addr v7, v5

    :goto_bc
    if-nez v2, :cond_c2

    cmp-long v3, v5, v7

    if-gez v3, :cond_d8

    :cond_c2
    :try_start_c2
    invoke-static {p0, v4}, Landroid/system/Os;->kill(II)V
    :try_end_c5
    .catch Landroid/system/ErrnoException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_ce

    :catch_c6
    move-exception v3

    iget v9, v3, Landroid/system/ErrnoException;->errno:I

    sget v10, Landroid/system/OsConstants;->ESRCH:I

    if-ne v9, v10, :cond_ce

    return-void

    :cond_ce
    :goto_ce
    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_bc

    :cond_d8
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2
.end method
