.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sSysClassWakeupDir:Ljava/lang/String; = "/sys/class/wakeup"

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private mKernelWakelockBuffer:[B

.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;

.field private mSuspendControlService:Landroid/system/suspend/ISuspendControlService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    :array_14
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_24
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/ISuspendControlService;

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    return-void
.end method

.method private getWakelockStatsFromSystemSuspend(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/ISuspendControlService;

    const/4 v2, 0x0

    const-string v3, "KernelWakelockReader"

    if-nez v1, :cond_1d

    :try_start_8
    const-string/jumbo v1, "suspend_control"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/system/suspend/ISuspendControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/suspend/ISuspendControlService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/ISuspendControlService;
    :try_end_15
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    move-exception v1

    const-string v4, "Required service suspend_control not available"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/ISuspendControlService;

    invoke-interface {v1}, Landroid/system/suspend/ISuspendControlService;->getWakeLockStats()[Landroid/system/suspend/WakeLockInfo;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/KernelWakelockReader;->updateWakelockStats([Landroid/system/suspend/WakeLockInfo;Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_27} :catch_29

    nop

    return-object p1

    :catch_29
    move-exception v1

    const-string v4, "Failed to obtain wakelock stats from ISuspendControlService"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    const/4 v0, 0x0

    move v12, v0

    :goto_a
    const/16 v13, 0xa

    if-ge v12, v10, :cond_19

    aget-byte v0, v9, v12

    if-eq v0, v13, :cond_19

    aget-byte v0, v9, v12

    if-eqz v0, :cond_19

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v0, v12, 0x1

    move v2, v0

    monitor-enter p0

    move v14, v0

    :goto_1e
    if-ge v2, v10, :cond_ea

    move v0, v14

    move v15, v0

    :goto_22
    if-ge v15, v10, :cond_2f

    :try_start_24
    aget-byte v0, v9, v15

    if-eq v0, v13, :cond_2f

    aget-byte v0, v9, v15

    if-eqz v0, :cond_2f

    add-int/lit8 v15, v15, 0x1

    goto :goto_22

    :cond_2f
    add-int/lit8 v0, v10, -0x1

    if-le v15, v0, :cond_36

    move v2, v15

    goto/16 :goto_ea

    :cond_36
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    move-object/from16 v17, v0

    move v0, v14

    :goto_3f
    if-ge v0, v15, :cond_4e

    aget-byte v2, v9, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4b

    const/16 v2, 0x3f

    aput-byte v2, v9, v0

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_4e
    nop

    if-eqz p3, :cond_55

    sget-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    move-object v5, v0

    goto :goto_58

    :cond_55
    sget-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    move-object v5, v0

    :goto_58
    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v3, v14

    move v4, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    move v2, v0

    const/4 v0, 0x0

    aget-object v0, v16, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    const/4 v0, 0x1

    aget-wide v4, v17, v0

    long-to-int v4, v4

    const-wide/16 v5, 0x3e8

    const/4 v0, 0x2

    if-eqz p3, :cond_7b

    aget-wide v7, v17, v0

    mul-long/2addr v7, v5

    goto :goto_82

    :cond_7b
    aget-wide v7, v17, v0

    const-wide/16 v18, 0x1f4

    add-long v7, v7, v18

    div-long/2addr v7, v5

    :goto_82
    if-eqz v2, :cond_bb

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bb

    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    new-instance v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct {v0, v4, v7, v8, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {v11, v3, v0}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e3

    :cond_9b
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v6, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v5, v6, :cond_b2

    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_ba

    :cond_b2
    iput v4, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iput-wide v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_ba
    .catchall {:try_start_24 .. :try_end_ba} :catchall_f0

    :goto_ba
    goto :goto_e3

    :cond_bb
    if-nez v2, :cond_e3

    :try_start_bd
    const-string v0, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse proc line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    sub-int v13, v15, v14

    invoke-direct {v6, v9, v14, v13}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_da} :catch_db
    .catchall {:try_start_bd .. :try_end_da} :catchall_f0

    goto :goto_e3

    :catch_db
    move-exception v0

    :try_start_dc
    const-string v5, "KernelWakelockReader"

    const-string v6, "Failed to parse proc line!"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_f0

    :cond_e3
    :goto_e3
    add-int/lit8 v14, v15, 0x1

    move v2, v15

    const/16 v13, 0xa

    goto/16 :goto_1e

    :cond_ea
    :goto_ea
    :try_start_ea
    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_ec

    return-object v11

    :catchall_ec
    move-exception v0

    move v15, v2

    :goto_ee
    :try_start_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_f0

    throw v0

    :catchall_f0
    move-exception v0

    goto :goto_ee
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 15

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/wakeup"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KernelWakelockReader"

    if-eqz v0, :cond_24

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->updateVersion(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v3

    if-nez v3, :cond_1f

    const-string v3, "Failed to get wakelock stats from SystemSuspend"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->removeOldStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v1

    return-object v1

    :cond_24
    iget-object v3, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v6

    :try_start_33
    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/proc/wakelocks"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3a} :catch_42
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_3f
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3c

    const/4 v8, 0x0

    goto :goto_4d

    :catchall_3c
    move-exception v1

    goto/16 :goto_e2

    :catch_3f
    move-exception v7

    goto/16 :goto_d8

    :catch_42
    move-exception v7

    :try_start_43
    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/d/wakeup_sources"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_4a} :catch_cc
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_3f
    .catchall {:try_start_43 .. :try_end_4a} :catchall_3c

    const/4 v9, 0x1

    move-object v7, v8

    move v8, v9

    :goto_4d
    :try_start_4d
    iget-object v9, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    iget-object v10, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v10, v10

    sub-int/2addr v10, v3

    invoke-virtual {v7, v9, v3, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    move v10, v9

    if-lez v9, :cond_5c

    add-int/2addr v3, v10

    goto :goto_4d

    :cond_5c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5f} :catch_3f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_3c

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    const-wide/16 v11, 0x64

    cmp-long v1, v9, v11

    if-lez v1, :cond_88

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading wakelock stats took "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    if-lez v3, :cond_b4

    iget-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v1, v1

    if-lt v3, v1, :cond_a6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kernel wake locks exceeded mKernelWakelockBuffer size "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    const/4 v1, 0x0

    :goto_a7
    if-ge v1, v3, :cond_b4

    iget-object v7, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    aget-byte v7, v7, v1

    if-nez v7, :cond_b1

    move v3, v1

    goto :goto_b4

    :cond_b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    :cond_b4
    :goto_b4
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->updateVersion(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v1

    if-nez v1, :cond_c2

    const-string v1, "Failed to get Native wakelock stats from SystemSuspend"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    iget-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    invoke-virtual {p0, v1, v3, v8, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->removeOldStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v1

    return-object v1

    :catch_cc
    move-exception v8

    :try_start_cd
    const-string/jumbo v9, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v2, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d3} :catch_3f
    .catchall {:try_start_cd .. :try_end_d3} :catchall_3c

    nop

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_d8
    :try_start_d8
    const-string v8, "failed to read kernel wakelocks"

    invoke-static {v2, v8, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dd
    .catchall {:try_start_d8 .. :try_end_dd} :catchall_3c

    nop

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_e2
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method public removeOldStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 5

    invoke-virtual {p1}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v1, v1, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v1, v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_1e
    return-object p1
.end method

.method public updateVersion(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 3

    sget v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v0, p1, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    return-object p1
.end method

.method public updateWakelockStats([Landroid/system/suspend/WakeLockInfo;Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 13

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3c

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/system/suspend/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x3e8

    if-nez v3, :cond_23

    iget-object v3, v2, Landroid/system/suspend/WakeLockInfo;->name:Ljava/lang/String;

    new-instance v6, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget-wide v7, v2, Landroid/system/suspend/WakeLockInfo;->activeCount:J

    long-to-int v7, v7

    iget-wide v8, v2, Landroid/system/suspend/WakeLockInfo;->totalTime:J

    mul-long/2addr v8, v4

    sget v4, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {p2, v3, v6}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_23
    iget-object v3, v2, Landroid/system/suspend/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget-wide v6, v2, Landroid/system/suspend/WakeLockInfo;->activeCount:J

    long-to-int v6, v6

    iput v6, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget-wide v6, v2, Landroid/system/suspend/WakeLockInfo;->totalTime:J

    mul-long/2addr v6, v4

    iput-wide v6, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    sget v4, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v4, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3c
    return-object p2
.end method
