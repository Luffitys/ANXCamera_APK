.class public final Landroid/app/prediction/AppPredictor;
.super Ljava/lang/Object;
.source "AppPredictor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppPredictor$CallbackWrapper;,
        Landroid/app/prediction/AppPredictor$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPredictionManager:Landroid/app/prediction/IPredictionManager;

.field private final mRegisteredCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/prediction/AppPredictor$Callback;",
            "Landroid/app/prediction/AppPredictor$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/prediction/AppPredictionContext;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    const-string v0, "app_prediction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/prediction/IPredictionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    new-instance v1, Landroid/app/prediction/AppPredictionSessionId;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/prediction/AppPredictionSessionId;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    :try_start_4f
    iget-object v2, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    invoke-interface {v2, p2, v1}, Landroid/app/prediction/IPredictionManager;->createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_54} :catch_55

    goto :goto_60

    :catch_55
    move-exception v1

    sget-object v2, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create predictor"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_60
    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :try_start_e
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1}, Landroid/app/prediction/IPredictionManager;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    move-exception v0

    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify app target event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_21
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->destroy()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_19

    :cond_14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_19
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getSessionId()Landroid/app/prediction/AppPredictionSessionId;
    .registers 2

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    return-object v0
.end method

.method public notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .registers 5

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    :try_start_8
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1, p1}, Landroid/app/prediction/IPredictionManager;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v0

    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify app target event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTargetId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_21

    :try_start_8
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/prediction/IPredictionManager;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_20

    :catch_15
    move-exception v0

    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify location shown event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_20
    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V
    .registers 6

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    :try_start_11
    new-instance v0, Landroid/app/prediction/AppPredictor$CallbackWrapper;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/app/prediction/-$$Lambda$1lqxDplfWlUwgBrOynX9L0oK_uA;

    invoke-direct {v1, p2}, Landroid/app/prediction/-$$Lambda$1lqxDplfWlUwgBrOynX9L0oK_uA;-><init>(Landroid/app/prediction/AppPredictor$Callback;)V

    invoke-direct {v0, p1, v1}, Landroid/app/prediction/AppPredictor$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v2, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v1, v2, v0}, Landroid/app/prediction/IPredictionManager;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2a} :catch_2c

    nop

    goto :goto_37

    :catch_2c
    move-exception v0

    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register for prediction updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_37
    return-void

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPredictionUpdate()V
    .registers 4

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    :try_start_8
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1}, Landroid/app/prediction/IPredictionManager;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v0

    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to request prediction update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sortTargets(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_26

    :try_start_8
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v3, Landroid/app/prediction/AppPredictor$CallbackWrapper;

    invoke-direct {v3, p2, p3}, Landroid/app/prediction/AppPredictor$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2, v3}, Landroid/app/prediction/IPredictionManager;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_25

    :catch_1a
    move-exception v0

    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to sort targets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_25
    return-void

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V
    .registers 5

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/app/prediction/AppPredictor;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppPredictor$CallbackWrapper;

    iget-object v1, p0, Landroid/app/prediction/AppPredictor;->mPredictionManager:Landroid/app/prediction/IPredictionManager;

    iget-object v2, p0, Landroid/app/prediction/AppPredictor;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v1, v2, v0}, Landroid/app/prediction/IPredictionManager;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception v0

    sget-object v1, Landroid/app/prediction/AppPredictor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister for prediction updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_2c
    return-void

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
