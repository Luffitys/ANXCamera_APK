.class Lcom/xiaomi/idm/api/IDMClientApi$1;
.super Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/idm/api/IDMClientApi;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/api/IDMClientApi;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent([B)V
    .locals 3

    const-string v0, "IDMClientApi"

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;->parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "onEvent eventParam is null"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEid()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/idm/api/IDMClientApi;->generateEventKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {p0}, Lcom/xiaomi/idm/api/IDMClientApi;->access$600(Lcom/xiaomi/idm/api/IDMClientApi;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/IDMService$Event;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEvent()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/api/IDMService$Event;->onEvent([B)V

    :cond_1
    return-void
.end method

.method public onResponse([B)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMClientApi"

    const-string v3, "onResponse"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "IDMClientApi"

    const-string v0, "onResponse param is null"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnResponse;->parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$OnResponse;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IDMClientApi"

    invoke-static {v3, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnResponse;->getIdmResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {v1}, Lcom/xiaomi/idm/api/IDMClientApi;->access$400(Lcom/xiaomi/idm/api/IDMClientApi;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {v2}, Lcom/xiaomi/idm/api/IDMClientApi;->access$400(Lcom/xiaomi/idm/api/IDMClientApi;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/IDMClientApi$Call;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_1

    :try_start_2
    iget-object v1, v0, Lcom/xiaomi/idm/api/IDMClientApi$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    iget-object v2, v0, Lcom/xiaomi/idm/api/IDMClientApi$Call;->action:Lcom/xiaomi/idm/api/IDMService$Action;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getResponse()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaomi/idm/api/IDMService$Action;->parseResponse([B)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/idm/task/CallFuture;->setDone(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDMClientApi"

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/xiaomi/idm/api/IDMClientApi$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/RmiException;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/xiaomi/idm/api/IDMClientApi$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/task/CallFuture;->setFailed(ILjava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "IDMClientApi"

    const-string v1, "onResponse responseParam is null"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {p0}, Lcom/xiaomi/idm/api/IDMClientApi;->access$500(Lcom/xiaomi/idm/api/IDMClientApi;)V

    return-void
.end method

.method public onServiceConnectStatus([B)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDMClientApi"

    invoke-static {v1, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->getConnected()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {v1}, Lcom/xiaomi/idm/api/IDMClientApi;->access$700(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {p0}, Lcom/xiaomi/idm/api/IDMClientApi;->access$800(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/IDMProcessCallback;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMProcessCallback;->onServiceConnectStatus(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onServiceFound([B)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDMClientApi"

    const-string v2, "onServiceFound"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClientApi;->access$200(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/idm/api/IDMClientApi$IDMClientCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClientApi;->access$300(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceFound;->parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceFound;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMClientApi;->access$300(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceFound;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;->createIDMService(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/IDMService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClientApi$1;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-static {p0}, Lcom/xiaomi/idm/api/IDMClientApi;->access$200(Lcom/xiaomi/idm/api/IDMClientApi;)Lcom/xiaomi/idm/api/IDMClientApi$IDMClientCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/idm/api/IDMClientApi$IDMClientCallback;->onServiceFound(Lcom/xiaomi/idm/api/IDMService;)V

    :cond_0
    return-void
.end method
