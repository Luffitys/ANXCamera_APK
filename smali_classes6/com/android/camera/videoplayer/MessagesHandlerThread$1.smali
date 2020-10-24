.class Lcom/android/camera/videoplayer/MessagesHandlerThread$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;


# direct methods
.method constructor <init>(Lcom/android/camera/videoplayer/MessagesHandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start worker thread"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$200(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->wait(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "InterruptedException"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$200(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/videoplayer/player_messages/Message;

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$302(Lcom/android/camera/videoplayer/MessagesHandlerThread;Lcom/android/camera/videoplayer/player_messages/Message;)Lcom/android/camera/videoplayer/player_messages/Message;

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/videoplayer/player_messages/Message;->polledFromQueue()V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/videoplayer/player_messages/Message;->runMessage()V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/videoplayer/player_messages/Message;->messageFinished()V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$400(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "end worker thread"

    invoke-static {p0, v0}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
