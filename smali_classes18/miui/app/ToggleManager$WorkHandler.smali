.class final Lmiui/app/ToggleManager$WorkHandler;
.super Landroid/os/Handler;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_APPLY_BRIGHTNESS:I = 0x3

.field private static final MSG_TOGGLE_BLUETOOTH:I = 0x2

.field private static final MSG_TOGGLE_SYNC:I = 0x5

.field private static final MSG_TOGGLE_WIFI:I = 0x1

.field private static final MSG_UPDATE_DATA:I = 0x6

.field private static final MSG_UPDATE_SYNC:I = 0x4


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method public constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_52

    goto :goto_51

    :pswitch_b
    iget-object v0, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateDataToggle()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$800(Lmiui/app/ToggleManager;)V

    goto :goto_51

    :pswitch_11
    iget-object v0, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->toggleSyncIntenal()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$700(Lmiui/app/ToggleManager;)V

    goto :goto_51

    :pswitch_17
    iget-object v0, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->isSyncOn()Z
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$500(Lmiui/app/ToggleManager;)Z

    move-result v0

    iget-object v2, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lmiui/app/ToggleManager;->access$600(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_51

    :pswitch_2c
    iget-object v0, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_35

    move v1, v2

    :cond_35
    # invokes: Lmiui/app/ToggleManager;->applyBrightnessIntenal(IZ)V
    invoke-static {v0, v3, v1}, Lmiui/app/ToggleManager;->access$400(Lmiui/app/ToggleManager;IZ)V

    goto :goto_51

    :pswitch_39
    iget-object v0, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_40

    move v1, v2

    :cond_40
    # invokes: Lmiui/app/ToggleManager;->toggleBluetooth(Z)V
    invoke-static {v0, v1}, Lmiui/app/ToggleManager;->access$300(Lmiui/app/ToggleManager;Z)V

    goto :goto_51

    :pswitch_44
    # getter for: Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lmiui/app/ToggleManager;->access$200()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_4d

    move v1, v2

    :cond_4d
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    nop

    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_44
        :pswitch_39
        :pswitch_2c
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method
