.class public abstract Lcom/android/internal/os/KernelCpuUidBpfMapReader;
.super Ljava/lang/Object;
.source "KernelCpuUidBpfMapReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidClusterTimeBpfMapReader;,
        Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidActiveTimeBpfMapReader;,
        Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;,
        Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    }
.end annotation


# static fields
.field private static final ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

.field private static final CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

.field private static final ERROR_THRESHOLD:I = 0x5

.field private static final FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

.field private static final FRESHNESS_MS:J = 0x1f4L


# instance fields
.field protected mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private mErrors:I

.field private mLastReadTime:J

.field protected final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected final mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field final mTag:Ljava/lang/String;

.field private mTracking:Z

.field protected final mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;-><init>()V

    sput-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidActiveTimeBpfMapReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidActiveTimeBpfMapReader;-><init>()V

    sput-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidClusterTimeBpfMapReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidClusterTimeBpfMapReader;-><init>()V

    sput-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mTracking:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLastReadTime:J

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-void
.end method

.method private dataValid()Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLastReadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method static getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    return-object v0
.end method

.method static getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    return-object v0
.end method

.method static getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    return-object v0
.end method


# virtual methods
.method public abstract getDataDimensions()[J
.end method

.method public open()Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    .registers 5

    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-le v0, v2, :cond_7

    return-object v1

    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mTracking:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->startTrackingBpfTimes()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mTag:Ljava/lang/String;

    const-string v2, "Failed to start tracking"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    return-object v1

    :cond_1f
    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto :goto_58

    :cond_27
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    invoke-direct {v0, p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;-><init>(Lcom/android/internal/os/KernelCpuUidBpfMapReader;)V

    return-object v0

    :cond_38
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    invoke-direct {v0, p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;-><init>(Lcom/android/internal/os/KernelCpuUidBpfMapReader;)V

    return-object v0

    :cond_58
    :goto_58
    invoke-virtual {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->readBpfData()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mLastReadTime:J

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    new-instance v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    invoke-direct {v0, p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;-><init>(Lcom/android/internal/os/KernelCpuUidBpfMapReader;)V

    return-object v0

    :cond_74
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mTag:Ljava/lang/String;

    const-string v2, "Failed to read bpf times"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected abstract readBpfData()Z
.end method

.method public removeUidsInRange(II)V
    .registers 7

    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mErrors:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method public native startTrackingBpfTimes()Z
.end method
