.class final Lcom/google/android/play/core/remote/ServiceConnectedTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source ""


# instance fields
.field private final mService:Landroid/os/IBinder;

.field private final mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/remote/ServiceConnectionImpl;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/remote/RemoteTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/remote/ServiceConnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    iput-object p2, p0, Lcom/google/android/play/core/remote/ServiceConnectedTask;->mService:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceConnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    iget-object v0, v0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iget-object v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mRemote:Lcom/google/android/play/core/remote/IRemote;

    iget-object v2, p0, Lcom/google/android/play/core/remote/ServiceConnectedTask;->mService:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/remote/IRemote;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    iput-object v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceConnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    iget-object v0, v0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->linkToDeath()V

    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceConnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    iget-object v0, v0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    iget-object v0, v0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/remote/ServiceConnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    iget-object p0, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
