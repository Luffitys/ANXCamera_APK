.class public abstract Lmiui/util/async/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/Task$Delivery;,
        Lmiui/util/async/Task$Status;,
        Lmiui/util/async/Task$Priority;,
        Lmiui/util/async/Task$Listener;
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


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/async/Task$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:Lmiui/util/async/Task$Priority;

.field private volatile mStatus:Lmiui/util/async/Task$Status;

.field private final mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSuccessorTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTaskManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/util/async/TaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    invoke-direct {p0, v0}, Lmiui/util/async/Task;-><init>(Lmiui/util/async/Task$Priority;)V

    return-void
.end method

.method public constructor <init>(Lmiui/util/async/Task$Priority;)V
    .registers 4

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
    .registers 6

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5a

    iget-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v3, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-ne v1, v3, :cond_35

    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "async"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is DONE but successor not done yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_35
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/async/Task;

    invoke-direct {v3}, Lmiui/util/async/Task;->canRestart()Z

    move-result v4

    if-nez v4, :cond_53

    monitor-exit v0

    return v2

    :cond_53
    goto :goto_3f

    :cond_54
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_57

    throw v1

    :cond_5a
    return v2
.end method

.method private enqueueSuccessorTasks(Lmiui/util/async/TaskManager;)V
    .registers 5

    iget-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/Task;

    invoke-virtual {p1, v2}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_d

    :cond_1d
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private final isCanceled()Z
    .registers 3

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private onCanceledInternal(Lmiui/util/async/TaskManager;)V
    .registers 4

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onCanceled(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_8

    :cond_18
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onCanceled(Lmiui/util/async/TaskManager;)V

    return-void
.end method

.method private onExceptionInternal(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0, p2}, Lmiui/util/async/Task$Listener;->onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V

    goto :goto_8

    :cond_18
    invoke-virtual {p0, p1, p2}, Lmiui/util/async/Task;->onException(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    return-void
.end method

.method private onFinalizeInternal(Lmiui/util/async/TaskManager;)V
    .registers 4

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_8

    :cond_18
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onFinalize(Lmiui/util/async/TaskManager;)V

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method private onPrepareInternal(Lmiui/util/async/TaskManager;)V
    .registers 4

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_8

    :cond_18
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onPrepare(Lmiui/util/async/TaskManager;)V

    return-void
.end method

.method private onProgressInternal(Lmiui/util/async/TaskManager;II)V
    .registers 6

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0, p2, p3}, Lmiui/util/async/Task$Listener;->onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V

    goto :goto_8

    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Lmiui/util/async/Task;->onProgress(Lmiui/util/async/TaskManager;II)V

    return-void
.end method

.method private onResultInternal(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    invoke-interface {v1, p1, p0, p2}, Lmiui/util/async/Task$Listener;->onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object p2, v2

    goto :goto_8

    :cond_1a
    invoke-virtual {p0, p1, p2}, Lmiui/util/async/Task;->onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V

    return-void
.end method

.method private postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    move-object v1, v0

    if-eqz v0, :cond_f

    invoke-virtual {v1, p0, p1, p2}, Lmiui/util/async/TaskManager;->postDelivery(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto :goto_2a

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task has delivery "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but has no task manager"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "async"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method


# virtual methods
.method public final addListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task$Listener;",
            ")",
            "Lmiui/util/async/Task<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final cancel()V
    .registers 3

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->remove(Lmiui/util/async/Task;)Z

    :cond_19
    sget-object v0, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method final deliver(Lmiui/util/async/TaskManager;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .registers 7

    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Delivery:[I

    invoke-virtual {p2}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    const/4 v2, 0x4

    if-eq v0, v2, :cond_15

    goto :goto_72

    :cond_15
    move-object v0, p3

    check-cast v0, [I

    const/4 v2, 0x0

    aget v0, v0, v2

    move-object v2, p3

    check-cast v2, [I

    aget v1, v2, v1

    invoke-direct {p0, p1, v0, v1}, Lmiui/util/async/Task;->onProgressInternal(Lmiui/util/async/TaskManager;II)V

    goto :goto_72

    :cond_24
    if-eqz p3, :cond_66

    invoke-direct {p0}, Lmiui/util/async/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_66

    :cond_2d
    instance-of v0, p3, Lmiui/util/async/TaskExecutingException;

    if-eqz v0, :cond_3e

    move-object v0, p3

    check-cast v0, Lmiui/util/async/TaskExecutingException;

    invoke-virtual {v0}, Lmiui/util/async/TaskExecutingException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, p1, v0}, Lmiui/util/async/Task;->onExceptionInternal(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    goto :goto_72

    :cond_3e
    move-object v0, p3

    :try_start_3f
    invoke-direct {p0, p1, v0}, Lmiui/util/async/Task;->onResultInternal(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lmiui/util/async/Task;->enqueueSuccessorTasks(Lmiui/util/async/TaskManager;)V
    :try_end_45
    .catch Ljava/lang/ClassCastException; {:try_start_3f .. :try_end_45} :catch_46

    goto :goto_72

    :catch_46
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " return result cannot cast to expectation class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "async"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lmiui/util/async/Task;->onExceptionInternal(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    goto :goto_72

    :cond_66
    :goto_66
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->onCanceledInternal(Lmiui/util/async/TaskManager;)V

    goto :goto_72

    :cond_6a
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->onFinalizeInternal(Lmiui/util/async/TaskManager;)V

    goto :goto_72

    :cond_6e
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->onPrepareInternal(Lmiui/util/async/TaskManager;)V

    nop

    :goto_72
    return-void
.end method

.method public final depends(Lmiui/util/async/Task;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-nez v1, :cond_16

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p1, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    :cond_16
    iget-object v1, p1, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_1c
    iget-object v1, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskManager;

    if-eqz v1, :cond_2a

    invoke-virtual {v1, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_48

    :cond_2a
    const-string v2, "async"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is done but has no task manager to execute task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public abstract doLoad()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPriority()Lmiui/util/async/Task$Priority;
    .registers 2

    iget-object v0, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    return-object v0
.end method

.method public final getStatus()Lmiui/util/async/Task$Status;
    .registers 2

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    return-object v0
.end method

.method public final isRunning()Z
    .registers 3

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public onCanceled(Lmiui/util/async/TaskManager;)V
    .registers 2

    return-void
.end method

.method public onException(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public onFinalize(Lmiui/util/async/TaskManager;)V
    .registers 2

    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;)V
    .registers 2

    return-void
.end method

.method public onProgress(Lmiui/util/async/TaskManager;II)V
    .registers 4

    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final publishProgress(II)V
    .registers 6

    sget-object v0, Lmiui/util/async/Task$Delivery;->Progress:Lmiui/util/async/Task$Delivery;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task$Listener;",
            ")",
            "Lmiui/util/async/Task<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/Task;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public final restart()Z
    .registers 4

    invoke-direct {p0}, Lmiui/util/async/Task;->canRestart()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->remove(Lmiui/util/async/Task;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    return v1

    :cond_1e
    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v0, v2, :cond_25

    return v1

    :cond_25
    iget-object v0, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_28
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorTasks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/Task;

    invoke-virtual {v2}, Lmiui/util/async/Task;->restart()Z

    nop

    goto :goto_32

    :cond_43
    iget-object v1, p0, Lmiui/util/async/Task;->mSuccessorSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_4f

    sget-object v0, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    return v2

    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1

    :cond_52
    return v1
.end method

.method public final setPriority(Lmiui/util/async/Task$Priority;)Lmiui/util/async/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task$Priority;",
            ")",
            "Lmiui/util/async/Task<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    if-eq v0, p1, :cond_30

    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->remove(Lmiui/util/async/Task;)Z

    move-result v1

    if-eqz v1, :cond_23

    iput-object p1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    :cond_23
    iget-object v0, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lmiui/util/async/Task;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lmiui/util/async/Task;->setThread(Ljava/lang/Thread;)V

    :cond_2e
    iput-object p1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    :cond_30
    return-object p0
.end method

.method final setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V
    .registers 12

    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    iget-object v1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, " error status change=> "

    const-string v4, "Task "

    const-string v5, "async"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v0, v2, :cond_ae

    if-eq v0, v6, :cond_95

    const/4 v8, 0x4

    if-eq v0, v1, :cond_5a

    if-eq v0, v8, :cond_95

    const/4 v1, 0x5

    if-eq v0, v1, :cond_22

    goto/16 :goto_df

    :cond_22
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    invoke-virtual {p1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_53

    if-eq v0, v6, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    sget-object v0, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    sget-object v0, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto/16 :goto_df

    :cond_53
    sget-object v0, Lmiui/util/async/Task$Delivery;->Prepare:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto/16 :goto_df

    :cond_5a
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    invoke-virtual {p1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v6, :cond_8a

    if-eq v0, v8, :cond_7f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7f
    sget-object v0, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, p2}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    sget-object v0, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto :goto_df

    :cond_8a
    sget-object v0, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    sget-object v0, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto :goto_df

    :cond_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ae
    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Status:[I

    invoke-virtual {p1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v6, :cond_d4

    if-eq v0, v1, :cond_d3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d3
    goto :goto_df

    :cond_d4
    sget-object v0, Lmiui/util/async/Task$Delivery;->Result:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    sget-object v0, Lmiui/util/async/Task$Delivery;->Finalize:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, v7}, Lmiui/util/async/Task;->postDelivery(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    nop

    :goto_df
    iput-object p1, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    return-void
.end method

.method final setTaskManager(Lmiui/util/async/TaskManager;)Z
    .registers 3

    iget-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/Task;->mTaskManager:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    return v0
.end method

.method final setThread(Ljava/lang/Thread;)V
    .registers 4

    iput-object p1, p0, Lmiui/util/async/Task;->mThread:Ljava/lang/Thread;

    if-eqz p1, :cond_29

    sget-object v0, Lmiui/util/async/Task$1;->$SwitchMap$miui$util$async$Task$Priority:[I

    iget-object v1, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    invoke-virtual {v1}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    goto :goto_29

    :cond_1b
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_29

    :cond_21
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_29

    :cond_26
    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/util/async/Task;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_23
    const-string v2, ": Status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/util/async/Task;->mStatus:Lmiui/util/async/Task$Status;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/util/async/Task;->mPriority:Lmiui/util/async/Task$Priority;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
