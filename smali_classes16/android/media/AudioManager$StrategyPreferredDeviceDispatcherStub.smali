.class final Landroid/media/AudioManager$StrategyPreferredDeviceDispatcherStub;
.super Landroid/media/IStrategyPreferredDeviceDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrategyPreferredDeviceDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>(Landroid/media/AudioManager;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioManager$StrategyPreferredDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IStrategyPreferredDeviceDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioManager$StrategyPreferredDeviceDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic lambda$dispatchPrefDeviceChanged$0(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)V
    .registers 4

    iget-object v0, p0, Landroid/media/AudioManager$PrefDevListenerInfo;->mListener:Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;->onPreferredDeviceForStrategyChanged(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)V

    return-void
.end method


# virtual methods
.method public dispatchPrefDeviceChanged(ILandroid/media/AudioDeviceAttributes;)V
    .registers 11

    iget-object v0, p0, Landroid/media/AudioManager$StrategyPreferredDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioManager;->access$100(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/AudioManager$StrategyPreferredDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioManager;->access$200(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/media/AudioManager$StrategyPreferredDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioManager;->access$200(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_57

    :cond_1c
    iget-object v1, p0, Landroid/media/AudioManager$StrategyPreferredDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    # getter for: Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioManager;->access$200(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_59

    nop

    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategyWithId(I)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager$PrefDevListenerInfo;

    iget-object v6, v5, Landroid/media/AudioManager$PrefDevListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDeviceDispatcherStub$7E5sSMD41PYjkWfIKdg4SkBnq7c;

    invoke-direct {v7, v5, v0, p2}, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDeviceDispatcherStub$7E5sSMD41PYjkWfIKdg4SkBnq7c;-><init>(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_52

    goto :goto_36

    :cond_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_57
    :goto_57
    :try_start_57
    monitor-exit v0

    return-void

    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_59

    throw v1
.end method
