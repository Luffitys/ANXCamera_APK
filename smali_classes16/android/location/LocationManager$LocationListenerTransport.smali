.class Landroid/location/LocationManager$LocationListenerTransport;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field private volatile mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Landroid/location/LocationListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .registers 4

    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    const-string v0, "invalid null listener"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p2, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/location/LocationManager$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/location/LocationManager$LocationListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    return-void
.end method

.method private acceptLocation(Ljava/util/concurrent/Executor;Landroid/location/Location;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_20

    if-eq p1, v0, :cond_8

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->locationCallbackFinished()V

    return-void

    :cond_8
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_20

    :try_start_c
    iget-object v2, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v2, p2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    :try_start_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_20

    nop

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->locationCallbackFinished()V

    nop

    return-void

    :catchall_1a
    move-exception v2

    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v2
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->locationCallbackFinished()V

    throw v0
.end method

.method private acceptProviderChange(Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_28

    if-eq p1, v0, :cond_8

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->locationCallbackFinished()V

    return-void

    :cond_8
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_28

    if-eqz p3, :cond_14

    :try_start_e
    iget-object v2, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v2, p2}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    iget-object v2, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v2, p2}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_22

    :goto_19
    :try_start_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_28

    nop

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->locationCallbackFinished()V

    nop

    return-void

    :catchall_22
    move-exception v2

    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v2
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->locationCallbackFinished()V

    throw v0
.end method

.method public static synthetic lambda$C3xaM63A8GAwfJNN4R634OLsvDc(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/location/LocationManager$LocationListenerTransport;->acceptProviderChange(Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$enkW18B0WwpQkSIMmVChmQ2YwC8(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/concurrent/Executor;Landroid/location/Location;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/location/LocationManager$LocationListenerTransport;->acceptLocation(Ljava/util/concurrent/Executor;Landroid/location/Location;)V

    return-void
.end method

.method private locationCallbackFinished()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;
    invoke-static {v0}, Landroid/location/LocationManager;->access$000(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/location/ILocationManager;->locationCallbackFinished(Landroid/location/ILocationListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public getKey()Landroid/location/LocationListener;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method public getListenerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-static {v0}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onRemoved$0$LocationManager$LocationListenerTransport(Ljava/util/concurrent/Executor;)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/location/LocationManager$LocationListenerTransport;->unregister()V

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v0}, Landroid/location/LocationManager;->access$800(Landroid/location/LocationManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Landroid/location/LocationManager$LocationListenerTransport;->this$0:Landroid/location/LocationManager;

    # getter for: Landroid/location/LocationManager;->mListeners:Landroid/util/ArrayMap;
    invoke-static {v1}, Landroid/location/LocationManager;->access$800(Landroid/location/LocationManager;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v1, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$enkW18B0WwpQkSIMmVChmQ2YwC8;->INSTANCE:Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$enkW18B0WwpQkSIMmVChmQ2YwC8;

    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    :try_start_f
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycle()V

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->locationCallbackFinished()V

    throw v2
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v1, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;->INSTANCE:Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p0, v0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    :try_start_14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_14 .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycle()V

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->locationCallbackFinished()V

    throw v2
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v1, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;->INSTANCE:Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$C3xaM63A8GAwfJNN4R634OLsvDc;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p0, v0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    :try_start_14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_14 .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycle()V

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->locationCallbackFinished()V

    throw v2
.end method

.method public onRemoved()V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$fHjQXipQePznoEyxLuCfUO-YP1Y;

    invoke-direct {v1, p0, v0}, Landroid/location/-$$Lambda$LocationManager$LocationListenerTransport$fHjQXipQePznoEyxLuCfUO-YP1Y;-><init>(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public register(Ljava/util/concurrent/Executor;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null executor"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public unregister()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
