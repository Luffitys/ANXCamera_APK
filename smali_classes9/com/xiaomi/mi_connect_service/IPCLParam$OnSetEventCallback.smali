.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallbackOrBuilder;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

.field public static final IDMEVENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;


# instance fields
.field private idmEvent_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    const-class v1, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$14600()Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-void
.end method

.method static synthetic access$14800(Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)V

    return-void
.end method

.method static synthetic access$14900(Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->mergeIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-void
.end method

.method static synthetic access$15000(Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->clearIdmEvent()V

    return-void
.end method

.method private clearIdmEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->idmEvent_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object v0
.end method

.method private mergeIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->idmEvent_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->idmEvent_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->idmEvent_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->idmEvent_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    return-void
.end method

.method private setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->idmEvent_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "idmEvent_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback$Builder;-><init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;-><init>()V

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

.method public getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->idmEvent_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public hasIdmEvent()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$OnSetEventCallback;->idmEvent_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
