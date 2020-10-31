.class public abstract Lcom/android/internal/os/KernelCpuUidTimeReader;
.super Ljava/lang/Object;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;,
        Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;,
        Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;,
        Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;,
        Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final DEFAULT_MIN_TIME_BETWEEN_READ:J = 0x3e8L


# instance fields
.field final mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

.field protected mBpfTimesAvailable:Z

.field private mLastReadTimeMs:J

.field final mLastTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMinTimeBetweenRead:J

.field final mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

.field final mTag:Ljava/lang/String;

.field final mThrottle:Z


# direct methods
.method constructor <init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mTag:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastTimes:Landroid/util/SparseArray;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mMinTimeBetweenRead:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastReadTimeMs:J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iput-boolean p3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mThrottle:Z

    iput-object p2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    if-eqz p2, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mBpfTimesAvailable:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/KernelCpuProcStringReader;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;Z)V

    return-void
.end method


# virtual methods
.method public readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mThrottle:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader;->readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    return-void

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastReadTimeMs:J

    iget-wide v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mMinTimeBetweenRead:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_16

    return-void

    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader;->readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastReadTimeMs:J

    return-void
.end method

.method abstract readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public readDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mThrottle:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    return-void

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastReadTimeMs:J

    iget-wide v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mMinTimeBetweenRead:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_16

    return-void

    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastReadTimeMs:J

    return-void
.end method

.method abstract readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public removeUid(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .registers 7

    if-ge p2, p1, :cond_22

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > end UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastTimes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mLastTimes:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mBpfTimesAvailable:Z

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->removeUidsInRange(II)V

    :cond_4b
    return-void
.end method

.method public setThrottle(J)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mThrottle:Z

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    iput-wide p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader;->mMinTimeBetweenRead:J

    :cond_c
    return-void
.end method
