.class Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "wifi_state"

    const/16 p1, 0xe

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoftAP start failed"

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoftAP state disabled"

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    if-ne p0, p1, :cond_4

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoftAP state enabled"

    goto :goto_0

    :cond_2
    const-string p1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "networkInfo"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Wifi state connected"

    :goto_0
    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Wifi state not connected yet"

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
