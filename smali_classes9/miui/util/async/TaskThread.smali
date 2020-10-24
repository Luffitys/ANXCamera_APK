.class Lmiui/util/async/TaskThread;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private final mQueue:Lmiui/util/async/TaskQueue;

.field private volatile mShutdown:Z

.field private final mTaskManager:Lmiui/util/async/TaskManager;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;Lmiui/util/async/TaskQueue;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lmiui/util/async/TaskThread;->mTaskManager:Lmiui/util/async/TaskManager;

    iput-object p2, p0, Lmiui/util/async/TaskThread;->mQueue:Lmiui/util/async/TaskQueue;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/util/async/TaskThread;->mShutdown:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TaskThread-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiui/util/async/TaskThread;->runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    return-void
.end method

.method public static runRealTimeTask(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 1

    new-instance v0, Lmiui/util/async/TaskThread$1;

    invoke-direct {v0, p0, p1}, Lmiui/util/async/TaskThread$1;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    const-string p0, "TaskThread-RealTime"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    sget-object v0, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lmiui/util/async/Task;->setThread(Ljava/lang/Thread;)V

    :try_start_0
    invoke-virtual {p2}, Lmiui/util/async/Task;->doLoad()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "result is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {p2, v0, v2}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v1

    :goto_1
    sget-object v2, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    new-instance v3, Lmiui/util/async/TaskExecutingException;

    invoke-direct {v3, v0}, Lmiui/util/async/TaskExecutingException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p2, v2, v3}, Lmiui/util/async/Task;->setStatus(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p0}, Lmiui/util/async/TaskManager;->getCache()Lmiui/util/cache/Cache;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, p2, Lmiui/util/async/Cacheable;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lmiui/util/async/Cacheable;

    invoke-interface {v0}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1}, Lmiui/util/async/Cacheable;->sizeOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v2, p1, v0}, Lmiui/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_1
    invoke-virtual {p2, v1}, Lmiui/util/async/Task;->setThread(Ljava/lang/Thread;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lmiui/util/async/TaskThread;->mQueue:Lmiui/util/async/TaskQueue;

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lmiui/util/async/TaskThread;->mShutdown:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lmiui/util/async/TaskQueue;->get()Lmiui/util/async/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/util/async/TaskThread;->mTaskManager:Lmiui/util/async/TaskManager;

    invoke-static {v2, p0, v1}, Lmiui/util/async/TaskThread;->runTask(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/TaskThread;->mShutdown:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
