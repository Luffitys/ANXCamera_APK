.class Landroid/location/LocationManager$GetCurrentLocationTransport;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetCurrentLocationTransport"
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mRemoteCancellationSignal:Landroid/os/ICancellationSignal;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "illegal null executor"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "illegal null consumer"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mConsumer:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mRemoteCancellationSignal:Landroid/os/ICancellationSignal;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/location/LocationManager$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/location/LocationManager$GetCurrentLocationTransport;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private acceptResult(Landroid/location/Location;)V
    .registers 3

    invoke-direct {p0}, Landroid/location/LocationManager$GetCurrentLocationTransport;->remove()Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private declared-synchronized deliverResult(Landroid/location/Location;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mExecutor:Ljava/util/concurrent/Executor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget-object v0, Landroid/location/-$$Lambda$LocationManager$GetCurrentLocationTransport$TwoLg_IkGQIkPn-gbFfT0g9K-Ts;->INSTANCE:Landroid/location/-$$Lambda$LocationManager$GetCurrentLocationTransport$TwoLg_IkGQIkPn-gbFfT0g9K-Ts;

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1e

    :try_start_11
    iget-object v1, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_11 .. :try_end_16} :catch_19
    .catchall {:try_start_11 .. :try_end_16} :catchall_1e

    nop

    monitor-exit p0

    return-void

    :catch_19
    move-exception v1

    :try_start_1a
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycle()V

    throw v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic lambda$TwoLg_IkGQIkPn-gbFfT0g9K-Ts(Landroid/location/LocationManager$GetCurrentLocationTransport;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/location/LocationManager$GetCurrentLocationTransport;->acceptResult(Landroid/location/Location;)V

    return-void
.end method

.method private remove()Ljava/util/function/Consumer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mConsumer:Ljava/util/function/Consumer;

    iput-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mConsumer:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_13
    iget-object v2, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mRemoteCancellationSignal:Landroid/os/ICancellationSignal;

    iput-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mRemoteCancellationSignal:Landroid/os/ICancellationSignal;

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_20

    if-eqz v2, :cond_1f

    :try_start_1a
    invoke-interface {v2}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    move-exception v0

    :cond_1f
    :goto_1f
    return-object v1

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    invoke-direct {p0}, Landroid/location/LocationManager$GetCurrentLocationTransport;->remove()Ljava/util/function/Consumer;

    return-void
.end method

.method public fail()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/location/LocationManager$GetCurrentLocationTransport;->deliverResult(Landroid/location/Location;)V

    return-void
.end method

.method public getListenerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mConsumer:Ljava/util/function/Consumer;

    invoke-static {v0}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAlarm()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mAlarmManager:Landroid/app/AlarmManager;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    invoke-direct {p0, v0}, Landroid/location/LocationManager$GetCurrentLocationTransport;->deliverResult(Landroid/location/Location;)V

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mRemoteCancellationSignal:Landroid/os/ICancellationSignal;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    invoke-direct {p0, p1}, Landroid/location/LocationManager$GetCurrentLocationTransport;->deliverResult(Landroid/location/Location;)V

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/location/LocationManager$GetCurrentLocationTransport;->deliverResult(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onRemoved()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/location/LocationManager$GetCurrentLocationTransport;->deliverResult(Landroid/location/Location;)V

    return-void
.end method

.method public declared-synchronized register(Landroid/app/AlarmManager;Landroid/os/ICancellationSignal;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mConsumer:Ljava/util/function/Consumer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iput-object p1, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v3, 0x7530

    add-long/2addr v3, v0

    const-string v5, "GetCurrentLocation"

    const/4 v7, 0x0

    move-object v1, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mRemoteCancellationSignal:Landroid/os/ICancellationSignal;
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
