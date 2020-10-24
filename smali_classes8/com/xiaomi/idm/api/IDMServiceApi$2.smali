.class Lcom/xiaomi/idm/api/IDMServiceApi$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/idm/api/IDMServiceApi;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/api/IDMServiceApi;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServiceApi$2;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IDMServiceApi"

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMServiceApi$2;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMServiceApi;->access$300(Lcom/xiaomi/idm/api/IDMServiceApi;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getIDMServiceProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    iget-object p2, p0, Lcom/xiaomi/idm/api/IDMServiceApi$2;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    invoke-static {p2}, Lcom/xiaomi/idm/api/IDMServiceApi;->access$400(Lcom/xiaomi/idm/api/IDMServiceApi;)Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object p2

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServiceApi$2;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->toByteArray()[B

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->event(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "onEvent, but service unavailable"

    invoke-static {v3, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
