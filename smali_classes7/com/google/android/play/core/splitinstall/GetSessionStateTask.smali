.class final Lcom/google/android/play/core/splitinstall/GetSessionStateTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source ""


# instance fields
.field private final mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

.field private final mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

.field private final sessionId:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;ILcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/play/core/remote/RemoteTask;-><init>(Lcom/google/android/play/core/tasks/TaskWrapper;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iput p3, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->sessionId:I

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->getIInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v1, v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->sessionId:I

    new-instance v3, Lcom/google/android/play/core/splitinstall/GetSessionStateCallback;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/splitinstall/GetSessionStateCallback;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;->getSessionState(Ljava/lang/String;ILcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->sessionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getSessionState(%d)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    :goto_0
    return-void
.end method
