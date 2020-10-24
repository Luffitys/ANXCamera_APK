.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$OnEventOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;->access$12600()Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmEvent()Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;->access$13000(Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;)V

    return-object p0
.end method

.method public getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object p0

    return-object p0
.end method

.method public hasIdmEvent()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;->hasIdmEvent()Z

    move-result p0

    return p0
.end method

.method public mergeIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;->access$12900(Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;->access$12800(Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;->access$12700(Lcom/xiaomi/mi_connect_service/IPCLParam$OnEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method
