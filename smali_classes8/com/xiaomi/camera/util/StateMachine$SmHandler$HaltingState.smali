.class Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;
.super Lcom/xiaomi/camera/util/State;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/util/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;->this$0:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/StateMachine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;->this$0:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$300(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method
