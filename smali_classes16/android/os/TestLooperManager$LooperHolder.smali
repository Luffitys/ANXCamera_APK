.class Landroid/os/TestLooperManager$LooperHolder;
.super Ljava/lang/Object;
.source "TestLooperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperHolder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TestLooperManager;


# direct methods
.method private constructor <init>(Landroid/os/TestLooperManager;)V
    .registers 2

    iput-object p1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/TestLooperManager;Landroid/os/TestLooperManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/TestLooperManager$LooperHolder;-><init>(Landroid/os/TestLooperManager;)V

    return-void
.end method

.method private processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    .registers 4

    monitor-enter p1

    :try_start_1
    # getter for: Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;
    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    # getter for: Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;
    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    # setter for: Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;
    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->access$302(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v0

    :try_start_14
    # setter for: Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;
    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->access$302(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    const/4 v2, 0x1

    # setter for: Landroid/os/TestLooperManager;->mLooperBlocked:Z
    invoke-static {v1, v2}, Landroid/os/TestLooperManager;->access$402(Landroid/os/TestLooperManager;Z)Z

    iget-object v1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3d

    :goto_f
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    # getter for: Landroid/os/TestLooperManager;->mReleased:Z
    invoke-static {v0}, Landroid/os/TestLooperManager;->access$500(Landroid/os/TestLooperManager;)Z

    move-result v0

    if-nez v0, :cond_2f

    :try_start_17
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    # getter for: Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v0}, Landroid/os/TestLooperManager;->access$600(Landroid/os/TestLooperManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TestLooperManager$MessageExecution;

    # getter for: Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;
    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-direct {p0, v0}, Landroid/os/TestLooperManager$LooperHolder;->processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :cond_2e
    :goto_2e
    goto :goto_f

    :cond_2f
    iget-object v1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    monitor-enter v1

    :try_start_32
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    const/4 v2, 0x0

    # setter for: Landroid/os/TestLooperManager;->mLooperBlocked:Z
    invoke-static {v0, v2}, Landroid/os/TestLooperManager;->access$402(Landroid/os/TestLooperManager;Z)Z

    monitor-exit v1

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v0

    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method
