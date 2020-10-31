.class public Lmiui/hybrid/feature/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hybrid/feature/Network$NetworkStateReceiver;
    }
.end annotation


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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/feature/Network;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/feature/Network;->mCallback:Lmiui/hybrid/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->unregisterNotification(Lmiui/hybrid/NativeInterface;)V

    return-void
.end method

.method private disableNotification(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 4

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Network;->unregisterNotification(Lmiui/hybrid/NativeInterface;)V

    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    return-object v0
.end method

.method private enableNotification(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 7

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Network;->unregisterNotification(Lmiui/hybrid/NativeInterface;)V

    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v2

    iput-object v2, p0, Lmiui/hybrid/feature/Network;->mCallback:Lmiui/hybrid/Callback;

    new-instance v2, Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/hybrid/feature/Network$NetworkStateReceiver;-><init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/feature/Network$1;)V

    iput-object v2, p0, Lmiui/hybrid/feature/Network;->mReceiver:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    iget-object v4, p0, Lmiui/hybrid/feature/Network;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lmiui/hybrid/feature/Network$1;

    invoke-direct {v2, p0, v0}, Lmiui/hybrid/feature/Network$1;-><init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V

    iput-object v2, p0, Lmiui/hybrid/feature/Network;->mLifecycleListener:Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0, v2}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    return-object v3
.end method

.method private isMetered(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 9

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    nop

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1a
    const-string v4, "metered"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Network"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    new-instance v4, Lmiui/hybrid/Response;

    invoke-direct {v4, v3}, Lmiui/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    return-object v4
.end method

.method private unregisterNotification(Lmiui/hybrid/NativeInterface;)V
    .registers 4

    iget-object v0, p0, Lmiui/hybrid/feature/Network;->mReceiver:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmiui/hybrid/feature/Network;->mLifecycleListener:Lmiui/hybrid/LifecycleListener;

    invoke-virtual {p1, v1}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    iget-object v1, p0, Lmiui/hybrid/feature/Network;->mReceiver:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/hybrid/feature/Network;->mReceiver:Lmiui/hybrid/feature/Network$NetworkStateReceiver;

    :cond_15
    return-void
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .registers 4

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object v1

    :cond_f
    const-string v1, "enableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object v1

    :cond_1a
    const-string v1, "disableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object v1

    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 6

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->isMetered(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v1

    return-object v1

    :cond_11
    const-string v1, "enableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->enableNotification(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v1

    return-object v1

    :cond_1e
    const-string v1, "disableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->disableNotification(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v1

    return-object v1

    :cond_2b
    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xcc

    const-string v3, "no such action"

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
