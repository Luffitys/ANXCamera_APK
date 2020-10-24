.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfigOrBuilder;


# static fields
.field public static final CHANNEL_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

.field public static final LOCALIP_FIELD_NUMBER:I = 0x7

.field public static final MACADDR_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final PWD_FIELD_NUMBER:I = 0x2

.field public static final REMOTEIP_FIELD_NUMBER:I = 0x6

.field public static final SSID_FIELD_NUMBER:I = 0x1

.field public static final USE5GBAND_FIELD_NUMBER:I = 0x3


# instance fields
.field private channel_:I

.field private localIp_:Ljava/lang/String;

.field private macAddr_:Ljava/lang/String;

.field private pwd_:Ljava/lang/String;

.field private remoteIp_:Ljava/lang/String;

.field private ssid_:Ljava/lang/String;

.field private use5GBand_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    const-class v1, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->ssid_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->pwd_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->macAddr_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->remoteIp_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->localIp_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3500()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setSsid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->clearSsid()V

    return-void
.end method

.method static synthetic access$3800(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setSsidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setPwd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->clearPwd()V

    return-void
.end method

.method static synthetic access$4100(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setPwdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setUse5GBand(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->clearUse5GBand()V

    return-void
.end method

.method static synthetic access$4400(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setChannel(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->clearChannel()V

    return-void
.end method

.method static synthetic access$4600(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setMacAddr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->clearMacAddr()V

    return-void
.end method

.method static synthetic access$4800(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setMacAddrBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setRemoteIp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->clearRemoteIp()V

    return-void
.end method

.method static synthetic access$5100(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setRemoteIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setLocalIp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->clearLocalIp()V

    return-void
.end method

.method static synthetic access$5400(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->setLocalIpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearChannel()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->channel_:I

    return-void
.end method

.method private clearLocalIp()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->localIp_:Ljava/lang/String;

    return-void
.end method

.method private clearMacAddr()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->macAddr_:Ljava/lang/String;

    return-void
.end method

.method private clearPwd()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->pwd_:Ljava/lang/String;

    return-void
.end method

.method private clearRemoteIp()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getRemoteIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->remoteIp_:Ljava/lang/String;

    return-void
.end method

.method private clearSsid()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->ssid_:Ljava/lang/String;

    return-void
.end method

.method private clearUse5GBand()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->use5GBand_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->channel_:I

    return-void
.end method

.method private setLocalIp(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->localIp_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setLocalIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->localIp_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setMacAddr(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->macAddr_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setMacAddrBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->macAddr_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setPwd(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->pwd_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setPwdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->pwd_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setRemoteIp(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->remoteIp_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setRemoteIpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->remoteIp_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSsid(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->ssid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSsidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->ssid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setUse5GBand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->use5GBand_:Z

    return-void
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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    return-object p0

    :pswitch_4
    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "ssid_"

    aput-object p3, p0, p2

    const-string p2, "pwd_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "use5GBand_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "channel_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "macAddr_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "remoteIp_"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string p2, "localIp_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0007\u0004\u0004\u0005\u0208\u0006\u0208\u0007\u0208"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig$Builder;-><init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;-><init>()V

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

.method public getChannel()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->channel_:I

    return p0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->localIp_:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalIpBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->localIp_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->macAddr_:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->macAddr_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->pwd_:Ljava/lang/String;

    return-object p0
.end method

.method public getPwdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->pwd_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->remoteIp_:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteIpBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->remoteIp_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->ssid_:Ljava/lang/String;

    return-object p0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->ssid_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUse5GBand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$WifiConfig;->use5GBand_:Z

    return p0
.end method
