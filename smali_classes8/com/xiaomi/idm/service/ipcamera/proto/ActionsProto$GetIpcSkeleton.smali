.class public final Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeletonOrBuilder;


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x1

.field public static final APPID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final SERVICETOKEN_FIELD_NUMBER:I = 0x2


# instance fields
.field private aid_:I

.field private appId_:Ljava/lang/String;

.field private serviceToken_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    const-class v1, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->serviceToken_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->appId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->setAid(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->clearAid()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->setServiceToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->clearServiceToken()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->setServiceTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->clearAppId()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->setAppIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->aid_:I

    return-void
.end method

.method private clearAppId()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getDefaultInstance()Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->appId_:Ljava/lang/String;

    return-void
.end method

.method private clearServiceToken()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getDefaultInstance()Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getServiceToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->serviceToken_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAid(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->aid_:I

    return-void
.end method

.method private setAppId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->appId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setAppIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->appId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setServiceToken(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->serviceToken_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setServiceTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->serviceToken_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "aid_"

    aput-object p3, p0, p2

    const-string p2, "serviceToken_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "appId_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0208\u0003\u0208"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton$Builder;-><init>(Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;

    invoke-direct {p0}, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;-><init>()V

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

.method public getAid()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->aid_:I

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->appId_:Ljava/lang/String;

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->appId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->serviceToken_:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/ipcamera/proto/ActionsProto$GetIpcSkeleton;->serviceToken_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
