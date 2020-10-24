.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstaller;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

.field private final splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public install(ILjava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-direct {v1, p1, v2, p0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;-><init>(ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
