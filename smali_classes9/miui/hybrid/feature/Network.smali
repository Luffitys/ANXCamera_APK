.class public Lmiui/hybrid/feature/Network;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final ACTION_DISABLE_NOTIFICATION:Ljava/lang/String; = "disableNotification"

.field private static final ACTION_ENABLE_NOTIFICATION:Ljava/lang/String; = "enableNotification"

.field private static final ACTION_GET_TYPE:Ljava/lang/String; = "getType"

.field private static final KEY_CONNECTED:Ljava/lang/String; = "connected"

.field private static final KEY_METERED:Ljava/lang/String; = "metered"

.field private static final LOG_TAG:Ljava/lang/String; = "Network"


# instance fields
.field private mCallback:Lmiui/hybrid/Callback;

.field private mFilter:Landroid/content/IntentFilter;

.field private mLifecycleListener:Lmiui/hybrid/LifecycleListener;

.field private mReceiver:Lmiui/hybrid/feature/Network$NetworkStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/feature/Network;->mFilter:Landroid/content/IntentFilter;

    const-string p0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;
    .locals 0

    iget-object p0, p0, Lmiui/hybrid/feature/Network;->mCallback:Lmiui/hybrid/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->unregisterNotification(Lmiui/hybrid/NativeInterface;)V

    return-void
.end method

.method private disableNotification(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 0

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->unregisterNotification(Lmiui/hybrid/NativeInterface;)V

    new-instance p0, Lmiui/hybrid/Response;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Lmiui/hybrid/Response;-><init>(I)V

    return-object p0
.end method

.method private enableNotification(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 4

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Network;->unregisterNotification(Lmiui/hybrid/NativeInterface;)V

    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object p1

    iput-object p1, p0, Lmiui/hybrid/feature/Network;->mCallback:Lmiui/hybrid/Callback;

    new-instance p1, Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lmiui/hybrid/feature/Network$NetworkStateReceiver;-><init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/feature/Network$1;)V

    iput-object p1, p0, Lmiui/hybrid/feature/Network;->mReceiver:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    iget-object v3, p0, Lmiui/hybrid/feature/Network;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, p1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lmiui/hybrid/feature/Network$1;

    invoke-direct {p1, p0, v0}, Lmiui/hybrid/feature/Network$1;-><init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V

    iput-object p1, p0, Lmiui/hybrid/feature/Network;->mLifecycleListener:Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0, p1}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    return-object v2
.end method

.method private isMetered(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 1

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "metered"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Network"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Lmiui/hybrid/Response;

    invoke-direct {p0, p1}, Lmiui/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method private unregisterNotification(Lmiui/hybrid/NativeInterface;)V
    .locals 2

    iget-object v0, p0, Lmiui/hybrid/feature/Network;->mReceiver:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmiui/hybrid/feature/Network;->mLifecycleListener:Lmiui/hybrid/LifecycleListener;

    invoke-virtual {p1, v1}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    iget-object p1, p0, Lmiui/hybrid/feature/Network;->mReceiver:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/hybrid/feature/Network;->mReceiver:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 0

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getType"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object p0

    :cond_0
    const-string p1, "enableNotification"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object p0

    :cond_1
    const-string p1, "disableNotification"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 2

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->isMetered(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "enableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->enableNotification(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "disableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->disableNotification(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lmiui/hybrid/Response;

    const/16 p1, 0xcc

    const-string v0, "no such action"

    invoke-direct {p0, p1, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0

    return-void
.end method
