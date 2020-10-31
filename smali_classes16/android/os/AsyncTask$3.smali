.class Landroid/os/AsyncTask$3;
.super Landroid/os/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;)V
    .registers 3

    iput-object p1, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/AsyncTask$WorkerRunnable;-><init>(Landroid/os/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    # getter for: Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/os/AsyncTask;->access$500(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    const/16 v2, 0xa

    :try_start_d
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v2, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    iget-object v3, p0, Landroid/os/AsyncTask$3;->mParams:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_23

    iget-object v1, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    # invokes: Landroid/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v0}, Landroid/os/AsyncTask;->access$700(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    return-object v0

    :catchall_23
    move-exception v2

    :try_start_24
    iget-object v3, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    # getter for: Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Landroid/os/AsyncTask;->access$600(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    nop

    throw v2
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v1

    iget-object v2, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    # invokes: Landroid/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v0}, Landroid/os/AsyncTask;->access$700(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method
