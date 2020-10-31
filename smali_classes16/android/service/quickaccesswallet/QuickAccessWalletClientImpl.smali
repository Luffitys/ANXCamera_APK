.class public Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
.super Ljava/lang/Object;
.source "QuickAccessWalletClientImpl.java"

# interfaces
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;,
        Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
    }
.end annotation


# static fields
.field private static final MSG_TIMEOUT_SERVICE:I = 0x5

.field private static final SERVICE_CONNECTION_TIMEOUT_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "QAWalletSClient"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field private final mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

.field private final mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->tryCreate(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$200(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    return-object v0
.end method

.method private checkSecureSetting(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method

.method private checkUserSetupComplete()Z
    .registers 5

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v2, v1

    :cond_13
    return v2
.end method

.method private connect()V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$zq3IA_w0x321BC_zCrZHGMkFsuo;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$zq3IA_w0x321BC_zCrZHGMkFsuo;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private connectInternal()V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_c

    const-string v0, "QAWalletSClient"

    const-string v1, "Wallet service unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-virtual {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x21

    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->resetServiceConnectionTimeout()V

    return-void
.end method

.method private createIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v0, p2, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->queryActivityForAction(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    return-object v2

    :cond_18
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isActivityEnabled(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_24

    return-object v2

    :cond_24
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private disconnectInternal(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-nez v0, :cond_c

    const-string v0, "QAWalletSClient"

    const-string v1, "already disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-eqz p1, :cond_3b

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    invoke-virtual {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    goto :goto_20

    :cond_30
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$7HA-OH57LeoccKifp5JF9tkdFeM;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$7HA-OH57LeoccKifp5JF9tkdFeM;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$57-WwM8sEJa0kRLvImQRsKL0aJA;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$57-WwM8sEJa0kRLvImQRsKL0aJA;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private executeInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 3

    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->performApiCallInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    goto :goto_14

    :cond_c
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->connect()V

    :goto_14
    return-void
.end method

.method private static isActivityEnabled(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 5

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    :try_start_c
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_14} :catch_15

    return v1

    :catch_15
    move-exception v2

    return v1
.end method

.method static synthetic lambda$getWalletCards$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 3

    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsError;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/service/quickaccesswallet/GetWalletCardsError;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;->onWalletCardRetrievalError(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method public static synthetic lambda$zq3IA_w0x321BC_zCrZHGMkFsuo(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->connectInternal()V

    return-void
.end method

.method private onConnectedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 5

    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-nez v0, :cond_10

    const-string v0, "QAWalletSClient"

    const-string/jumbo v1, "onConnectInternal but connection closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-void

    :cond_10
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-direct {p0, v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->performApiCallInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_34
    return-void
.end method

.method private performApiCallInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 6

    if-nez p2, :cond_6

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->onApiError()V

    return-void

    :cond_6
    :try_start_6
    invoke-virtual {p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->resetServiceConnectionTimeout()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_2e

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeInternal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->mDesc:Ljava/lang/String;
    invoke-static {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->access$300(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QAWalletSClient"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->onApiError()V

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    :goto_2e
    return-void
.end method

.method private static queryActivityForAction(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_20

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v2, :cond_1b

    goto :goto_20

    :cond_1b
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v2

    :cond_20
    :goto_20
    const/4 v2, 0x0

    return-object v2
.end method

.method private resetServiceConnectionTimeout()V
    .registers 6

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$GBzEQZDL0gkMzecgeo8Z6BPZbAw;

    invoke-direct {v2, p0}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$GBzEQZDL0gkMzecgeo8Z6BPZbAw;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-void
.end method


# virtual methods
.method public addWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    return-void
.end method

.method public addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 6

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;

    const-string/jumbo v2, "registerListener"

    invoke-direct {v1, p0, v2, p2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    return-void
.end method

.method public createWalletIntent()Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-virtual {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletActivity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.service.quickaccesswallet.action.VIEW_WALLET"

    invoke-direct {p0, v1, v0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->createIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public createWalletSettingsIntent()Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-virtual {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.service.quickaccesswallet.action.VIEW_WALLET_SETTINGS"

    invoke-direct {p0, v1, v0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->createIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public disconnect()V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$vq8dtsjM9qYSfiFL0YG-3THsN0s;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$vq8dtsjM9qYSfiFL0YG-3THsN0s;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getServiceLabel()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getServiceLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getShortcutLongLabel()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getShortcutLongLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getShortcutShortLabel()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getShortcutShortLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getWalletCards(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    return-void
.end method

.method public getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 7

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$1rta7e7prvwImZMSYUVLF9RWQO0;

    invoke-direct {v0, p3}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$1rta7e7prvwImZMSYUVLF9RWQO0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;

    const-string/jumbo v2, "onWalletCardsRequested"

    invoke-direct {v1, p0, v2, p2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method

.method public isWalletFeatureAvailable()Z
    .registers 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->checkUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "global_actions_panel_enabled"

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->checkSecureSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method public isWalletFeatureAvailableWhenDeviceLocked()Z
    .registers 2

    const-string/jumbo v0, "power_menu_locked_show_content"

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->checkSecureSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWalletServiceAvailable()Z
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$disconnect$1$QuickAccessWalletClientImpl()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnectInternal(Z)V

    return-void
.end method

.method public synthetic lambda$disconnectInternal$3$QuickAccessWalletClientImpl()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnectInternal(Z)V

    return-void
.end method

.method public synthetic lambda$executeApiCall$4$QuickAccessWalletClientImpl(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method

.method public synthetic lambda$onServiceConnected$5$QuickAccessWalletClientImpl(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->onConnectedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    return-void
.end method

.method public synthetic lambda$resetServiceConnectionTimeout$2$QuickAccessWalletClientImpl()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnectInternal(Z)V

    return-void
.end method

.method public notifyWalletDismissed()V
    .registers 3

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;

    const-string/jumbo v1, "onWalletDismissed"

    invoke-direct {v0, p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    invoke-static {p2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$diSuWqMhVKkvlN8SDX5FMwqS6XM;

    invoke-direct {v2, p0, v0}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$diSuWqMhVKkvlN8SDX5FMwqS6XM;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method public removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 4

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;

    const-string/jumbo v1, "unregisterListener"

    invoke-direct {v0, p0, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method

.method public selectWalletCard(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 4

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;

    const-string/jumbo v1, "onWalletCardSelected"

    invoke-direct {v0, p0, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method
