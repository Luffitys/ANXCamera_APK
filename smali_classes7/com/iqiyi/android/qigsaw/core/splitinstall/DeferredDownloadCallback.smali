.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;


# instance fields
.field private final splitInfoList:Ljava/util/List;

.field private final splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;->splitInfoList:Ljava/util/List;

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 0

    return-void
.end method

.method public onCanceling()V
    .locals 0

    return-void
.end method

.method public onCompleted()V
    .locals 3

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitBackgroundExecutor;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDeferredInstallTask;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;->splitInfoList:Ljava/util/List;

    invoke-direct {v1, v2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDeferredInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(I)V
    .locals 0

    return-void
.end method

.method public onProgress(J)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
