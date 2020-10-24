.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;


# instance fields
.field private final installer:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstaller;

.field private final sessionId:I

.field private final sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

.field private final sessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

.field private final splitInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionId:I

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitBackgroundExecutor;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p1, p3, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->installer:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstaller;

    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->splitInfoList:Ljava/util/List;

    invoke-interface {p3, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    return-void
.end method

.method private broadcastSessionStatusChange()V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    invoke-interface {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    return-void
.end method

.method private onInstall()V
    .locals 2

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->installer:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstaller;

    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionId:I

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->splitInfoList:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstaller;->install(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 3

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionId:I

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->broadcastSessionStatusChange()V

    return-void
.end method

.method public onCanceling()V
    .locals 3

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionId:I

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->broadcastSessionStatusChange()V

    return-void
.end method

.method public onCompleted()V
    .locals 3

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionId:I

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->broadcastSessionStatusChange()V

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->onInstall()V

    return-void
.end method

.method public onError(I)V
    .locals 2

    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    const/16 v0, -0xa

    invoke-virtual {p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->setErrorCode(I)V

    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionId:I

    const/4 v1, 0x6

    invoke-interface {p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->broadcastSessionStatusChange()V

    return-void
.end method

.method public onProgress(J)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    invoke-virtual {v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->setBytesDownloaded(J)V

    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionId:I

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->broadcastSessionStatusChange()V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->sessionId:I

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->broadcastSessionStatusChange()V

    return-void
.end method
