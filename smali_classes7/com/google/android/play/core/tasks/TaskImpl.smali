.class Lcom/google/android/play/core/tasks/TaskImpl;
.super Lcom/google/android/play/core/tasks/Task;
.source ""


# instance fields
.field private isComplete:Z

.field private final lock:Ljava/lang/Object;

.field private mException:Ljava/lang/Exception;

.field private mListenerManager:Lcom/google/android/play/core/tasks/InvocationListenerManager;

.field private mResult:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/Task;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/tasks/InvocationListenerManager;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/InvocationListenerManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mListenerManager:Lcom/google/android/play/core/tasks/InvocationListenerManager;

    return-void
.end method

.method private assertComplete()V
    .locals 1

    iget-boolean p0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Task is not yet complete"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private invokeListeners()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mListenerManager:Lcom/google/android/play/core/tasks/InvocationListenerManager;

    invoke-virtual {v1, p0}, Lcom/google/android/play/core/tasks/InvocationListenerManager;->invokeListener(Lcom/google/android/play/core/tasks/Task;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/TaskImpl;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mListenerManager:Lcom/google/android/play/core/tasks/InvocationListenerManager;

    new-instance v1, Lcom/google/android/play/core/tasks/InvokeCompleteListener;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/InvokeCompleteListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/InvocationListenerManager;->addInvocationListener(Lcom/google/android/play/core/tasks/InvocationListener;)V

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/TaskImpl;->invokeListeners()V

    return-object p0
.end method

.method public addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/TaskImpl;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mListenerManager:Lcom/google/android/play/core/tasks/InvocationListenerManager;

    new-instance v1, Lcom/google/android/play/core/tasks/InvokeFailureListener;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/InvokeFailureListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/InvocationListenerManager;->addInvocationListener(Lcom/google/android/play/core/tasks/InvocationListener;)V

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/TaskImpl;->invokeListeners()V

    return-object p0
.end method

.method public addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/TaskImpl;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mListenerManager:Lcom/google/android/play/core/tasks/InvocationListenerManager;

    new-instance v1, Lcom/google/android/play/core/tasks/InvokeSuccessListener;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/InvokeSuccessListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/InvocationListenerManager;->addInvocationListener(Lcom/google/android/play/core/tasks/InvocationListener;)V

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/TaskImpl;->invokeListeners()V

    return-object p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/TaskImpl;->assertComplete()V

    iget-object v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mResult:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/play/core/tasks/RuntimeExecutionException;

    iget-object p0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSuccessful()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setException(Ljava/lang/Exception;)Z
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mListenerManager:Lcom/google/android/play/core/tasks/InvocationListenerManager;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/InvocationListenerManager;->invokeListener(Lcom/google/android/play/core/tasks/Task;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setResult(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mResult:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mListenerManager:Lcom/google/android/play/core/tasks/InvocationListenerManager;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/InvocationListenerManager;->invokeListener(Lcom/google/android/play/core/tasks/Task;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setResultCheck(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->isComplete:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mResult:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/TaskImpl;->mListenerManager:Lcom/google/android/play/core/tasks/InvocationListenerManager;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/InvocationListenerManager;->invokeListener(Lcom/google/android/play/core/tasks/Task;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Task is already complete"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
