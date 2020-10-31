.class public abstract Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.super Ljava/lang/Object;
.source "KernelSysAppCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;,
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;,
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;,
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;,
        Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;
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
.field private mLastReadTimeMs:J

.field private mMinTimeBetweenRead:J

.field final mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field final mTag:Ljava/lang/String;

.field final mThrottle:Z


# direct methods
.method constructor <init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mTag:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mMinTimeBetweenRead:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mLastReadTimeMs:J

    iput-object p1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

    iput-boolean p2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mThrottle:Z

    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mThrottle:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    return-void

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mLastReadTimeMs:J

    iget-wide v4, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mMinTimeBetweenRead:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_16

    return-void

    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V

    iput-wide v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mLastReadTimeMs:J

    return-void
.end method

.method abstract readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public setThrottle(J)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mThrottle:Z

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    iput-wide p1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader;->mMinTimeBetweenRead:J

    :cond_c
    return-void
.end method
