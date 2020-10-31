.class public Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;
.super Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.source "KernelSysAppCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelSysAppCpuUserSysTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelSysAppCpuTimeReader<",
        "[J>;"
    }
.end annotation


# instance fields
.field private final mBuffer:[J

.field private mLastSystemTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUserTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsrSysTime:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    const/4 v0, 0x2

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mBuffer:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-static {}, Lcom/android/internal/os/UidAppKernelProcStringReader;->getSysAppUserSysTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    const/4 v0, 0x2

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mBuffer:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, " s="

    iget-object v3, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

    iget-boolean v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mThrottle:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/os/UidAppKernelProcStringReader;->open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    move-result-object v3

    if-nez v3, :cond_18

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    :cond_17
    return-void

    :cond_18
    const-wide/16 v6, 0x0

    :goto_1a
    :try_start_1a
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v4

    move-object v8, v4

    if-eqz v4, :cond_149

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "total"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_1a

    :cond_2f
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mBuffer:[J

    invoke-static {v9, v10}, Lcom/android/internal/os/UidAppKernelProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_67

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid line: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_67
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mBuffer:[J

    aget-wide v11, v11, v9

    iget-object v13, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mBuffer:[J

    aget-wide v13, v13, v5

    iget-object v15, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    aput-wide v11, v15, v9

    iget-object v15, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    aput-wide v13, v15, v5

    iget-object v15, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    invoke-virtual {v15, v10}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v15

    if-ltz v15, :cond_b3

    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v17, v5, v9

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    invoke-virtual {v9, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v17, v17, v19

    const/4 v9, 0x0

    aput-wide v17, v5, v9

    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    const/4 v9, 0x1

    aget-wide v17, v5, v9

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    invoke-virtual {v9, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v17, v17, v19

    const/4 v9, 0x1

    aput-wide v17, v5, v9

    :cond_b3
    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    const/4 v9, 0x0

    aget-wide v17, v5, v9

    const-wide/16 v19, 0x0

    cmp-long v5, v17, v19

    if-ltz v5, :cond_f3

    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    const/4 v9, 0x1

    aget-wide v17, v5, v9

    cmp-long v5, v17, v19

    if-gez v5, :cond_c9

    const/4 v9, 0x1

    goto :goto_f4

    :cond_c9
    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    const/4 v9, 0x0

    aget-wide v17, v5, v9

    cmp-long v5, v17, v19

    if-gtz v5, :cond_db

    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    const/4 v9, 0x1

    aget-wide v17, v5, v9

    cmp-long v5, v17, v19

    if-lez v5, :cond_132

    :cond_db
    if-eqz v2, :cond_f1

    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    const/4 v9, 0x0

    aget-wide v17, v5, v9

    add-long v6, v6, v17

    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    const/4 v9, 0x1

    aget-wide v16, v5, v9

    add-long v6, v6, v16

    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    invoke-interface {v2, v10, v5}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;->onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_132

    :cond_f1
    const/4 v9, 0x1

    goto :goto_132

    :cond_f3
    const/4 v9, 0x1

    :goto_f4
    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative user/sys time delta for pkg="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nPrev times: u="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Curr times: u="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_132
    :goto_132
    iget-object v2, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_144
    .catchall {:try_start_1a .. :try_end_144} :catchall_14f

    move-object/from16 v2, p1

    const/4 v5, 0x1

    goto/16 :goto_1a

    :cond_149
    if-eqz v3, :cond_14e

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    :cond_14e
    return-void

    :catchall_14f
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_15c

    :try_start_153
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V
    :try_end_156
    .catchall {:try_start_153 .. :try_end_156} :catchall_157

    goto :goto_15c

    :catchall_157
    move-exception v0

    move-object v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15c
    :goto_15c
    throw v2
.end method
