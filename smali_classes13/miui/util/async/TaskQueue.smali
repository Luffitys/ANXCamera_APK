.class Lmiui/util/async/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Lmiui/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue<",
        "Lmiui/util/async/Task<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final mHighQueue:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mLowQueue:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mNormalQueue:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mTaskManager:Lmiui/util/async/TaskManager;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/async/TaskQueue;->mTaskManager:Lmiui/util/async/TaskManager;

    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, v1}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {v0, p2, v1, v1}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {v0, p2, v1, v1}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private getTask()Lmiui/util/async/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/Task<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    if-nez v0, :cond_13

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/util/async/Task;

    :cond_13
    if-nez v0, :cond_1e

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/util/async/Task;

    :cond_1e
    return-object v0
.end method


# virtual methods
.method public clear()I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lmiui/util/async/TaskQueue;->getTask()Lmiui/util/async/Task;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v2

    sget-object v3, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v2, v3, :cond_17

    add-int/lit8 v0, v0, 0x1

    :cond_17
    goto :goto_1

    :cond_18
    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiui/util/async/TaskQueue;->get()Lmiui/util/async/Task;

    move-result-object v0

    return-object v0
.end method

.method public get()Lmiui/util/async/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/Task<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mTaskManager:Lmiui/util/async/TaskManager;

    invoke-virtual {v1}, Lmiui/util/async/TaskManager;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_4a

    :cond_9
    :goto_9
    if-nez v0, :cond_5e

    const/4 v1, 0x0

    :try_start_c
    iget-object v2, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_48

    nop

    iget-object v2, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :goto_1d
    :try_start_1d
    iget-object v3, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_2a} :catch_30
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    goto :goto_1d

    :cond_2b
    nop

    :try_start_2c
    monitor-exit v2

    goto :goto_3a

    :catchall_2e
    move-exception v1

    goto :goto_38

    :catch_30
    move-exception v3

    iget-object v4, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    monitor-exit v2

    return-object v1

    :goto_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_2e

    throw v1

    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lmiui/util/async/TaskQueue;->getTask()Lmiui/util/async/Task;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v1

    sget-object v2, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-ne v1, v2, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :catch_48
    move-exception v2

    return-object v1

    :cond_4a
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-direct {p0}, Lmiui/util/async/TaskQueue;->getTask()Lmiui/util/async/Task;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v1

    sget-object v2, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v1, v2, :cond_4a

    :cond_5e
    return-object v0
.end method

.method public getCapacity()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public pause()V
    .registers 4

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lmiui/util/async/Task;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskQueue;->put(Lmiui/util/async/Task;)Z

    move-result p1

    return p1
.end method

.method public put(Lmiui/util/async/Task;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lmiui/util/async/TaskQueue$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    invoke-virtual {p1}, Lmiui/util/async/Task;->getPriority()Lmiui/util/async/Task$Priority;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    const/4 v2, 0x2

    if-eq v1, v2, :cond_29

    const/4 v2, 0x3

    if-eq v1, v2, :cond_22

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1a

    goto :goto_37

    :cond_1a
    const-string v1, "async"

    const-string v2, "Realtime task must NOT be put in Queue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_22
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_37

    :cond_29
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_37

    :cond_30
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    nop

    :goto_37
    if-eqz v0, :cond_44

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_44
    return v0
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/concurrent/Queue$Predicate<",
            "Lmiui/util/async/Task<",
            "*>;>;)I"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no support for this method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lmiui/util/async/Task;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskQueue;->remove(Lmiui/util/async/Task;)Z

    move-result p1

    return p1
.end method

.method public remove(Lmiui/util/async/Task;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    :cond_17
    if-nez v0, :cond_1f

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v1, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    :cond_1f
    if-nez v0, :cond_26

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_26
    return v0
.end method

.method public resume()V
    .registers 4

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
