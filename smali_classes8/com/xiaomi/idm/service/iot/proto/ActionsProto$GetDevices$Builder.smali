.class public final Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevicesOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$000()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$200(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$700(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;)V

    return-object p0
.end method

.method public clearIsLocal()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$1000(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$400(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->getAid()I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIsLocal()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->getIsLocal()Z

    move-result p0

    return p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$100(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;I)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$600(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$800(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIsLocal(Z)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$900(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;Z)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$300(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;->access$500(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevices;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
