.class public Landroid/telephony/mbms/InternalGroupCallSessionCallback;
.super Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;
.source "InternalGroupCallSessionCallback.java"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)Landroid/telephony/mbms/MbmsGroupCallSessionCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    return-object v0
.end method


# virtual methods
.method public onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .registers 7

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onError(ILjava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onMiddlewareReady()V
    .registers 5

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;

    invoke-direct {v3, p0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .registers 7

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    return-void
.end method
