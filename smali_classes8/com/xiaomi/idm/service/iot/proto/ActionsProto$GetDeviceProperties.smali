.class public final Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDevicePropertiesOrBuilder;


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x1

.field public static final APPID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final PROPERTYID_FIELD_NUMBER:I = 0x4

.field public static final SERVICETOKEN_FIELD_NUMBER:I = 0x2


# instance fields
.field private aid_:I

.field private appId_:Ljava/lang/String;

.field private propertyId_:Ljava/lang/String;

.field private serviceToken_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    const-class v1, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->serviceToken_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->appId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->propertyId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5500()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->setAid(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->clearAid()V

    return-void
.end method

.method static synthetic access$5800(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->setServiceToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->clearServiceToken()V

    return-void
.end method

.method static synthetic access$6000(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->setServiceTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->clearAppId()V

    return-void
.end method

.method static synthetic access$6300(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->setAppIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->setPropertyId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->clearPropertyId()V

    return-void
.end method

.method static synthetic access$6600(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->setPropertyIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->aid_:I

    return-void
.end method

.method private clearAppId()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->appId_:Ljava/lang/String;

    return-void
.end method

.method private clearPropertyId()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getPropertyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->propertyId_:Ljava/lang/String;

    return-void
.end method

.method private clearServiceToken()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getServiceToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->serviceToken_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAid(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->aid_:I

    return-void
.end method

.method private setAppId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->appId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setAppIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->appId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setPropertyId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->propertyId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setPropertyIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->propertyId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setServiceToken(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->serviceToken_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setServiceTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->serviceToken_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    return-object p0

    :pswitch_4
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "aid_"

    aput-object p3, p0, p2

    const-string p2, "serviceToken_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "appId_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "propertyId_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0208\u0003\u0208\u0004\u0208"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties$Builder;-><init>(Lcom/xiaomi/idm/service/iot/proto/ActionsProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;-><init>()V

    return-object p0

    nop

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

    iget p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->aid_:I

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->appId_:Ljava/lang/String;

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->appId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->propertyId_:Ljava/lang/String;

    return-object p0
.end method

.method public getPropertyIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->propertyId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->serviceToken_:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/ActionsProto$GetDeviceProperties;->serviceToken_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
