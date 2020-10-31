.class public Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
.super Ljava/lang/Object;
.source "ConcurrentWeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field

.field private final mRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private clean()V
    .registers 4

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, v1

    check-cast v2, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_12
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-direct {v0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    iget-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-direct {v1, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeys(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TK;>;)",
            "Ljava/util/Collection<",
            "TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    iget-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-virtual {v1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_22
    goto :goto_d

    :cond_23
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_16

    if-nez p2, :cond_5

    goto :goto_16

    :cond_5
    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    iget-object v1, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v1, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    iget-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-direct {v1, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
