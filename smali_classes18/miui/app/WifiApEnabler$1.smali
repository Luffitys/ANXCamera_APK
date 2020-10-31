.class Lmiui/app/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/WifiApEnabler;


# direct methods
.method constructor <init>(Lmiui/app/WifiApEnabler;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "wifi_state"

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lmiui/app/WifiApEnabler;->handleWifiApStateChanged(I)V
    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->access$000(Lmiui/app/WifiApEnabler;I)V

    goto :goto_42

    :cond_1a
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    # invokes: Lmiui/app/WifiApEnabler;->updateAirplaneMode()V
    invoke-static {v1}, Lmiui/app/WifiApEnabler;->access$100(Lmiui/app/WifiApEnabler;)V

    goto :goto_42

    :cond_28
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    # getter for: Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z
    invoke-static {v1}, Lmiui/app/WifiApEnabler;->access$200(Lmiui/app/WifiApEnabler;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lmiui/app/WifiApEnabler;->handleWifiStateChanged(I)V
    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->access$300(Lmiui/app/WifiApEnabler;I)V

    :cond_42
    :goto_42
    return-void
.end method
