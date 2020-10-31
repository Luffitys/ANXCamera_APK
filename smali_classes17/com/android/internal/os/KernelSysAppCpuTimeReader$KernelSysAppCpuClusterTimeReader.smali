.class public Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;
.super Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.source "KernelSysAppCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelSysAppCpuClusterTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelSysAppCpuTimeReader<",
        "[J>;"
    }
.end annotation


# instance fields
.field private mBuffer:[J

.field private mCoresOnClusters:[I

.field private mCurTime:[J

.field private mDeltaTime:[J

.field private mLastTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private mNumClusters:I

.field private mNumCores:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-static {}, Lcom/android/internal/os/UidAppKernelProcStringReader;->getSysAppClusterTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    return-void
.end method

.method private checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_8e

    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    const/4 v3, 0x1

    if-lez v2, :cond_15

    return v3

    :cond_15
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    rem-int/lit8 v4, v4, 0x2

    const-string v5, "Malformed uid_concurrent_policy_time line: "

    if-eqz v4, :cond_3b

    iget-object v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3b
    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_42
    array-length v8, v4

    if-ge v7, v8, :cond_7a

    mul-int/lit8 v8, v7, 0x2

    aget-object v8, v2, v8

    const-string/jumbo v9, "policy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_67

    iget-object v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_67
    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v3

    aget-object v8, v2, v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v4, v7

    aget v8, v4, v7

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_7a
    array-length v0, v4

    iput v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    iput v6, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumCores:I

    iput-object v4, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCoresOnClusters:[I

    new-array v5, v6, [J

    iput-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mBuffer:[J

    new-array v5, v0, [J

    iput-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCurTime:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    return v3

    :cond_8e
    :goto_8e
    return v0
.end method

.method private sumClusterTime()V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    if-ge v1, v2, :cond_28

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    :goto_9
    iget-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCoresOnClusters:[I

    aget v5, v5, v1

    if-gt v4, v5, :cond_20

    iget-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mBuffer:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v7, v5, v0

    long-to-double v7, v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    mul-double/2addr v7, v9

    int-to-double v9, v4

    div-double/2addr v7, v9

    add-double/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    move v0, v6

    goto :goto_9

    :cond_20
    iget-object v4, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCurTime:[J

    double-to-long v5, v2

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method


# virtual methods
.method readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

    iget-boolean v3, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mThrottle:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/os/UidAppKernelProcStringReader;->open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    move-result-object v3

    :try_start_e
    invoke-direct {v1, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_f0

    if-nez v0, :cond_1a

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    :cond_19
    return-void

    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_ea

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mBuffer:[J

    invoke-static {v6, v7}, Lcom/android/internal/os/UidAppKernelProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v6

    iget-object v7, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mBuffer:[J

    array-length v7, v7

    if-eq v6, v7, :cond_5b

    iget-object v6, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_5b
    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    if-nez v8, :cond_7a

    iget v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    new-array v9, v9, [J

    move-object v8, v9

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->sumClusterTime()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_80
    iget v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    if-ge v11, v12, :cond_cd

    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    iget-object v13, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCurTime:[J

    aget-wide v13, v13, v11

    aget-wide v15, v8, v11

    sub-long/2addr v13, v15

    aput-wide v13, v12, v11

    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    aget-wide v12, v12, v11

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_b8

    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative delta from cluster time proc: "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    move-object/from16 v17, v8

    aget-wide v7, v4, v11

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move v9, v4

    goto :goto_ba

    :cond_b8
    move-object/from16 v17, v8

    :goto_ba
    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    aget-wide v7, v4, v11

    cmp-long v4, v7, v14

    if-lez v4, :cond_c4

    const/4 v4, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v4, 0x0

    :goto_c5
    or-int/2addr v10, v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v17

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_80

    :cond_cd
    move-object/from16 v17, v8

    if-eqz v10, :cond_e5

    if-eqz v9, :cond_e5

    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCurTime:[J

    iget v7, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    move-object/from16 v8, v17

    const/4 v11, 0x0

    invoke-static {v4, v11, v8, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_e7

    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    invoke-interface {v2, v6, v4}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;->onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_1a .. :try_end_e4} :catchall_f0

    goto :goto_e7

    :cond_e5
    move-object/from16 v8, v17

    :cond_e7
    :goto_e7
    const/4 v4, 0x1

    goto/16 :goto_1a

    :cond_ea
    if-eqz v3, :cond_ef

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    :cond_ef
    return-void

    :catchall_f0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_fd

    :try_start_f4
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    goto :goto_fd

    :catchall_f8
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fd
    :goto_fd
    throw v4
.end method
