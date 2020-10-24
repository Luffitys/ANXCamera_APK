.class Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;
.super Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;


# direct methods
.method constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertisingResult(II)V
    .locals 2

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$002(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Z)Z

    :cond_0
    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$002(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$1;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConnectionInitiated(IILjava/lang/String;[B[B)V
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;IILjava/lang/String;[B[B)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConnectionResult(IILjava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$6;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$6;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;IILjava/lang/String;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisconnection(II)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$7;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDiscoveryResult(II)V
    .locals 2

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$202(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Z)Z

    :cond_0
    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$202(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$2;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEndpointFound(IILjava/lang/String;[B)V
    .locals 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "onEndpointFound: manager"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$3;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;IILjava/lang/String;[B)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEndpointLost(IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "onEndpointLost: manager"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$4;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPayloadReceived(II[B)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPayloadSentResult(III)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$8;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
