.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatusOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->access$13200()Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConnected()Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->access$13800(Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;)V

    return-object p0
.end method

.method public clearIdmService()Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->access$13600(Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;)V

    return-object p0
.end method

.method public getConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->getConnected()Z

    move-result p0

    return p0
.end method

.method public getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p0

    return-object p0
.end method

.method public hasIdmService()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->hasIdmService()Z

    move-result p0

    return p0
.end method

.method public mergeIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->access$13500(Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public setConnected(Z)Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->access$13700(Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;Z)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->access$13400(Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;->access$13300(Lcom/xiaomi/mi_connect_service/IPCLParam$OnServiceConnectStatus;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method
