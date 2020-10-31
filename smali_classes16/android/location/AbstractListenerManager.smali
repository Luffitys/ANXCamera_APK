.class abstract Landroid/location/AbstractListenerManager;
.super Ljava/lang/Object;
.source "AbstractListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/AbstractListenerManager$Registration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Landroid/location/AbstractListenerManager$Registration<",
            "TTRequest;TT",
            "Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMergedRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTRequest;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/location/AbstractListenerManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    return-void
.end method

.method private addInternal(Ljava/lang/Object;Landroid/location/AbstractListenerManager$Registration;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/location/AbstractListenerManager$Registration<",
            "TTRequest;TT",
            "Listener;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/location/AbstractListenerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v3, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/AbstractListenerManager$Registration;

    iput-object v2, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    if-eqz v3, :cond_2b

    # invokes: Landroid/location/AbstractListenerManager$Registration;->unregister()V
    invoke-static {v3}, Landroid/location/AbstractListenerManager$Registration;->access$100(Landroid/location/AbstractListenerManager$Registration;)V

    :cond_2b
    invoke-direct {p0}, Landroid/location/AbstractListenerManager;->mergeRequests()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_39

    iget-object v6, p0, Landroid/location/AbstractListenerManager;->mMergedRequest:Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    :cond_39
    iput-object v5, p0, Landroid/location/AbstractListenerManager;->mMergedRequest:Ljava/lang/Object;

    if-nez v1, :cond_40

    invoke-virtual {p0}, Landroid/location/AbstractListenerManager;->unregisterService()V

    :cond_40
    iget-object v6, p0, Landroid/location/AbstractListenerManager;->mMergedRequest:Ljava/lang/Object;

    invoke-virtual {p0, v6}, Landroid/location/AbstractListenerManager;->registerService(Ljava/lang/Object;)Z

    :cond_45
    monitor-exit v0

    return v4

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private mergeRequests()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTRequest;"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/AbstractListenerManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    return-object v0

    :cond_13
    iget-object v0, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/AbstractListenerManager$Registration;

    invoke-virtual {v0}, Landroid/location/AbstractListenerManager$Registration;->getRequest()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_36
    iget-object v2, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    iget-object v2, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/AbstractListenerManager$Registration;

    invoke-virtual {v2}, Landroid/location/AbstractListenerManager$Registration;->getRequest()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_50
    invoke-virtual {p0, v0}, Landroid/location/AbstractListenerManager;->merge(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected final addInternal(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Ljava/lang/Object;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/location/AbstractListenerManager;->addInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)Z

    move-result v0

    return v0
.end method

.method protected final addInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null listener/callback"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Landroid/location/AbstractListenerManager$Registration;

    invoke-virtual {p0, p2}, Landroid/location/AbstractListenerManager;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, p3, v1, v2}, Landroid/location/AbstractListenerManager$Registration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/location/AbstractListenerManager$1;)V

    invoke-direct {p0, p2, v0}, Landroid/location/AbstractListenerManager;->addInternal(Ljava/lang/Object;Landroid/location/AbstractListenerManager$Registration;)Z

    move-result v0

    return v0
.end method

.method public addListener(Ljava/lang/Object;Landroid/os/Handler;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/location/AbstractListenerManager;->addInternal(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public addListener(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;TT",
            "Listener;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/location/AbstractListenerManager;->addInternal(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public addListener(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;TT",
            "Listener;",
            "Ljava/util/concurrent/Executor;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/location/AbstractListenerManager;->addInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)Z

    move-result v0

    return v0
.end method

.method public addListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Ljava/util/concurrent/Executor;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/location/AbstractListenerManager;->addInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)Z

    move-result v0

    return v0
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT",
            "Listener;"
        }
    .end annotation

    return-object p1
.end method

.method protected execute(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/AbstractListenerManager$Registration;

    # invokes: Landroid/location/AbstractListenerManager$Registration;->execute(Ljava/util/function/Consumer;)V
    invoke-static {v1, p1}, Landroid/location/AbstractListenerManager$Registration;->access$200(Landroid/location/AbstractListenerManager$Registration;Ljava/util/function/Consumer;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method protected merge(Ljava/util/List;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TTRequest;>;)TTRequest;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const-string/jumbo v3, "merge() has to be overridden for non-null requests."

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_4

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract registerService(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public removeListener(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/AbstractListenerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/AbstractListenerManager$Registration;

    iput-object v1, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    if-nez v2, :cond_16

    monitor-exit v0

    return-void

    :cond_16
    # invokes: Landroid/location/AbstractListenerManager$Registration;->unregister()V
    invoke-static {v2}, Landroid/location/AbstractListenerManager$Registration;->access$100(Landroid/location/AbstractListenerManager$Registration;)V

    iget-object v3, p0, Landroid/location/AbstractListenerManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v4, 0x0

    goto :goto_27

    :cond_23
    invoke-direct {p0}, Landroid/location/AbstractListenerManager;->mergeRequests()Ljava/lang/Object;

    move-result-object v4

    :goto_27
    if-nez v3, :cond_33

    iget-object v5, p0, Landroid/location/AbstractListenerManager;->mMergedRequest:Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    const/4 v5, 0x1

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :goto_34
    if-nez v3, :cond_38

    if-eqz v5, :cond_42

    :cond_38
    invoke-virtual {p0}, Landroid/location/AbstractListenerManager;->unregisterService()V

    iput-object v4, p0, Landroid/location/AbstractListenerManager;->mMergedRequest:Ljava/lang/Object;

    if-eqz v5, :cond_42

    invoke-virtual {p0, v4}, Landroid/location/AbstractListenerManager;->registerService(Ljava/lang/Object;)Z

    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method protected abstract unregisterService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
