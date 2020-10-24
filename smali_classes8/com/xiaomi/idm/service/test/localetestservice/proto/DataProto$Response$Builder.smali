.class public final Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$ResponseOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->access$000()Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStr()Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->access$200(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;)V

    return-object p0
.end method

.method public getStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->getStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->getStrBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setStr(Ljava/lang/String;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->access$100(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->access$300(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
