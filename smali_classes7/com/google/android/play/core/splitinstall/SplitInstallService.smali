.class final Lcom/google/android/play/core/splitinstall/SplitInstallService;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mPackageName:Ljava/lang/String;

.field final mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-class v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/play/core/splitinstall/OnBinderDiedListenerImpl;

    invoke-direct {v6, p0}, Lcom/google/android/play/core/splitinstall/OnBinderDiedListenerImpl;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.iqiyi.android.play.core.splitinstall.BIND_SPLIT_INSTALL_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance p2, Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    sget-object v5, Lcom/google/android/play/core/splitinstall/SplitRemoteImpl;->sInstance:Lcom/google/android/play/core/remote/IRemote;

    const-string v3, "SplitInstallService"

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/remote/RemoteManager;-><init>(Landroid/content/Context;Lcom/google/android/play/core/splitcompat/util/PlayCore;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/remote/IRemote;Lcom/google/android/play/core/remote/OnBinderDiedListener;)V

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    return-void
.end method

.method static wrapModuleNames(Ljava/util/Collection;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "module_name"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static wrapVersionCode()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playcore_version_code"

    const/16 v2, 0x271a

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method cancelInstall(I)Lcom/google/android/play/core/tasks/Task;
    .locals 4

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "cancelInstall(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/CancelInstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/CancelInstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;ILcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "deferredInstall(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "deferredUninstall(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method getSessionState(I)Lcom/google/android/play/core/tasks/Task;
    .locals 4

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getSessionState(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;ILcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method getSessionStates()Lcom/google/android/play/core/tasks/Task;
    .locals 3

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSessionStates"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;

    invoke-direct {v2, p0, v0, v0}, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method onBinderDied()V
    .locals 3

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onBinderDied"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "status"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_code"

    const/16 v2, -0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const/high16 v0, 0x200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method startInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "startInstall(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/StartInstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/StartInstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method
