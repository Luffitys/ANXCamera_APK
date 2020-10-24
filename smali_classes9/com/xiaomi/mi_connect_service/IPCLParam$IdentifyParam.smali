.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParamOrBuilder;


# static fields
.field public static final CUSERID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

.field public static final DOMAIN_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final SERVICETOKEN_FIELD_NUMBER:I = 0x4

.field public static final SID_FIELD_NUMBER:I = 0x2

.field public static final SSECURITY_FIELD_NUMBER:I = 0x5

.field public static final TIMEDIFF_FIELD_NUMBER:I = 0x6

.field public static final USERID_FIELD_NUMBER:I = 0x1


# instance fields
.field private cUserId_:Ljava/lang/String;

.field private domain_:Ljava/lang/String;

.field private serviceToken_:Ljava/lang/String;

.field private sid_:Ljava/lang/String;

.field private ssecurity_:Ljava/lang/String;

.field private timeDiff_:Ljava/lang/String;

.field private userId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    const-class v1, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->userId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->sid_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->cUserId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->serviceToken_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->ssecurity_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->timeDiff_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->domain_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setServiceToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->clearServiceToken()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setServiceTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setSsecurity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->clearSsecurity()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setSsecurityBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setTimeDiff(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->clearTimeDiff()V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setTimeDiffBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setDomain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->clearUserId()V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->clearDomain()V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setDomainBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setUserIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setSid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->clearSid()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setSidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setCUserId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->clearCUserId()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->setCUserIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCUserId()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getCUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->cUserId_:Ljava/lang/String;

    return-void
.end method

.method private clearDomain()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->domain_:Ljava/lang/String;

    return-void
.end method

.method private clearServiceToken()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getServiceToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->serviceToken_:Ljava/lang/String;

    return-void
.end method

.method private clearSid()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getSid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->sid_:Ljava/lang/String;

    return-void
.end method

.method private clearSsecurity()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getSsecurity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->ssecurity_:Ljava/lang/String;

    return-void
.end method

.method private clearTimeDiff()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getTimeDiff()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->timeDiff_:Ljava/lang/String;

    return-void
.end method

.method private clearUserId()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->userId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCUserId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->cUserId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setCUserIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->cUserId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setDomain(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->domain_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setDomainBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->domain_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setServiceToken(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->serviceToken_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setServiceTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->serviceToken_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSid(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->sid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->sid_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSsecurity(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->ssecurity_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setSsecurityBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->ssecurity_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setTimeDiff(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->timeDiff_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setTimeDiffBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->timeDiff_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setUserId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->userId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setUserIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->userId_:Ljava/lang/String;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    return-object p0

    :pswitch_4
    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "userId_"

    aput-object p3, p0, p2

    const-string p2, "sid_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "cUserId_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "serviceToken_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "ssecurity_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "timeDiff_"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string p2, "domain_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0208"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam$Builder;-><init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;-><init>()V

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

.method public getCUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->cUserId_:Ljava/lang/String;

    return-object p0
.end method

.method public getCUserIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->cUserId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->domain_:Ljava/lang/String;

    return-object p0
.end method

.method public getDomainBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->domain_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->serviceToken_:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->serviceToken_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->sid_:Ljava/lang/String;

    return-object p0
.end method

.method public getSidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->sid_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSsecurity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->ssecurity_:Ljava/lang/String;

    return-object p0
.end method

.method public getSsecurityBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->ssecurity_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTimeDiff()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->timeDiff_:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeDiffBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->timeDiff_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->userId_:Ljava/lang/String;

    return-object p0
.end method

.method public getUserIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$IdentifyParam;->userId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
