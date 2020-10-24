.class public final Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenesOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$10300()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$10500(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$11000(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;)V

    return-object p0
.end method

.method public clearSceneId()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$11300(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$10700(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->getAid()I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->getSceneId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSceneIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->getSceneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$10400(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;I)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$10900(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$11100(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSceneId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$11200(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSceneIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$11400(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$10600(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;->access$10800(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$ExeScenes;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
