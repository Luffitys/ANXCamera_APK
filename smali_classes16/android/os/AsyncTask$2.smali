.class Landroid/os/AsyncTask$2;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 12

    const-string v0, "AsyncTask"

    const-string v1, "Exceeded ThreadPoolExecutor pool size"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_8
    # getter for: Landroid/os/AsyncTask;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Landroid/os/AsyncTask;->access$000()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    # setter for: Landroid/os/AsyncTask;->sBackupExecutorQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v0}, Landroid/os/AsyncTask;->access$102(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    # getter for: Landroid/os/AsyncTask;->sBackupExecutorQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Landroid/os/AsyncTask;->access$100()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v7

    # getter for: Landroid/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {}, Landroid/os/AsyncTask;->access$200()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    # setter for: Landroid/os/AsyncTask;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/os/AsyncTask;->access$002(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;

    # getter for: Landroid/os/AsyncTask;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Landroid/os/AsyncTask;->access$000()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_3e

    # getter for: Landroid/os/AsyncTask;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Landroid/os/AsyncTask;->access$000()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method
