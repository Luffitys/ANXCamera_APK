.class Landroidx/heifwriter/HeifWriter$ResultWaiter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mDone:Z

.field private mException:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized signalResult(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z

    iput-object p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mException:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized waitForResult(J)V
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_1
    iget-boolean v4, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_1

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long/2addr p1, v4

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z

    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "timed out waiting for result"

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mException:Ljava/lang/Exception;

    :cond_2
    iget-object p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mException:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_5
    iget-object p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mException:Ljava/lang/Exception;

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeoutMs is negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
