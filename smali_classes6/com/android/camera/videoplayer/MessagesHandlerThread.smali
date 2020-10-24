.class public Lcom/android/camera/videoplayer/MessagesHandlerThread;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SHOW_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "MessagesHandlerThread"


# instance fields
.field private mLastMessage:Lcom/android/camera/videoplayer/player_messages/Message;

.field private final mPlayerMessagesQueue:Ljava/util/Queue;

.field private final mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

.field private final mQueueProcessingThread:Ljava/util/concurrent/Executor;

.field private mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    new-instance v0, Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-direct {v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueProcessingThread:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueProcessingThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;

    invoke-direct {v1, p0}, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;-><init>(Lcom/android/camera/videoplayer/MessagesHandlerThread;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mLastMessage:Lcom/android/camera/videoplayer/player_messages/Message;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/videoplayer/MessagesHandlerThread;Lcom/android/camera/videoplayer/player_messages/Message;)Lcom/android/camera/videoplayer/player_messages/Message;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mLastMessage:Lcom/android/camera/videoplayer/player_messages/Message;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public addMessage(Lcom/android/camera/videoplayer/player_messages/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->notify(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object p1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    return-void
.end method

.method public addMessages(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->notify(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object p1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    return-void
.end method

.method public clearAllPendingMessages(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-virtual {v0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot perform action, you are not holding a lock"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pauseQueueProcessing(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    return-void
.end method

.method public resumeQueueProcessing(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    invoke-virtual {p0, p1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    return-void
.end method

.method public terminate()V
    .locals 2

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    const-string v1, ">> terminate lock"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v1, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->notify(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->mQueueLock:Lcom/android/camera/videoplayer/PlayerQueueLock;

    sget-object v0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    sget-object p0, Lcom/android/camera/videoplayer/MessagesHandlerThread;->TAG:Ljava/lang/String;

    const-string v0, "<< terminate unlock"

    invoke-static {p0, v0}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
