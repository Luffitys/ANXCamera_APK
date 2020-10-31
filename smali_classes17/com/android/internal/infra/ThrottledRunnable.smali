.class public Lcom/android/internal/infra/ThrottledRunnable;
.super Ljava/lang/Object;
.source "ThrottledRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIntervalMillis:J

.field private final mLock:Ljava/lang/Object;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mScheduledUptimeMillis:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;JLjava/lang/Runnable;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/ThrottledRunnable;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/infra/ThrottledRunnable;->mHandler:Landroid/os/Handler;

    iput-wide p2, p0, Lcom/android/internal/infra/ThrottledRunnable;->mIntervalMillis:J

    iput-object p4, p0, Lcom/android/internal/infra/ThrottledRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/infra/ThrottledRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/ThrottledRunnable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/infra/ThrottledRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/infra/ThrottledRunnable;->mScheduledUptimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2d

    iget-wide v3, p0, Lcom/android/internal/infra/ThrottledRunnable;->mScheduledUptimeMillis:J

    iget-wide v5, p0, Lcom/android/internal/infra/ThrottledRunnable;->mIntervalMillis:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_25

    goto :goto_2d

    :cond_25
    iget-wide v3, p0, Lcom/android/internal/infra/ThrottledRunnable;->mScheduledUptimeMillis:J

    iget-wide v5, p0, Lcom/android/internal/infra/ThrottledRunnable;->mIntervalMillis:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/infra/ThrottledRunnable;->mScheduledUptimeMillis:J

    goto :goto_2f

    :cond_2d
    :goto_2d
    iput-wide v1, p0, Lcom/android/internal/infra/ThrottledRunnable;->mScheduledUptimeMillis:J

    :goto_2f
    iget-object v3, p0, Lcom/android/internal/infra/ThrottledRunnable;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/infra/ThrottledRunnable;->mRunnable:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/android/internal/infra/ThrottledRunnable;->mScheduledUptimeMillis:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    nop

    monitor-exit v0

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method
