.class final Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;

.field private final splitInstallRequest:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->splitInstallRequest:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    return-void
.end method

.method private makeInstalledSessionState([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "status"

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_code"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "module_names"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "total_bytes_to_download"

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "bytes_downloaded"

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getRegistry()Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->splitInstallRequest:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->getModuleNames()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->makeInstalledSessionState([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->createFrom(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->notifyListeners(Ljava/lang/Object;)V

    return-void
.end method
