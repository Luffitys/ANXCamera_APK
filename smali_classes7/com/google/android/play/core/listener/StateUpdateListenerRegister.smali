.class public abstract Lcom/google/android/play/core/listener/StateUpdateListenerRegister;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private final mLock:Ljava/lang/Object;

.field private final mStateUpdatedListeners:Ljava/util/Set;

.field protected final playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

.field private final receiver:Lcom/google/android/play/core/listener/StateUpdatedReceiver;


# direct methods
.method protected constructor <init>(Lcom/google/android/play/core/splitcompat/util/PlayCore;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mStateUpdatedListeners:Ljava/util/Set;

    new-instance v0, Lcom/google/android/play/core/listener/StateUpdatedReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/listener/StateUpdatedReceiver;-><init>(Lcom/google/android/play/core/listener/StateUpdateListenerRegister;)V

    iput-object v0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->receiver:Lcom/google/android/play/core/listener/StateUpdatedReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    iput-object p2, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->intentFilter:Landroid/content/IntentFilter;

    iput-object p3, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final notifyListeners(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mStateUpdatedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/listener/StateUpdatedListener;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/listener/StateUpdatedListener;->onStateUpdate(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract onReceived(Landroid/content/Intent;)V
.end method

.method public final registerListener(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string v2, "registerListener"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mStateUpdatedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string p1, "listener has been registered!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mStateUpdatedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mStateUpdatedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->receiver:Lcom/google/android/play/core/listener/StateUpdatedReceiver;

    iget-object p0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterListener(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string v2, "unregisterListener"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mStateUpdatedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    iget-object v1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->mStateUpdatedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->receiver:Lcom/google/android/play/core/listener/StateUpdatedReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object v1, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver not registered: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, p0, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
