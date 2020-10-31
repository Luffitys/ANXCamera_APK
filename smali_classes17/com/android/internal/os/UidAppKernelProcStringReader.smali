.class public Lcom/android/internal/os/UidAppKernelProcStringReader;
.super Ljava/lang/Object;
.source "UidAppKernelProcStringReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    }
.end annotation


# static fields
.field private static final ERROR_THRESHOLD:I = 0x5

.field private static final FRESHNESS:J = 0x1f4L

.field private static final MAX_BUFFER_SIZE:I = 0x100000

.field private static final PROC_SYS_APP_ACTIVE_TIME:Ljava/lang/String; = "/proc/sys_app_concurrent_active_time"

.field private static final PROC_SYS_APP_CLUSTER_TIME:Ljava/lang/String; = "/proc/sys_app_concurrent_policy_time"

.field private static final PROC_SYS_APP_FREQ_TIME:Ljava/lang/String; = "/proc/sys_app_time_in_state"

.field private static final PROC_SYS_APP_USER_SYS_TIME:Ljava/lang/String; = "/proc/uid_cputime/show_sys_app_stat"

.field private static final SYS_APP_ACTIVE_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field private static final SYS_APP_CLUSTER_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field private static final SYS_APP_FREQ_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field private static final SYS_APP_USER_SYS_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBuf:[C

.field private mErrors:I

.field private final mFile:Ljava/nio/file/Path;

.field private mLastReadTime:J

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private mSize:I

.field private final mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    const-string v1, "/proc/sys_app_time_in_state"

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_FREQ_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    const-string v1, "/proc/sys_app_concurrent_active_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_ACTIVE_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    const-string v1, "/proc/sys_app_concurrent_policy_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_CLUSTER_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    const-string v1, "/proc/uid_cputime/show_sys_app_stat"

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_USER_SYS_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mLastReadTime:J

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    iget-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/UidAppKernelProcStringReader;)[C
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/os/UidAppKernelProcStringReader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object v0
.end method

.method public static asLongs(Ljava/nio/CharBuffer;[J)I
    .registers 13

    if-nez p0, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_5b

    array-length v4, p1

    if-ge v1, v4, :cond_5b

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/os/UidAppKernelProcStringReader;->isNumber(C)Z

    move-result v7

    if-nez v7, :cond_2d

    const/16 v7, 0x20

    if-eq v4, v7, :cond_2d

    const/16 v7, 0x3a

    if-eq v4, v7, :cond_2d

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, -0x2

    return v5

    :cond_2d
    cmp-long v7, v2, v5

    if-gez v7, :cond_3b

    invoke-static {v4}, Lcom/android/internal/os/UidAppKernelProcStringReader;->isNumber(C)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v5, v4, -0x30

    int-to-long v2, v5

    goto :goto_b

    :cond_3b
    invoke-static {v4}, Lcom/android/internal/os/UidAppKernelProcStringReader;->isNumber(C)Z

    move-result v7

    if-eqz v7, :cond_53

    const-wide/16 v7, 0xa

    mul-long/2addr v7, v2

    int-to-long v9, v4

    add-long/2addr v7, v9

    const-wide/16 v9, 0x30

    sub-long v2, v7, v9

    cmp-long v5, v2, v5

    if-gez v5, :cond_b

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, -0x3

    return v5

    :cond_53
    add-int/lit8 v5, v1, 0x1

    aput-wide v2, p1, v1

    const-wide/16 v2, -0x1

    move v1, v5

    goto :goto_b

    :cond_5b
    cmp-long v4, v2, v5

    if-ltz v4, :cond_64

    add-int/lit8 v4, v1, 0x1

    aput-wide v2, p1, v1

    move v1, v4

    :cond_64
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return v1
.end method

.method private dataValid()Z
    .registers 5

    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    if-lez v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mLastReadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method static getSysAppActiveTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_ACTIVE_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-object v0
.end method

.method static getSysAppClusterTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_CLUSTER_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-object v0
.end method

.method static getSysAppFreqTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_FREQ_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-object v0
.end method

.method static getSysAppUserSysTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_USER_SYS_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-object v0
.end method

.method private static isNumber(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public open()Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/UidAppKernelProcStringReader;->open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    move-result-object v0

    return-object v0
.end method

.method public open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    .registers 10

    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7

    return-object v1

    :cond_7
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto :goto_44

    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    invoke-direct {p0}, Lcom/android/internal/os/UidAppKernelProcStringReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;I)V

    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-direct {p0}, Lcom/android/internal/os/UidAppKernelProcStringReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;I)V

    return-object v0

    :cond_44
    :goto_44
    const/4 v0, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    :try_start_4c
    iget-object v3, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-static {v3}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v3
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_52} :catch_103
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_4c .. :try_end_52} :catch_103
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_e3
    .catchall {:try_start_4c .. :try_end_52} :catchall_e1

    :try_start_52
    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    if-nez v4, :cond_5c

    const/16 v4, 0x400

    new-array v4, v4, [C

    iput-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    :cond_5c
    :goto_5c
    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    iget-object v5, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    array-length v5, v5

    sub-int/2addr v5, v0

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    move v5, v4

    if-ltz v4, :cond_b5

    add-int/2addr v0, v5

    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    array-length v4, v4

    if-ne v0, v4, :cond_5c

    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    array-length v4, v4

    const/high16 v6, 0x100000

    if-ne v4, v6, :cond_a3

    iget v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    sget-object v4, Lcom/android/internal/os/UidAppKernelProcStringReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proc file too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_52 .. :try_end_94} :catchall_d5

    nop

    if-eqz v3, :cond_9a

    :try_start_97
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_9a} :catch_103
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_97 .. :try_end_9a} :catch_103
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_e3
    .catchall {:try_start_97 .. :try_end_9a} :catchall_e1

    :cond_9a
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v1

    :cond_a3
    :try_start_a3
    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    iget-object v7, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    array-length v7, v7

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    goto :goto_5c

    :cond_b5
    iput v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mLastReadTime:J

    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    new-instance v4, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;I)V
    :try_end_c7
    .catchall {:try_start_a3 .. :try_end_c7} :catchall_d5

    if-eqz v3, :cond_cc

    :try_start_c9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_cc
    .catch Ljava/io/FileNotFoundException; {:try_start_c9 .. :try_end_cc} :catch_103
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_c9 .. :try_end_cc} :catch_103
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_e3
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_e1

    :cond_cc
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    iget-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v4

    :catchall_d5
    move-exception v4

    if-eqz v3, :cond_e0

    :try_start_d8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    goto :goto_e0

    :catchall_dc
    move-exception v5

    :try_start_dd
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e0
    :goto_e0
    throw v4
    :try_end_e1
    .catch Ljava/io/FileNotFoundException; {:try_start_dd .. :try_end_e1} :catch_103
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_dd .. :try_end_e1} :catch_103
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e1} :catch_e3
    .catchall {:try_start_dd .. :try_end_e1} :catchall_e1

    :catchall_e1
    move-exception v1

    goto :goto_12d

    :catch_e3
    move-exception v3

    :try_start_e4
    iget v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    sget-object v4, Lcom/android/internal/os/UidAppKernelProcStringReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_122

    :catch_103
    move-exception v3

    iget v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    sget-object v4, Lcom/android/internal/os/UidAppKernelProcStringReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found. It\'s normal if not implemented: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_e4 .. :try_end_122} :catchall_e1

    :goto_122
    nop

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    iget-object v3, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-object v1

    :goto_12d
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    iget-object v3, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method
