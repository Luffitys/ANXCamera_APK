.class public final Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDevicePropertiesOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$6800()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7000(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7500(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;)V

    return-object p0
.end method

.method public clearIsSort()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$8100(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;)V

    return-object p0
.end method

.method public clearPropertyBody()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7800(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7200(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getAid()I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIsSort()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getIsSort()Z

    move-result p0

    return p0
.end method

.method public getPropertyBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getPropertyBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getPropertyBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$6900(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;I)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7400(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7600(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIsSort(Z)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$8000(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;Z)V

    return-object p0
.end method

.method public setPropertyBody(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7700(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPropertyBodyBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7900(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7100(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;->access$7300(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$SetDeviceProperties;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
