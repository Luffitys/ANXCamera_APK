.class Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;


# direct methods
.method constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2$1;->this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2$1;->this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->miAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void
.end method
