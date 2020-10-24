.class public final Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEventOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->access$000()Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearParam()Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->access$200(Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;)V

    return-object p0
.end method

.method public getParam()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->getParam()I

    move-result p0

    return p0
.end method

.method public setParam(I)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->access$100(Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;I)V

    return-object p0
.end method
