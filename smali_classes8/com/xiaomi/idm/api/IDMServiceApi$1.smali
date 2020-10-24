.class Lcom/xiaomi/idm/api/IDMServiceApi$1;
.super Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/idm/api/IDMServiceApi;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/api/IDMServiceApi;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServiceApi$1;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest([B)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMServiceApi"

    const-string v3, "onRequest"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onRequest called but param is null. Ignore request."

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnRequest;->parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$OnRequest;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onRequest onRequestParam is null"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnRequest;->getIdmRequest()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    move-result-object p1

    if-nez p1, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onRequest called but parse failed. Ignore request."

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMServiceApi$1;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    invoke-static {v3}, Lcom/xiaomi/idm/api/IDMServiceApi;->access$000(Lcom/xiaomi/idm/api/IDMServiceApi;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/idm/api/IDMService;

    invoke-virtual {v4}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/xiaomi/idm/api/IDMService;->request(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequest service not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x6

    invoke-static {p1}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_6

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "onRequest response null"

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x3

    invoke-static {p1}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p1

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMServiceApi$1;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    invoke-static {v1}, Lcom/xiaomi/idm/api/IDMServiceApi;->access$100(Lcom/xiaomi/idm/api/IDMServiceApi;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_1
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$Response;->newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Response$Builder;->setIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)Lcom/xiaomi/mi_connect_service/IPCLParam$Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Response$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/IPCLParam$Response;

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMServiceApi$1;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMServiceApi;->access$200(Lcom/xiaomi/idm/api/IDMServiceApi;)Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServiceApi$1;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    iget p0, p0, Lcom/xiaomi/idm/api/IDMApi;->mInstanceId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Response;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->response(I[B)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onRequest, service unavailable"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onSetEventCallback([B)I
    .locals 7

    const-string v0, "IDMServiceApi"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez p1, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "onSetEventCallback eventParam is null"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "onSetEventCallback idmEvent is null"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEid()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEnable()Z

    move-result p1

    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMServiceApi$1;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    invoke-static {v4}, Lcom/xiaomi/idm/api/IDMServiceApi;->access$000(Lcom/xiaomi/idm/api/IDMServiceApi;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/idm/api/IDMService;

    invoke-virtual {v5}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v5, v2, p1}, Lcom/xiaomi/idm/api/IDMService;->enableEvent(IZ)I

    move-result v3

    invoke-virtual {v5}, Lcom/xiaomi/idm/api/IDMService;->isEventEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServiceApi$1;->this$0:Lcom/xiaomi/idm/api/IDMServiceApi;

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServiceApi;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    invoke-virtual {v5, p0}, Lcom/xiaomi/idm/api/IDMService;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v1}, Lcom/xiaomi/idm/api/IDMService;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;)V

    :cond_5
    :goto_2
    return v3
.end method
