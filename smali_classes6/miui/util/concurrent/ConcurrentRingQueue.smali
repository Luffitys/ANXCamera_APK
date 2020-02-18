.class public Lmiui/util/concurrent/ConcurrentRingQueue;
.super Ljava/lang/Object;
.source "SourceFile"

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
.field private final mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

.field private tT:I

.field private final uT:Z

.field private final vT:Z

.field private final wT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile zT:I


# direct methods
.method public constructor <init>(IZZ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->tT:I

    .line 3
    iput-boolean p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->uT:Z

    .line 4
    iput-boolean p3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->vT:Z

    .line 5
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance p2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/a;)V

    iput-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 8
    iget-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 9
    iget-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :goto_26
    if-ge p3, p1, :cond_34

    .line 10
    new-instance v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    invoke-direct {v1, v0}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/a;)V

    iput-object v1, p2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 11
    iget-object p2, p2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    add-int/lit8 p3, p3, 0x1

    goto :goto_26

    .line 12
    :cond_34
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p0, p2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    return-void
.end method


# virtual methods
.method public clear()I
    .registers 5

    .line 1
    :goto_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2a

    .line 2
    :cond_13
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    move v1, v2

    :goto_16
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v0, v3, :cond_22

    const/4 v3, 0x0

    .line 3
    iput-object v3, v0, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->sT:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 4
    iget-object v0, v0, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_16

    .line 5
    :cond_22
    iput-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 6
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v1

    .line 7
    :cond_2a
    :goto_2a
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public decreaseCapacity(I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->vT:Z

    if-eqz v0, :cond_2b

    if-gtz p1, :cond_7

    goto :goto_2b

    .line 2
    :cond_7
    :goto_7
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_27

    .line 3
    :cond_1a
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->tT:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->tT:I

    .line 4
    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->zT:I

    .line 5
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 6
    :cond_27
    :goto_27
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7

    :cond_2b
    :goto_2b
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_32

    .line 2
    :cond_13
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 3
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v3, 0x0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1b
    if-nez v0, :cond_28

    if-eq v1, v4, :cond_28

    .line 4
    iget-object v0, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->sT:Ljava/lang/Object;

    .line 5
    iput-object v3, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->sT:Ljava/lang/Object;

    .line 6
    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_1b

    :cond_28
    if-eqz v0, :cond_2c

    .line 7
    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 8
    :cond_2c
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object v0

    .line 9
    :cond_32
    :goto_32
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public getCapacity()I
    .registers 2

    .line 1
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->zT:I

    iget p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->tT:I

    if-lez v0, :cond_7

    add-int/2addr p0, v0

    :cond_7
    return p0
.end method

.method public increaseCapacity(I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->uT:Z

    if-nez v0, :cond_2c

    if-gtz p1, :cond_7

    goto :goto_2c

    .line 2
    :cond_7
    :goto_7
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_28

    :cond_1a
    neg-int v0, p1

    .line 3
    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->zT:I

    .line 4
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->tT:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->tT:I

    .line 5
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 6
    :cond_28
    :goto_28
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7

    :cond_2c
    :goto_2c
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
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

    .line 1
    :cond_4
    :goto_4
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_5b

    .line 2
    :cond_16
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 3
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 4
    iget v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->zT:I

    .line 5
    iget-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v5, 0x1

    if-eq v4, v1, :cond_37

    .line 6
    iput-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->sT:Ljava/lang/Object;

    .line 7
    iget-object p1, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq p1, v1, :cond_32

    iget-boolean v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->vT:Z

    if-eqz v1, :cond_32

    if-lez v3, :cond_32

    .line 8
    iput-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    sub-int/2addr v3, v5

    .line 9
    iput v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->zT:I

    .line 10
    :cond_32
    iget-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_55

    .line 11
    :cond_37
    iget-boolean v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->uT:Z

    if-nez v4, :cond_40

    if-gez v3, :cond_3e

    goto :goto_40

    :cond_3e
    move v5, v0

    goto :goto_55

    .line 12
    :cond_40
    :goto_40
    new-instance v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/a;)V

    iput-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 13
    iget-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v1, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 14
    iput-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->sT:Ljava/lang/Object;

    add-int/2addr v3, v5

    .line 15
    iput v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->zT:I

    .line 16
    iget-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    .line 17
    :goto_55
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v5

    .line 18
    :cond_5b
    :goto_5b
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4
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

    .line 8
    :cond_4
    :goto_4
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_3a

    .line 9
    :cond_16
    :try_start_16
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    move v2, v0

    :goto_19
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v1, v3, :cond_2d

    .line 10
    iget-object v3, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->sT:Ljava/lang/Object;

    invoke-interface {p1, v3}, Lmiui/util/concurrent/Queue$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    .line 11
    iput-object v3, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->sT:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 12
    :cond_2a
    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_33

    goto :goto_19

    .line 13
    :cond_2d
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v2

    :catchall_33
    move-exception p1

    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw p1

    .line 14
    :cond_3a
    :goto_3a
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    :goto_4
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_33

    .line 2
    :cond_16
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :goto_18
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yT:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v1, v2, :cond_2c

    .line 3
    iget-object v2, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->sT:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 p1, 0x0

    .line 4
    iput-object p1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->sT:Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_2d

    .line 5
    :cond_29
    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_18

    :cond_2c
    move p1, v0

    .line 6
    :goto_2d
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->wT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p1

    .line 7
    :cond_33
    :goto_33
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4
.end method
