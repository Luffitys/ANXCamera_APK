.class public Lcom/miui/internal/util/async/WorkerThreads;
.super Ljava/lang/Object;
.source "WorkerThreads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;
    }
.end annotation


# static fields
.field public static final TAG_COMMON_WORK:Ljava/lang/String; = "common_work"

.field private static final sWorkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized aquireWorker(Ljava/lang/String;)Landroid/os/Looper;
    .registers 4

    const-class v0, Lcom/miui/internal/util/async/WorkerThreads;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;

    if-nez v1, :cond_19

    new-instance v2, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;

    invoke-direct {v2, p0}, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    sget-object v2, Lcom/miui/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_19
    iget v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    :goto_1f
    iget-object v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    monitor-exit v0

    return-object v2

    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized releaseWorker(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/miui/internal/util/async/WorkerThreads;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;

    if-eqz v1, :cond_21

    iget v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    iget v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    if-nez v2, :cond_21

    sget-object v2, Lcom/miui/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0

    throw p0
.end method
