.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$EventOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->access$10400()Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmEvent()Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->access$11200(Lcom/xiaomi/mi_connect_service/IPCLParam$Event;)V

    return-object p0
.end method

.method public clearIdmService()Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->access$10800(Lcom/xiaomi/mi_connect_service/IPCLParam$Event;)V

    return-object p0
.end method

.method public getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object p0

    return-object p0
.end method

.method public getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p0

    return-object p0
.end method

.method public hasIdmEvent()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->hasIdmEvent()Z

    move-result p0

    return p0
.end method

.method public hasIdmService()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->hasIdmService()Z

    move-result p0

    return p0
.end method

.method public mergeIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->access$11100(Lcom/xiaomi/mi_connect_service/IPCLParam$Event;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public mergeIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->access$10700(Lcom/xiaomi/mi_connect_service/IPCLParam$Event;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->access$11000(Lcom/xiaomi/mi_connect_service/IPCLParam$Event;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->access$10900(Lcom/xiaomi/mi_connect_service/IPCLParam$Event;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->access$10600(Lcom/xiaomi/mi_connect_service/IPCLParam$Event;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$Event;->access$10500(Lcom/xiaomi/mi_connect_service/IPCLParam$Event;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method
