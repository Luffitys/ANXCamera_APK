.class Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

.field final synthetic val$appCommData:[B

.field final synthetic val$appCompNum:[B

.field final synthetic val$appEndPointId:I

.field final synthetic val$appEndPointInfo:Ljava/lang/String;

.field final synthetic val$appId:I


# direct methods
.method constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;IILjava/lang/String;[B[B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

    iput p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appId:I

    iput p3, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appEndPointId:I

    iput-object p4, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appEndPointInfo:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appCompNum:[B

    iput-object p6, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appCommData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

    iget-object v0, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object v1, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->miAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    iget v2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appId:I

    iget v3, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appEndPointId:I

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appEndPointInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v4, v0

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appCompNum:[B

    const/4 v5, 0x0

    if-nez v0, :cond_1

    new-array v0, v5, [B

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$5;->val$appCommData:[B

    if-nez p0, :cond_2

    new-array p0, v5, [B

    :cond_2
    move-object v6, p0

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onConnectionInitiated(IILjava/lang/String;[B[B)V

    return-void
.end method
