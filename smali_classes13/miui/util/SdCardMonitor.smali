.class public Lmiui/util/SdCardMonitor;
.super Ljava/lang/Object;
.source "SdCardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SdCardMonitor$SdCardStatusListener;,
        Lmiui/util/SdCardMonitor$Holder;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiui/util/SdCardMonitor$SdCardStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMounted:Ljava/lang/Boolean;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .registers 2

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
    .registers 2

    invoke-direct {p0}, Lmiui/util/SdCardMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmiui/util/SdCardMonitor;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lmiui/util/SdCardMonitor;->mMounted:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/util/SdCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lmiui/util/SdCardMonitor;->mMounted:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/util/SdCardMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/util/SdCardMonitor;->notifyMountStatus(Z)V

    return-void
.end method

.method public static getInstance()Lmiui/util/SdCardMonitor;
    .registers 1

    # getter for: Lmiui/util/SdCardMonitor$Holder;->INSTANCE:Lmiui/util/SdCardMonitor;
    invoke-static {}, Lmiui/util/SdCardMonitor$Holder;->access$300()Lmiui/util/SdCardMonitor;

    move-result-object v0

    return-object v0
.end method

.method public static isSdCardAvailable()Z
    .registers 1

    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    return v0
.end method

.method private notifyMountStatus(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/SdCardMonitor$SdCardStatusListener;

    invoke-interface {v1, p1}, Lmiui/util/SdCardMonitor$SdCardStatusListener;->onStatusChanged(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public addListener(Lmiui/util/SdCardMonitor$SdCardStatusListener;)V
    .registers 5

    iget-object v0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

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

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/SdCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2f
    iget-object v0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lmiui/util/SdCardMonitor$SdCardStatusListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SdCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/SdCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_16
    return-void
.end method
