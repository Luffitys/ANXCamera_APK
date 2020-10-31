.class public Lcom/android/internal/os/KernelWakelockReaderRewrite;
.super Ljava/lang/Object;
.source "KernelWakelockReaderRewrite.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field br_flag:Z

.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->WAKEUP_SOURCES_FORMAT:[I

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

    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksName:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksData:[J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    return-void
.end method

.method private readInfoCheck([BIIJ)I
    .registers 11

    if-ltz p3, :cond_6

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_9

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    const-string v3, "KernelWakelockReader"

    if-lez v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading wakelock stats took "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    array-length v2, p1

    if-lt p2, v2, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kernel wake locks exceeded buffer size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    if-ge v2, p2, :cond_5b

    aget-byte v3, p1, v2

    if-nez v3, :cond_58

    move p2, v2

    goto :goto_5b

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_5b
    :goto_5b
    return p2
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 26

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

    move v3, v0

    monitor-enter p0

    :try_start_1e
    sget v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    sput v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_12c

    move v15, v3

    :goto_25
    if-ge v2, v10, :cond_105

    move v0, v15

    move v8, v0

    :goto_29
    if-ge v8, v10, :cond_3b

    :try_start_2b
    aget-byte v0, v9, v8

    if-eq v0, v13, :cond_3b

    aget-byte v0, v9, v8
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_36

    if-eqz v0, :cond_3b

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :catchall_36
    move-exception v0

    move v2, v8

    move v3, v15

    goto/16 :goto_12d

    :cond_3b
    add-int/lit8 v0, v10, -0x1

    if-le v8, v0, :cond_42

    move v2, v8

    goto/16 :goto_105

    :cond_42
    :try_start_42
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksName:[Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksData:[J
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_fe

    move-object/from16 v17, v0

    move v0, v15

    :goto_4b
    if-ge v0, v8, :cond_5a

    :try_start_4d
    aget-byte v2, v9, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_57

    const/16 v2, 0x3f

    aput-byte v2, v9, v0

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_5a
    nop

    if-eqz p3, :cond_61

    sget-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->WAKEUP_SOURCES_FORMAT:[I
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_36

    move-object v5, v0

    goto :goto_64

    :cond_61
    :try_start_61
    sget-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->PROC_WAKELOCKS_FORMAT:[I
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_fe

    move-object v5, v0

    :goto_64
    const/4 v0, 0x0

    move-object/from16 v2, p1

    move v3, v15

    move v4, v8

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move/from16 v18, v8

    move-object v8, v0

    :try_start_70
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    move v2, v0

    const/4 v0, 0x0

    aget-object v0, v16, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    aget-wide v4, v17, v14

    long-to-int v4, v4

    const-wide/16 v5, 0x3e8

    const/4 v0, 0x2

    if-eqz p3, :cond_89

    aget-wide v7, v17, v0

    mul-long/2addr v7, v5

    goto :goto_90

    :cond_89
    aget-wide v7, v17, v0

    const-wide/16 v19, 0x1f4

    add-long v7, v7, v19

    div-long/2addr v7, v5

    :goto_90
    if-eqz v2, :cond_c9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c9

    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    new-instance v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v5, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    invoke-direct {v0, v4, v7, v8, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {v11, v3, v0}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f1

    :cond_a9
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v6, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    if-ne v5, v6, :cond_c0

    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_c8

    :cond_c0
    iput v4, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iput-wide v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    sget v5, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_c8
    .catchall {:try_start_70 .. :try_end_c8} :catchall_f9

    :goto_c8
    goto :goto_f1

    :cond_c9
    if-nez v2, :cond_f1

    :try_start_cb
    const-string v0, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse proc line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    sub-int v13, v18, v15

    invoke-direct {v6, v9, v15, v13}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_e8} :catch_e9
    .catchall {:try_start_cb .. :try_end_e8} :catchall_f9

    goto :goto_f1

    :catch_e9
    move-exception v0

    :try_start_ea
    const-string v5, "KernelWakelockReader"

    const-string v6, "Failed to parse proc line!"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_ea .. :try_end_f1} :catchall_f9

    :cond_f1
    :goto_f1
    add-int/lit8 v15, v18, 0x1

    move/from16 v2, v18

    const/16 v13, 0xa

    goto/16 :goto_25

    :catchall_f9
    move-exception v0

    move v3, v15

    move/from16 v2, v18

    goto :goto_12d

    :catchall_fe
    move-exception v0

    move/from16 v18, v8

    move v3, v15

    move/from16 v2, v18

    goto :goto_12d

    :cond_105
    :goto_105
    :try_start_105
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10d
    :goto_10d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_123

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v3, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v4, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    if-eq v3, v4, :cond_10d

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_10d

    :cond_123
    sget v3, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    iput v3, v11, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    monitor-exit p0
    :try_end_128
    .catchall {:try_start_105 .. :try_end_128} :catchall_129

    return-object v11

    :catchall_129
    move-exception v0

    move v3, v15

    goto :goto_12d

    :catchall_12c
    move-exception v0

    :goto_12d
    :try_start_12d
    monitor-exit p0
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    throw v0
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "failed to read kernel wakelocks"

    const-string v10, "KernelWakelockReader"

    const v0, 0x8000

    new-array v11, v0, [B

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v12

    const/4 v1, 0x0

    const/4 v13, 0x0

    :try_start_13
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/proc/wakelocks"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1e

    const/4 v1, 0x0

    move-object v14, v0

    move v15, v1

    goto :goto_2a

    :catch_1e
    move-exception v0

    move-object v2, v0

    :try_start_20
    new-instance v0, Ljava/io/FileInputStream;

    const-string v3, "/d/wakeup_sources"

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_be

    const/4 v1, 0x1

    move-object v14, v0

    move v15, v1

    :goto_2a
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    move v4, v1

    :goto_34
    array-length v1, v11

    sub-int/2addr v1, v4

    invoke-virtual {v14, v11, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    move v0, v1

    if-lez v1, :cond_53

    add-int/2addr v4, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is.read return cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_53
    if-nez v4, :cond_6d

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is.read return cnt is zero ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :cond_6d
    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v4

    move/from16 v16, v4

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/KernelWakelockReaderRewrite;->readInfoCheck([BIIJ)I

    move-result v1

    invoke-virtual {v7, v11, v1, v15, v8}, Lcom/android/internal/os/KernelWakelockReaderRewrite;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    iget-boolean v2, v7, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    if-eqz v2, :cond_98

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    const-string/jumbo v2, "read is at the end of file "

    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_88} :catch_9c
    .catchall {:try_start_2c .. :try_end_88} :catchall_99

    nop

    :goto_89
    nop

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    :try_start_8d
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_97

    :catch_91
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_97
    return-object v8

    :cond_98
    goto :goto_2a

    :catchall_99
    move-exception v0

    move-object v1, v0

    goto :goto_b0

    :catch_9c
    move-exception v0

    move-object v1, v0

    :try_start_9e
    invoke-static {v10, v9, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_99

    nop

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    :try_start_a5
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_af

    :catch_a9
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_af
    return-object v13

    :goto_b0
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    :try_start_b3
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_bd

    :catch_b7
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_bd
    throw v1

    :catch_be
    move-exception v0

    const-string/jumbo v3, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v10, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13
.end method
