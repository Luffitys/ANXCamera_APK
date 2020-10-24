.class public Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private final mRefQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-direct {v0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    iget-object p0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-direct {v0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getKeys(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    iget-object p0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    iget-object v1, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    iget-object p0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-direct {v0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
