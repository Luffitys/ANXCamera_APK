.class final Lcom/google/android/play/core/tasks/InvokeSuccessListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/InvocationListener;


# instance fields
.field final lock:Ljava/lang/Object;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mListener:Lcom/google/android/play/core/tasks/OnSuccessListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/InvokeSuccessListener;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/tasks/InvokeSuccessListener;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/InvokeSuccessListener;->mListener:Lcom/google/android/play/core/tasks/OnSuccessListener;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/InvokeSuccessListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/InvokeSuccessListener;->mListener:Lcom/google/android/play/core/tasks/OnSuccessListener;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/play/core/tasks/InvokeSuccessListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/tasks/TaskSuccessRunnable;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/tasks/TaskSuccessRunnable;-><init>(Lcom/google/android/play/core/tasks/InvokeSuccessListener;Lcom/google/android/play/core/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
