.class final Lcom/google/android/play/core/remote/ServiceConnectionImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/remote/RemoteManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iget-object v0, v0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v0, Lcom/google/android/play/core/remote/ServiceConnectedTask;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/remote/ServiceConnectedTask;-><init>(Lcom/google/android/play/core/remote/ServiceConnectionImpl;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/remote/RemoteManager;->post(Lcom/google/android/play/core/remote/RemoteTask;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iget-object v0, v0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v0, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;-><init>(Lcom/google/android/play/core/remote/ServiceConnectionImpl;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/remote/RemoteManager;->post(Lcom/google/android/play/core/remote/RemoteTask;)V

    return-void
.end method
