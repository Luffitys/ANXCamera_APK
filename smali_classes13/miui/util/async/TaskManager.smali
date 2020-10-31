.class public Lmiui/util/async/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = -0x1

.field private static final DEFAULT_QUEUE_SIZE:I = 0xa

.field private static final DEFAULT_THREAD_SIZE:I = -0x1

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/util/async/TaskManager;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_DEBUG:Z = false

.field static final LOG_ERROR:Z = true

.field static final LOG_INFO:Z = false

.field static final LOG_VERBOSE:Z = false

.field static final LOG_WARNING:Z = true

.field static final TAG:Ljava/lang/String; = "async"


# instance fields
.field private mCache:Lmiui/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

.field private mFinalizeGuardian:Ljava/lang/Object;

.field private final mQueue:Lmiui/util/async/TaskQueue;

.field private volatile mShutdown:Z

.field private mTaskThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/async/TaskThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/util/async/TaskManager$1;

    invoke-direct {v0}, Lmiui/util/async/TaskManager$1;-><init>()V

    sput-object v0, Lmiui/util/async/TaskManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v1}, Lmiui/util/async/TaskManager;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/util/async/TaskManager$2;

    invoke-direct {v0, p0}, Lmiui/util/async/TaskManager$2;-><init>(Lmiui/util/async/TaskManager;)V

    iput-object v0, p0, Lmiui/util/async/TaskManager;->mFinalizeGuardian:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    new-instance v0, Lmiui/util/async/TaskQueue;

    invoke-direct {v0, p0, p1}, Lmiui/util/async/TaskQueue;-><init>(Lmiui/util/async/TaskManager;I)V

    iput-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    if-gez p2, :cond_1d

    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result p2

    if-gtz p2, :cond_1d

    const/4 p2, 0x4

    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p2, :cond_41

    iget-object v1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    new-instance v2, Lmiui/util/async/TaskThread;

    iget-object v3, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-direct {v2, p0, v3, v0}, Lmiui/util/async/TaskThread;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/TaskQueue;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskThread;

    invoke-virtual {v1}, Lmiui/util/async/TaskThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_41
    new-instance v0, Lmiui/util/async/TaskInfoDeliverer;

    invoke-direct {v0, p0}, Lmiui/util/async/TaskInfoDeliverer;-><init>(Lmiui/util/async/TaskManager;)V

    iput-object v0, p0, Lmiui/util/async/TaskManager;->mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

    new-instance v0, Lmiui/util/cache/LruCache;

    invoke-direct {v0, p3}, Lmiui/util/cache/LruCache;-><init>(I)V

    iput-object v0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    return-void
.end method

.method private clearQueue()V
    .registers 4

    :goto_0
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->get()Lmiui/util/async/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v1, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    :cond_16
    goto :goto_0

    :cond_17
    return-void
.end method

.method public static getDefault()Lmiui/util/async/TaskManager;
    .registers 1

    sget-object v0, Lmiui/util/async/TaskManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    return-object v0
.end method


# virtual methods
.method public add(Lmiui/util/async/Task;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    const-string v1, "async"

    if-eqz v0, :cond_c

    const-string v0, "Cannot add task into a shut down task manager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p1}, Lmiui/util/async/Task;->isRunning()Z

    move-result v0

    const-string v2, " has already added into task manager and not finish yet"

    const-string v3, "Task "

    if-nez v0, :cond_9c

    invoke-virtual {p1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v0

    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_41

    invoke-virtual {p1}, Lmiui/util/async/Task;->restart()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_41

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status of task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not New, and cannot restart."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    :goto_41
    invoke-virtual {p1, p0}, Lmiui/util/async/Task;->setTaskManager(Lmiui/util/async/TaskManager;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    instance-of v2, p1, Lmiui/util/async/Cacheable;

    if-eqz v2, :cond_6d

    move-object v2, p1

    check-cast v2, Lmiui/util/async/Cacheable;

    invoke-interface {v2}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiui/util/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6d

    sget-object v2, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v2, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    sget-object v2, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v2, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    sget-object v1, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v1, v0}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    return-void

    :cond_6d
    invoke-virtual {p1}, Lmiui/util/async/Task;->getPriority()Lmiui/util/async/Task$Priority;

    move-result-object v0

    sget-object v2, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    if-ne v0, v2, :cond_7e

    sget-object v0, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v0, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lmiui/util/async/TaskThread;->runRealTimeTask(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_83

    :cond_7e
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0, p1}, Lmiui/util/async/TaskQueue;->put(Lmiui/util/async/Task;)Z

    :goto_83
    return-void

    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getCache()Lmiui/util/cache/Cache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    return-object v0
.end method

.method isShutdown()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    return v0
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->pause()V

    return-void
.end method

.method postDelivery(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;",
            "Lmiui/util/async/Task$Delivery;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/async/TaskInfoDeliverer;->postDeliver(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    return-void
.end method

.method remove(Lmiui/util/async/Task;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0, p1}, Lmiui/util/async/TaskQueue;->remove(Lmiui/util/async/Task;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->resume()V

    return-void
.end method

.method public setCallbackThread(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mDeliverer:Lmiui/util/async/TaskInfoDeliverer;

    invoke-virtual {v0, p1}, Lmiui/util/async/TaskInfoDeliverer;->setCallbackThread(Z)V

    return-void
.end method

.method public setMaxCache(I)V
    .registers 3

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    invoke-interface {v0, p1}, Lmiui/util/cache/Cache;->setMaxSize(I)V

    return-void
.end method

.method public setThreadCount(I)V
    .registers 6

    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    if-eqz v0, :cond_c

    const-string v0, "async"

    const-string v1, "Cannot add task into a shut down task manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-gez p1, :cond_15

    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result p1

    if-gtz p1, :cond_15

    const/4 p1, 0x4

    :cond_15
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_33

    move v1, v0

    :goto_1e
    if-ge v1, p1, :cond_32

    new-instance v2, Lmiui/util/async/TaskThread;

    iget-object v3, p0, Lmiui/util/async/TaskManager;->mQueue:Lmiui/util/async/TaskQueue;

    invoke-direct {v2, p0, v3, v1}, Lmiui/util/async/TaskThread;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/TaskQueue;I)V

    invoke-virtual {v2}, Lmiui/util/async/TaskThread;->start()V

    iget-object v3, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    goto :goto_4c

    :cond_33
    if-ge p1, v0, :cond_4c

    add-int/lit8 v1, v0, -0x1

    :goto_37
    if-lt v1, p1, :cond_4c

    iget-object v2, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/TaskThread;

    invoke-virtual {v2}, Lmiui/util/async/TaskThread;->shutdown()V

    iget-object v3, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    :cond_4c
    :goto_4c
    return-void
.end method

.method public shutdown()V
    .registers 3

    invoke-static {}, Lmiui/util/async/TaskManager;->getDefault()Lmiui/util/async/TaskManager;

    move-result-object v0

    if-eq p0, v0, :cond_30

    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/TaskManager;->mShutdown:Z

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskThread;

    invoke-virtual {v1}, Lmiui/util/async/TaskThread;->shutdown()V

    goto :goto_13

    :cond_23
    iget-object v0, p0, Lmiui/util/async/TaskManager;->mTaskThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmiui/util/async/TaskManager;->mCache:Lmiui/util/cache/Cache;

    invoke-interface {v0}, Lmiui/util/cache/Cache;->clear()V

    invoke-direct {p0}, Lmiui/util/async/TaskManager;->clearQueue()V

    :cond_30
    return-void
.end method
