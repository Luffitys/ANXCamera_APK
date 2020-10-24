.class public final Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenesOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->access$2200()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->access$2400(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->access$2900(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->access$2600(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->getAid()I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->access$2300(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;I)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->access$2800(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->access$3000(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->access$2500(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;->access$2700(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetScenes;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
