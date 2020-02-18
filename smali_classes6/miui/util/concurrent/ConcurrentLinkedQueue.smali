.class public Lmiui/util/concurrent/ConcurrentLinkedQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/concurrent/Queue;


# annotations
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
.field private final mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmiui/util/concurrent/ConcurrentLinkedQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public clear()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentLinkedQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    .line 2
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentLinkedQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentLinkedQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCapacity()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 1
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentLinkedQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentLinkedQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/concurrent/Queue$Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentLinkedQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiui/util/concurrent/Queue$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentLinkedQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
