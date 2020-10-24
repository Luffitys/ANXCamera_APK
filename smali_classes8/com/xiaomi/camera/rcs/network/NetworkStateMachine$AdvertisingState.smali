.class Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;
.super Lcom/xiaomi/camera/util/State;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const-string v0, "entering advertising state"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$1800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x300

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x602

    if-eq p1, v0, :cond_1

    const v0, 0xbabe

    if-eq p1, v0, :cond_0

    const v0, 0xdead

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2100(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$1900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2000(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V

    :cond_0
    return v1

    :cond_1
    :pswitch_2
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopAdvertising()V

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const/16 p1, 0x101

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2, v3}, Lcom/xiaomi/camera/util/StateMachine;->sendMessageDelayed(IJ)V

    return v1

    :pswitch_data_0
    .packed-switch 0x502
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
