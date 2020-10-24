.class Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;
.super Lcom/xiaomi/camera/util/State;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const-string v0, "entering connecting complete state"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$3000(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x103

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/16 p1, 0x504

    if-eq v0, p1, :cond_1

    const/16 p1, 0x602

    if-eq v0, p1, :cond_1

    const p1, 0xbabe

    if-eq v0, p1, :cond_0

    const p1, 0xdead

    if-eq v0, p1, :cond_1

    return v2

    :cond_0
    return v3

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopAdvertising()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2300(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    :goto_0
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return v3

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectingCompleteState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0, v2, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I[B)V

    return v3
.end method
