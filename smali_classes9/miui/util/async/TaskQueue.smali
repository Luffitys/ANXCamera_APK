.class Lmiui/util/async/TaskQueue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/util/concurrent/Queue;


# instance fields
.field private final mHighQueue:Lmiui/util/concurrent/Queue;

.field private final mLowQueue:Lmiui/util/concurrent/Queue;

.field private final mNormalQueue:Lmiui/util/concurrent/Queue;

.field private final mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mTaskManager:Lmiui/util/async/TaskManager;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/async/TaskQueue;->mTaskManager:Lmiui/util/async/TaskManager;

    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {p1, p2, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {p1, p2, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object p1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private getTask()Lmiui/util/async/Task;
    .locals 1

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    :cond_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {p0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lmiui/util/async/Task;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public clear()I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lmiui/util/async/TaskQueue;->getTask()Lmiui/util/async/Task;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v1

    sget-object v2, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/TaskQueue;->get()Lmiui/util/async/Task;

    move-result-object p0

    return-object p0
.end method

.method public get()Lmiui/util/async/Task;
    .locals 4

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mTaskManager:Lmiui/util/async/TaskManager;

    invoke-virtual {v0}, Lmiui/util/async/TaskManager;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    :goto_0
    move-object v0, v1

    :cond_0
    if-nez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :goto_1
    :try_start_1
    iget-object v2, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    iget-object p0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_3
    invoke-direct {p0}, Lmiui/util/async/TaskQueue;->getTask()Lmiui/util/async/Task;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v2

    sget-object v3, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :catch_1
    return-object v1

    :cond_3
    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lmiui/util/async/TaskQueue;->getTask()Lmiui/util/async/Task;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v0

    sget-object v2, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v0, v2, :cond_3

    :cond_4
    move-object v0, v1

    :cond_5
    return-object v0
.end method

.method public getCapacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lmiui/util/async/Task;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskQueue;->put(Lmiui/util/async/Task;)Z

    move-result p0

    return p0
.end method

.method public put(Lmiui/util/async/Task;)Z
    .locals 3

    sget-object v0, Lmiui/util/async/TaskQueue$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    invoke-virtual {p1}, Lmiui/util/async/Task;->getPriority()Lmiui/util/async/Task$Priority;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "async"

    const-string v1, "Realtime task must NOT be put in Queue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    :goto_1
    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    iget-object p0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_4
    return v0
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no support for this method"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lmiui/util/async/Task;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskQueue;->remove(Lmiui/util/async/Task;)Z

    move-result p0

    return p0
.end method

.method public remove(Lmiui/util/async/Task;)Z
    .locals 1

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mHighQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mNormalQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mLowQueue:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_3

    iget-object p0, p0, Lmiui/util/async/TaskQueue;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lmiui/util/async/TaskQueue;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
