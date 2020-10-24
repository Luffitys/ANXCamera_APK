.class Lmiuix/core/util/Pools$InstanceHolder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/core/util/Pools$IInstanceHolder;


# instance fields
.field private final mClazz:Ljava/lang/Class;

.field private final mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/core/util/Pools$InstanceHolder;->mClazz:Ljava/lang/Class;

    new-instance p1, Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {p0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getElementClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {p0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->getCapacity()I

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {p0, p1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->put(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized resize(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->getCapacity()I

    move-result v0

    add-int/2addr p1, v0

    if-gtz p1, :cond_0

    invoke-static {}, Lmiuix/core/util/Pools;->access$000()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lmiuix/core/util/Pools;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/core/util/Pools$InstanceHolder;->getElementClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0, p1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->increaseCapacity(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->decreaseCapacity(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
