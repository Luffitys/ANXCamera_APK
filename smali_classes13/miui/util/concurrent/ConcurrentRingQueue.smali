.class public Lmiui/util/concurrent/ConcurrentRingQueue;
.super Ljava/lang/Object;
.source "ConcurrentRingQueue.java"

# interfaces
.implements Lmiui/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile mAdditional:I

.field private final mAllowExtendCapacity:Z

.field private final mAutoReleaseCapacity:Z

.field private mCapacity:I

.field private volatile mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(IZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    iput-boolean p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    iput-boolean p3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v2, 0x0

    :goto_27
    if-ge v2, p1, :cond_35

    new-instance v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    invoke-direct {v3, v1}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v3, v0, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v0, v0, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_35
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v1, v0, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    return-void
.end method


# virtual methods
.method public clear()I
    .registers 5

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_6
    if-nez v0, :cond_2a

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_2a

    :cond_13
    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :goto_16
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v1, v2, :cond_22

    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_16

    :cond_22
    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v0

    :cond_2a
    :goto_2a
    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_6
.end method

.method public decreaseCapacity(I)V
    .registers 6

    iget-boolean v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    if-eqz v0, :cond_31

    if-gtz p1, :cond_7

    goto :goto_31

    :cond_7
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_d
    if-nez v0, :cond_27

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_27

    :cond_1a
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_27
    :goto_27
    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_d

    :cond_31
    :goto_31
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_6
    if-nez v0, :cond_30

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_30

    :cond_13
    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :goto_18
    if-nez v0, :cond_26

    if-eq v1, v2, :cond_26

    iget-object v0, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_18

    :cond_26
    if-eqz v0, :cond_2a

    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :cond_2a
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object v0

    :cond_30
    :goto_30
    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_6
.end method

.method public getCapacity()I
    .registers 3

    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    move v1, v0

    if-lez v0, :cond_9

    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    add-int/2addr v0, v1

    goto :goto_b

    :cond_9
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    :goto_b
    return v0
.end method

.method public increaseCapacity(I)V
    .registers 6

    iget-boolean v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    if-nez v0, :cond_32

    if-gtz p1, :cond_7

    goto :goto_32

    :cond_7
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_d
    if-nez v0, :cond_28

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_28

    :cond_1a
    neg-int v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_28
    :goto_28
    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_d

    :cond_32
    :goto_32
    return-void
.end method

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public put(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_a
    if-nez v1, :cond_62

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_62

    :cond_16
    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    iget-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v5, v2, :cond_3f

    iput-object p1, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    iget-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v5, v5, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v5, v2, :cond_39

    iget-boolean v5, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    if-eqz v5, :cond_39

    if-lez v4, :cond_39

    iget-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v5, v5, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    :cond_39
    iget-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v5, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v1, 0x1

    goto :goto_5c

    :cond_3f
    iget-boolean v5, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    if-nez v5, :cond_45

    if-gez v4, :cond_5c

    :cond_45
    new-instance v5, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v2, v5, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    iget-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v5, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v1, 0x1

    :cond_5c
    :goto_5c
    iget-object v5, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v1

    :cond_62
    :goto_62
    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_a
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/concurrent/Queue$Predicate<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_a
    if-nez v1, :cond_3c

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_3c

    :cond_16
    const/4 v1, 0x0

    :try_start_17
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :goto_19
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v2, v3, :cond_2e

    iget-object v3, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    invoke-interface {p1, v3}, Lmiui/util/concurrent/Queue$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    iput-object v3, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_2a
    iget-object v3, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_35

    move-object v2, v3

    goto :goto_19

    :cond_2e
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    nop

    return v1

    :catchall_35
    move-exception v2

    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw v2

    :cond_3c
    :goto_3c
    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_a
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_a
    if-nez v1, :cond_33

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_33

    :cond_16
    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :goto_19
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v2, v3, :cond_2d

    iget-object v3, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    iput-object v3, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2a
    iget-object v2, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_19

    :cond_2d
    :goto_2d
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v1

    :cond_33
    :goto_33
    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_a
.end method
