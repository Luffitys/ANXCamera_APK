.class Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;
.super Lcom/xiaomi/camera/util/State;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method

.method private sendAuthorisationRequest(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setAuthorisationRequired(Landroid/os/Bundle;Z)V

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setPreviousCapturingMode(Landroid/os/Bundle;I)V

    invoke-static {v1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setCurrentCapturingMode(Landroid/os/Bundle;I)V

    const/16 v0, 0x1f96

    invoke-static {v1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setStreamingServerPort(Landroid/os/Bundle;I)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->jsonify(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I[B)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const-string v0, "entering connecting initiate state"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x602

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0xbabe

    if-eq p1, v0, :cond_1

    const v0, 0xdead

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2100(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopAdvertising()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2300(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    :goto_0
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$1900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2000(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$1900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->sendAuthorisationRequest(I)V

    return v1

    :pswitch_2
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const/16 p1, 0x102

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2, v3}, Lcom/xiaomi/camera/util/StateMachine;->sendMessageDelayed(IJ)V

    :cond_1
    return v1

    :cond_2
    :pswitch_3
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopAdvertising()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2300(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    :goto_1
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingInitiateState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x501
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
