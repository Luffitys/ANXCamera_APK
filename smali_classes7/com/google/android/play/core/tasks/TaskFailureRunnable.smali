.class final Lcom/google/android/play/core/tasks/TaskFailureRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mFailureExecutor:Lcom/google/android/play/core/tasks/InvokeFailureListener;

.field private final mTask:Lcom/google/android/play/core/tasks/Task;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/tasks/InvokeFailureListener;Lcom/google/android/play/core/tasks/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/tasks/TaskFailureRunnable;->mFailureExecutor:Lcom/google/android/play/core/tasks/InvokeFailureListener;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/TaskFailureRunnable;->mTask:Lcom/google/android/play/core/tasks/Task;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskFailureRunnable;->mFailureExecutor:Lcom/google/android/play/core/tasks/InvokeFailureListener;

    iget-object v0, v0, Lcom/google/android/play/core/tasks/InvokeFailureListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/TaskFailureRunnable;->mFailureExecutor:Lcom/google/android/play/core/tasks/InvokeFailureListener;

    iget-object v1, v1, Lcom/google/android/play/core/tasks/InvokeFailureListener;->mListener:Lcom/google/android/play/core/tasks/OnFailureListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/TaskFailureRunnable;->mFailureExecutor:Lcom/google/android/play/core/tasks/InvokeFailureListener;

    iget-object v1, v1, Lcom/google/android/play/core/tasks/InvokeFailureListener;->mListener:Lcom/google/android/play/core/tasks/OnFailureListener;

    iget-object p0, p0, Lcom/google/android/play/core/tasks/TaskFailureRunnable;->mTask:Lcom/google/android/play/core/tasks/Task;

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/play/core/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

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
