.class public final Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEventOrBuilder;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

.field public static final PARAM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;


# instance fields
.field private param_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    const-class v1, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->setParam(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->clearParam()V

    return-void
.end method

.method private clearParam()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->param_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setParam(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->param_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "param_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;-><init>(Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getParam()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->param_:I

    return p0
.end method
