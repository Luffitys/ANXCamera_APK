.class public Landroid/os/AnrMonitor$TimerThread;
.super Ljava/lang/Thread;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerThread"
.end annotation


# instance fields
.field private completed:Z

.field private timeout:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide p1, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    return-void
.end method


# virtual methods
.method public declared-synchronized finishRun()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->finishRun()V

    return-void
.end method

.method public declared-synchronized startAndWait()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->start()V

    iget-wide v0, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->interrupt()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_10} :catch_13
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    :cond_10
    goto :goto_17

    :catchall_11
    move-exception v0

    goto :goto_19

    :catch_13
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_11

    :goto_17
    monitor-exit p0

    return-void

    :goto_19
    monitor-exit p0

    throw v0
.end method
