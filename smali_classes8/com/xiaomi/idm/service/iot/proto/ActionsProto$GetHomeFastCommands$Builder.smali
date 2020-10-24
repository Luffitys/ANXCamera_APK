.class public final Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommandsOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->access$4500()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->access$4700(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->access$5200(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->access$4900(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->getAid()I

    move-result p0

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->access$4600(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;I)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->access$5100(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->access$5300(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->access$4800(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;->access$5000(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetHomeFastCommands;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
