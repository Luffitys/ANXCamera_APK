.class public Lmiui/util/async/TaskManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = -0x1

.field private static final DEFAULT_QUEUE_SIZE:I = 0xa

.field private static final DEFAULT_THREAD_SIZE:I = -0x1

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;

.field static final LOG_DEBUG:Z = false

.field static final LOG_ERROR:Z = true

.field static final LOG_INFO:Z = false

.field static final LOG_VERBOSE:Z = false

.field static final LOG_WARNING:Z = true

.field static final TAG:Ljava/lang/String; = "async"


# instance fields
.field private mCache:Lmiui/util/cache/Cache;

.field private mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

.field private mFinalizeGuardian:Ljava/lang/Object;

.field private final mQueue:Lmiui/util/async/TaskQueue;

.field private volatile mShutdown:Z

.field private mTaskThreads:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/util/async/TaskManager$1;

    invoke-direct {v0}, Lmiui/util/async/TaskManager$1;-><init>()V

    sput-object v0, Lmiui/util/async/TaskManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v1}, Lmiui/util/async/TaskManager;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/util/async/TaskManager$2;

    invoke-direct {v0, p0}, Lmiui/util/async/TaskManager$2;-><init>(Lmiui/util/async/TaskManager;)V

    iput-object v0, p0, Lmiui/util/async/TaskManager;->mFinalizeGuardian:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    new-instance v1, Lmiui/util/async/TaskQueue;

    invoke-direct {v1, p0, p1}, Lmiui/util/async/TaskQueue;-><init>(Lmiui/util/async/TaskManager;I)V

    iput-object v1, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    if-gez p2, :cond_0

    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result p2

    if-gtz p2, :cond_0

    const/4 p2, 0x4

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object p1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    new-instance v1, Lmiui/util/async/TaskThread;

    iget-object v2, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-direct {v1, p0, v2, v0}, Lmiui/util/async/TaskThread;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/TaskQueue;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/util/async/TaskThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lmiui/util/async/TaskInfoDeliverer;

    invoke-direct {p1, p0}, Lmiui/util/async/TaskInfoDeliverer;-><init>(Lmiui/util/async/TaskManager;)V

    iput-object p1, p0, Lmiui/util/async/TaskManager;->mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

    new-instance p1, Lmiui/util/cache/LruCache;

    invoke-direct {p1, p3}, Lmiui/util/cache/LruCache;-><init>(I)V

    iput-object p1, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    return-void
.end method

.method private clearQueue()V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->get()Lmiui/util/async/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getDefault()Lmiui/util/async/TaskManager;
    .locals 1

    sget-object v0, Lmiui/util/async/TaskManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    return-object v0
.end method


# virtual methods
.method public add(Lmiui/util/async/Task;)V
    .locals 4

    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    const-string v1, "async"

    if-eqz v0, :cond_0

    const-string p0, "Cannot add task into a shut down task manager"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lmiui/util/async/Task;->isRunning()Z

    move-result v0

    const-string v2, " has already added into task manager and not finish yet"

    const-string v3, "Task "

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v0

    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lmiui/util/async/Task;->restart()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status of task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not New, and cannot restart."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Lmiui/util/async/Task;->setTaskManager(Lmiui/util/async/TaskManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v2, p1, Lmiui/util/async/Cacheable;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lmiui/util/async/Cacheable;

    invoke-interface {v2}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiui/util/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object p0, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, p0, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    sget-object p0, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, p0, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    sget-object p0, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, p0, v0}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lmiui/util/async/Task;->getPriority()Lmiui/util/async/Task$Priority;

    move-result-object v0

    sget-object v2, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    if-ne v0, v2, :cond_4

    sget-object v0, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v0, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lmiui/util/async/TaskThread;->runRealTimeTask(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskQueue;->put(Lmiui/util/async/Task;)Z

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getCache()Lmiui/util/cache/Cache;
    .locals 0

    iget-object p0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    return-object p0
.end method

.method isShutdown()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    return p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {p0}, Lmiui/util/async/TaskQueue;->pause()V

    return-void
.end method

.method postDelivery(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lmiui/util/async/TaskManager;->mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/util/async/TaskInfoDeliverer;->postDeliver(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    return-void
.end method

.method remove(Lmiui/util/async/Task;)Z
    .locals 0

    iget-object p0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskQueue;->remove(Lmiui/util/async/Task;)Z

    move-result p0

    return p0
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {p0}, Lmiui/util/async/TaskQueue;->resume()V

    return-void
.end method

.method public setCallbackThread(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/util/async/TaskManager;->mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskInfoDeliverer;->setCallbackThread(Z)V

    return-void
.end method

.method public setMaxCache(I)V
    .locals 0

    iget-object p0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    invoke-interface {p0, p1}, Lmiui/util/cache/Cache;->setMaxSize(I)V

    return-void
.end method

.method public setThreadCount(I)V
    .locals 3

    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    if-eqz v0, :cond_0

    const-string p0, "async"

    const-string p1, "Cannot add task into a shut down task manager"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result p1

    if-gtz p1, :cond_1

    const/4 p1, 0x4

    :cond_1
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    :goto_0
    if-ge v0, p1, :cond_3

    new-instance v1, Lmiui/util/async/TaskThread;

    iget-object v2, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-direct {v1, p0, v2, v0}, Lmiui/util/async/TaskThread;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/TaskQueue;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ge p1, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, p1, :cond_3

    iget-object v1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskThread;

    invoke-virtual {v1}, Lmiui/util/async/TaskThread;->shutdown()V

    iget-object v1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public shutdown()V
    .locals 2

    invoke-static {}, Lmiui/util/async/TaskManager;->getDefault()Lmiui/util/async/TaskManager;

    move-result-object v0

    if-eq p0, v0, :cond_1

    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskThread;

    invoke-virtual {v1}, Lmiui/util/async/TaskThread;->shutdown()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    invoke-interface {v0}, Lmiui/util/cache/Cache;->clear()V

    invoke-direct {p0}, Lmiui/util/async/TaskManager;->clearQueue()V

    :cond_1
    return-void
.end method
