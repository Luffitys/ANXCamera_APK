.class Lmiui/hybrid/feature/Network$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hybrid/feature/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Network;


# direct methods
.method private constructor <init>(Lmiui/hybrid/feature/Network;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/feature/Network$NetworkStateReceiver;->this$0:Lmiui/hybrid/feature/Network;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/feature/Network$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network$NetworkStateReceiver;-><init>(Lmiui/hybrid/feature/Network;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_41

    nop

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_23
    const-string v4, "connected"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v4, p0, Lmiui/hybrid/feature/Network$NetworkStateReceiver;->this$0:Lmiui/hybrid/feature/Network;

    # getter for: Lmiui/hybrid/feature/Network;->mCallback:Lmiui/hybrid/Callback;
    invoke-static {v4}, Lmiui/hybrid/feature/Network;->access$000(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;

    move-result-object v4

    new-instance v5, Lmiui/hybrid/Response;

    invoke-direct {v5, v3}, Lmiui/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_36} :catch_37

    goto :goto_41

    :catch_37
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Network"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    return-void
.end method
