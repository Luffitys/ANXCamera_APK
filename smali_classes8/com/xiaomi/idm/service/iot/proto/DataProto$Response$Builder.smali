.class public final Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/DataProto$ResponseOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->access$000()Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/DataProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->access$200(Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;)V

    return-object p0
.end method

.method public clearMessage()Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->access$400(Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;)V

    return-object p0
.end method

.method public clearResponse()Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->access$700(Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;)V

    return-object p0
.end method

.method public getCode()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->getCode()I

    move-result p0

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->getResponse()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponseBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->getResponseBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setCode(I)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->access$100(Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;I)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->access$300(Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->access$500(Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponse(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->access$600(Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResponseBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;->access$800(Lcom/xiaomi/idm/service/iot/proto/DataProto$Response;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
