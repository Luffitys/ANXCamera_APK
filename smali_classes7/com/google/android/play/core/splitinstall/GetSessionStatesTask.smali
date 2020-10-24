.class final Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source ""


# instance fields
.field private final mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

.field private final mTask:Lcom/google/android/play/core/tasks/TaskWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/play/core/remote/RemoteTask;-><init>(Lcom/google/android/play/core/tasks/TaskWrapper;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->getIInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v1, v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    new-instance v2, Lcom/google/android/play/core/splitinstall/GetSessionStatesCallback;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v2, v3, v4}, Lcom/google/android/play/core/splitinstall/GetSessionStatesCallback;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;->getSessionStates(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getSessionStates"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    :goto_0
    return-void
.end method
