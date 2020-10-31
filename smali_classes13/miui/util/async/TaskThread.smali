.class Lmiui/util/async/TaskThread;
.super Ljava/lang/Thread;
.source "TaskThread.java"


# instance fields
.field private final mQueue:Lmiui/util/async/TaskQueue;

.field private volatile mShutdown:Z

.field private final mTaskManager:Lmiui/util/async/TaskManager;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;Lmiui/util/async/TaskQueue;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lmiui/util/async/TaskThread;->mTaskManager:Lmiui/util/async/TaskManager;

    iput-object p2, p0, Lmiui/util/async/TaskThread;->mQueue:Lmiui/util/async/TaskQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/TaskThread;->mShutdown:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskThread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/util/async/TaskThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lmiui/util/async/TaskThread;->runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    return-void
.end method

.method public static runRealTimeTask(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lmiui/util/async/TaskThread$1;

    invoke-direct {v0, p0, p1}, Lmiui/util/async/TaskThread$1;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    const-string v1, "TaskThread-RealTime"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Ljava/lang/Thread;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_52

    if-eqz p2, :cond_52

    sget-object v0, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lmiui/util/async/Task;->setThread(Ljava/lang/Thread;)V

    const/4 v0, 0x0

    :try_start_e
    invoke-virtual {p2}, Lmiui/util/async/Task;->doLoad()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    sget-object v2, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-nez v0, :cond_1f

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "result is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_20

    :cond_1f
    move-object v3, v0

    :goto_20
    invoke-virtual {p2, v2, v3}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_24

    goto :goto_2f

    :catch_24
    move-exception v2

    sget-object v3, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    new-instance v4, Lmiui/util/async/TaskExecutingException;

    invoke-direct {v4, v2}, Lmiui/util/async/TaskExecutingException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p2, v3, v4}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    :goto_2f
    invoke-virtual {p0}, Lmiui/util/async/TaskManager;->getCache()Lmiui/util/cache/Cache;

    move-result-object v2

    if-eqz v2, :cond_4f

    if-eqz v0, :cond_4f

    instance-of v3, p2, Lmiui/util/async/Cacheable;

    if-eqz v3, :cond_4f

    move-object v3, p2

    check-cast v3, Lmiui/util/async/Cacheable;

    invoke-interface {v3}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0}, Lmiui/util/async/Cacheable;->sizeOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v2, v5, v0, v6}, Lmiui/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_4f
    invoke-virtual {p2, v1}, Lmiui/util/async/Task;->setThread(Ljava/lang/Thread;)V

    :cond_52
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmiui/util/async/TaskThread;->mQueue:Lmiui/util/async/TaskQueue;

    :goto_2
    iget-boolean v1, p0, Lmiui/util/async/TaskThread;->mShutdown:Z

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->get()Lmiui/util/async/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v2, p0, Lmiui/util/async/TaskThread;->mTaskManager:Lmiui/util/async/TaskManager;

    invoke-static {v2, p0, v1}, Lmiui/util/async/TaskThread;->runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lmiui/util/async/TaskThread;->setPriority(I)V

    :cond_15
    goto :goto_2

    :cond_16
    return-void
.end method

.method public shutdown()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/TaskThread;->mShutdown:Z

    invoke-virtual {p0}, Lmiui/util/async/TaskThread;->interrupt()V

    return-void
.end method
