.class public Lmiui/util/SdCardMonitor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mListeners:Ljava/util/HashSet;

.field private mMounted:Ljava/lang/Boolean;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    new-instance v0, Lmiui/util/SdCardMonitor$1;

    invoke-direct {v0, p0}, Lmiui/util/SdCardMonitor$1;-><init>(Lmiui/util/SdCardMonitor;)V

    iput-object v0, p0, Lmiui/util/SdCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/SdCardMonitor$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/SdCardMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmiui/util/SdCardMonitor;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lmiui/util/SdCardMonitor;->mMounted:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$102(Lmiui/util/SdCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lmiui/util/SdCardMonitor;->mMounted:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/util/SdCardMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/SdCardMonitor;->notifyMountStatus(Z)V

    return-void
.end method

.method public static getInstance()Lmiui/util/SdCardMonitor;
    .locals 1

    invoke-static {}, Lmiui/util/SdCardMonitor$Holder;->access$300()Lmiui/util/SdCardMonitor;

    move-result-object v0

    return-object v0
.end method

.method public static isSdCardAvailable()Z
    .locals 1

    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    return v0
.end method

.method private notifyMountStatus(Z)V
    .locals 1

    iget-object p0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/SdCardMonitor$SdCardStatusListener;

    invoke-interface {v0, p1}, Lmiui/util/SdCardMonitor$SdCardStatusListener;->onStatusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lmiui/util/SdCardMonitor$SdCardStatusListener;)V
    .locals 3

    iget-object v0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/SdCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lmiui/util/SdCardMonitor$SdCardStatusListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object p1

    iget-object p0, p0, Lmiui/util/SdCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
