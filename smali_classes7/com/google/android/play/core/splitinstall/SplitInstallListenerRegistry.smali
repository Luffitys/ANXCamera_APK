.class final Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;
.super Lcom/google/android/play/core/listener/StateUpdateListenerRegister;
.source ""


# instance fields
.field private final mLoader:Lcom/google/android/play/core/splitinstall/SplitSessionLoader;

.field final mMainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitSessionLoaderSingleton;->get()Lcom/google/android/play/core/splitinstall/SplitSessionLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;-><init>(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/SplitSessionLoader;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/SplitSessionLoader;)V
    .locals 3

    new-instance v0, Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string v1, "SplitInstallListenerRegistry"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.iqiyi.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;-><init>(Lcom/google/android/play/core/splitcompat/util/PlayCore;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;->mMainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;->mLoader:Lcom/google/android/play/core/splitinstall/SplitSessionLoader;

    return-void
.end method


# virtual methods
.method protected onReceived(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "session_state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->createFrom(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;->mLoader:Lcom/google/android/play/core/splitinstall/SplitSessionLoader;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->splitFileIntents:Ljava/util/List;

    new-instance v2, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;

    invoke-direct {v2, p0, p1}, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/play/core/splitinstall/SplitSessionLoader;->load(Ljava/util/List;Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->notifyListeners(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
