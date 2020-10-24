.class public abstract Lmiui/util/async/Task;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mListeners:Ljava/util/ArrayList;

.field private mPriority:Lmiui/util/async/Task$Priority;

.field private volatile mStatus:Lmiui/util/async/Task$Status;

.field private final mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSuccessorTasks:Ljava/util/HashSet;

.field private mTaskManager:Ljava/lang/ref/WeakReference;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    invoke-direct {p0, v0}, Lmiui/util/async/Task;-><init>(Lmiui/util/async/Task$Priority;)V

    return-void
.end method

.method public constructor <init>(Lmiui/util/async/Task$Priority;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    iput-object p1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    return-void
.end method

.method private canRestart()Z
    .locals 5

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v3, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "async"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is DONE but successor not done yet"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task;

    invoke-direct {v1}, Lmiui/util/async/Task;->canRestart()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    :cond_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return v2
.end method

.method private enqueueSuccessorTasks(Lmiui/util/async/TaskManager;)V
    .locals 3

    iget-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/Task;

    invoke-virtual {p1, v2}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final isCanceled()Z
    .locals 1

    iget-object p0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v0, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onCanceledInternal(Lmiui/util/async/TaskManager;)V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onCanceled(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onCanceled(Lmiui/util/async/TaskManager;)V

    return-void
.end method

.method private onExceptionInternal(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0, p2}, Lmiui/util/async/Task$Listener;->onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/util/async/Task;->onException(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    return-void
.end method

.method private onFinalizeInternal(Lmiui/util/async/TaskManager;)V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onFinalize(Lmiui/util/async/TaskManager;)V

    iget-object p0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method private onPrepareInternal(Lmiui/util/async/TaskManager;)V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onPrepare(Lmiui/util/async/TaskManager;)V

    return-void
.end method

.method private onProgressInternal(Lmiui/util/async/TaskManager;II)V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0, p2, p3}, Lmiui/util/async/Task$Listener;->onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmiui/util/async/Task;->onProgress(Lmiui/util/async/TaskManager;II)V

    return-void
.end method

.method private onResultInternal(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0, p2}, Lmiui/util/async/Task$Listener;->onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/util/async/Task;->onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V

    return-void
.end method

.method private postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/async/TaskManager;->postDelivery(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Task has delivery "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but has no task manager"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "async"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final addListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;
    .locals 1

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->remove(Lmiui/util/async/Task;)Z

    :cond_0
    sget-object v0, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final deliver(Lmiui/util/async/TaskManager;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Delivery:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_2

    :cond_0
    check-cast p3, [I

    const/4 p2, 0x0

    aget p2, p3, p2

    aget p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lmiui/util/async/Task;->onProgressInternal(Lmiui/util/async/TaskManager;II)V

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_4

    invoke-direct {p0}, Lmiui/util/async/Task;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    instance-of p2, p3, Lmiui/util/async/TaskExecutingException;

    if-eqz p2, :cond_3

    check-cast p3, Lmiui/util/async/TaskExecutingException;

    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/lang/Exception;

    :goto_0
    invoke-direct {p0, p1, p2}, Lmiui/util/async/Task;->onExceptionInternal(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-direct {p0, p1, p3}, Lmiui/util/async/Task;->onResultInternal(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lmiui/util/async/Task;->enqueueSuccessorTasks(Lmiui/util/async/TaskManager;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Task "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " return result cannot cast to expectation class"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "async"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->onCanceledInternal(Lmiui/util/async/TaskManager;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->onFinalizeInternal(Lmiui/util/async/TaskManager;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->onPrepareInternal(Lmiui/util/async/TaskManager;)V

    :goto_2
    return-void
.end method

.method public final depends(Lmiui/util/async/Task;)V
    .locals 4

    iget-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p1, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    :cond_0
    iget-object p1, p1, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_0

    :cond_2
    const-string v1, "async"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is done but has no task manager to execute task "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract doLoad()Ljava/lang/Object;
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPriority()Lmiui/util/async/Task$Priority;
    .locals 0

    iget-object p0, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    return-object p0
.end method

.method public final getStatus()Lmiui/util/async/Task$Status;
    .locals 0

    iget-object p0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 2

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v0, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onCanceled(Lmiui/util/async/TaskManager;)V
    .locals 0

    return-void
.end method

.method public onException(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onFinalize(Lmiui/util/async/TaskManager;)V
    .locals 0

    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lmiui/util/async/TaskManager;II)V
    .locals 0

    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final publishProgress(II)V
    .locals 3

    sget-object v0, Lmiui/util/async/Task$Delivery;->Progress:Lmiui/util/async/Task$Delivery;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-direct {p0, v0, v1}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;
    .locals 1

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final restart()Z
    .locals 3

    invoke-direct {p0}, Lmiui/util/async/Task;->canRestart()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->remove(Lmiui/util/async/Task;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/Task;

    invoke-virtual {v2}, Lmiui/util/async/Task;->restart()Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    return v1
.end method

.method public final setPriority(Lmiui/util/async/Task$Priority;)Lmiui/util/async/Task;
    .locals 2

    iget-object v0, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->remove(Lmiui/util/async/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    :cond_0
    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiui/util/async/Task;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lmiui/util/async/Task;->setThread(Ljava/lang/Thread;)V

    :cond_1
    iput-object p1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    :cond_2
    return-object p0
.end method

.method final setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V
    .locals 9

    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, " error status change=> "

    const-string v4, "Task "

    const-string v5, "async"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v0, v2, :cond_5

    if-eq v0, v6, :cond_4

    const/4 v8, 0x4

    if-eq v0, v1, :cond_2

    if-eq v0, v8, :cond_4

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    goto :goto_3

    :cond_0
    sget-object p2, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v2, :cond_1

    if-eq p2, v6, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object p2, Lmiui/util/async/Task$Delivery;->Prepare:Lmiui/util/async/Task$Delivery;

    goto :goto_2

    :cond_2
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v6, :cond_6

    if-eq v0, v8, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_3
    sget-object v0, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, p2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_5
    sget-object p2, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v6, :cond_6

    if-eq p2, v1, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_6
    sget-object p2, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, p2, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    :goto_1
    sget-object p2, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    :goto_2
    invoke-direct {p0, p2, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    :cond_7
    :goto_3
    iput-object p1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    return-void
.end method

.method final setTaskManager(Lmiui/util/async/TaskManager;)Z
    .locals 1

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x1

    return p0
.end method

.method final setThread(Ljava/lang/Thread;)V
    .locals 1

    iput-object p1, p0, Lmiui/util/async/Task;->mThread:Ljava/lang/Thread;

    if-eqz p1, :cond_3

    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    iget-object p0, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0xa

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/util/async/Task;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ": Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
