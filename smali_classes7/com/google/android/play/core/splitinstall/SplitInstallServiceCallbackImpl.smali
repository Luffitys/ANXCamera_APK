.class Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;
.super Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;
.source ""


# instance fields
.field private final mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

.field final mTask:Lcom/google/android/play/core/tasks/TaskWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method


# virtual methods
.method public onCancelInstall(ILandroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "onCancelInstall(%d)"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onCompleteInstall(I)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onCompleteInstall(%d)"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onDeferredInstall(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onDeferredInstall"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onDeferredUninstall(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onDeferredUninstall"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final onError(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    new-instance v0, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onGetSession(ILandroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "onGetSession(%d)"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onGetSessionStates(Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onGetSessionStates"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onStartInstall(ILandroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "onStartInstall(%d)"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
