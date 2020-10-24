.class public final Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevicePropertiesOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$5500()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$5700(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$6200(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;)V

    return-object p0
.end method

.method public clearPropertyId()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$6500(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$5900(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getAid()I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getPropertyId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getPropertyIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$5600(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;I)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$6100(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$6300(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPropertyId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$6400(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPropertyIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$6600(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$5800(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->access$6000(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
