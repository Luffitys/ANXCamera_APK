.class final Lcom/google/android/play/core/tasks/TaskCompleteRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

.field private final mTask:Lcom/google/android/play/core/tasks/Task;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/tasks/InvokeCompleteListener;Lcom/google/android/play/core/tasks/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mTask:Lcom/google/android/play/core/tasks/Task;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

    iget-object v0, v0, Lcom/google/android/play/core/tasks/InvokeCompleteListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

    iget-object v1, v1, Lcom/google/android/play/core/tasks/InvokeCompleteListener;->mListener:Lcom/google/android/play/core/tasks/OnCompleteListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

    iget-object v1, v1, Lcom/google/android/play/core/tasks/InvokeCompleteListener;->mListener:Lcom/google/android/play/core/tasks/OnCompleteListener;

    iget-object p0, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mTask:Lcom/google/android/play/core/tasks/Task;

    invoke-interface {v1, p0}, Lcom/google/android/play/core/tasks/OnCompleteListener;->onComplete(Lcom/google/android/play/core/tasks/Task;)V

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
