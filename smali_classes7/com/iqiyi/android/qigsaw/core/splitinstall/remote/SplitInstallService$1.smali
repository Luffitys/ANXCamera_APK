.class Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService$1;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelInstall(Ljava/lang/String;ILandroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnCancelInstallTask;

    invoke-direct {p1, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnCancelInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deferredInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredInstallTask;

    invoke-direct {p1, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deferredUninstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredUninstallTask;

    invoke-direct {p1, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredUninstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSessionState(Ljava/lang/String;ILcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStateTask;

    invoke-direct {p1, p3, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStateTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSessionStates(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStatesTask;

    invoke-direct {p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStatesTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnStartInstallTask;

    invoke-direct {p1, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnStartInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
