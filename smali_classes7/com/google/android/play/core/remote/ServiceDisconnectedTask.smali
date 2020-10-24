.class final Lcom/google/android/play/core/remote/ServiceDisconnectedTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source ""


# instance fields
.field private final mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/remote/ServiceConnectionImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/remote/RemoteTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    iget-object v0, v0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->unlinkToDeath()V

    iget-object p0, p0, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    iget-object p0, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    return-void
.end method
