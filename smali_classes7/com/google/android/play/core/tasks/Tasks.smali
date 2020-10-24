.class public Lcom/google/android/play/core/tasks/Tasks;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTaskListener(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;)V
    .locals 1

    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public static await(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;-><init>(Lcom/google/android/play/core/tasks/Tasks$1;)V

    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/Tasks;->addTaskListener(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->await()V

    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Task must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static await(Lcom/google/android/play/core/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;-><init>(Lcom/google/android/play/core/tasks/Tasks$1;)V

    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/Tasks;->addTaskListener(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->awaitTimeout(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "TimeUnit must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Task must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTaskAndSetResult(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/tasks/TaskImpl;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/TaskImpl;->setResult(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
