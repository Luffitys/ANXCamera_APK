.class Lmiui/animation/utils/ObjectPool$Cache;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/utils/ObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field final pool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final shrinkTask:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    new-instance v0, Lmiui/animation/utils/ObjectPool$Cache$1;

    invoke-direct {v0, p0}, Lmiui/animation/utils/ObjectPool$Cache$1;-><init>(Lmiui/animation/utils/ObjectPool$Cache;)V

    iput-object v0, p0, Lmiui/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/utils/ObjectPool$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/animation/utils/ObjectPool$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method varargs declared-synchronized acquireObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    # invokes: Lmiui/animation/utils/ObjectPool;->createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p2}, Lmiui/animation/utils/ObjectPool;->access$000(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-object v0, v1

    :cond_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized releaseObject(Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    # getter for: Lmiui/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;
    invoke-static {}, Lmiui/animation/utils/ObjectPool;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmiui/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_23

    # getter for: Lmiui/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;
    invoke-static {}, Lmiui/animation/utils/ObjectPool;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized shrink()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lmiui/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_10

    iget-object v0, p0, Lmiui/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    goto :goto_1

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
