.class Lmiui/app/ToggleManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_76

    :cond_1d
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$1000(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateBluetoothToggle()V
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$1100(Lmiui/app/ToggleManager;)V

    goto :goto_7b

    :cond_38
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    goto :goto_7b

    :cond_4b
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateFlightModeToggle()V
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$1200(Lmiui/app/ToggleManager;)V

    goto :goto_7b

    :cond_59
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    # setter for: Lmiui/app/ToggleManager;->mIsSimMissing:Z
    invoke-static {v1, v2}, Lmiui/app/ToggleManager;->access$1302(Lmiui/app/ToggleManager;Z)Z

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->postUpdateDataToggleAsync()V
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$1400(Lmiui/app/ToggleManager;)V

    goto :goto_7b

    :cond_76
    :goto_76
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1, p2}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    :cond_7b
    :goto_7b
    return-void
.end method
