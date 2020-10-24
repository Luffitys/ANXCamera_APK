.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParamOrBuilder;


# static fields
.field public static final CONFIG_FIELD_NUMBER:I = 0xf

.field public static final CONNTYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

.field public static final ERRCODE_FIELD_NUMBER:I = 0x2

.field public static final ERRMSG_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;


# instance fields
.field private config_:Lcom/google/protobuf/ByteString;

.field private connType_:I

.field private errCode_:I

.field private errMsg_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    const-class v1, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->errMsg_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2300()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->setConnTypeValue(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->setConnType(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->clearConnType()V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->setErrCode(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->clearErrCode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->setErrMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->clearErrMsg()V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->setErrMsgBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->setConfig(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->clearConfig()V

    return-void
.end method

.method private clearConfig()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearConnType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->connType_:I

    return-void
.end method

.method private clearErrCode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->errCode_:I

    return-void
.end method

.method private clearErrMsg()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->errMsg_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setConfig(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->config_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setConnType(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->connType_:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setConnTypeValue(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->connType_:I

    return-void
.end method

.method private setErrCode(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->errCode_:I

    return-void
.end method

.method private setErrMsg(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->errMsg_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setErrMsgBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->errMsg_:Ljava/lang/String;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    return-object p0

    :pswitch_4
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "connType_"

    aput-object p3, p0, p2

    const-string p2, "errCode_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "errMsg_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "config_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u000f\u0004\u0000\u0000\u0000\u0001\u000c\u0002\u0004\u0003\u0208\u000f\n"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;-><init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;-><init>()V

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

.method public getConfig()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->config_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getConnType()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->connType_:I

    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->forNumber(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->UNRECOGNIZED:Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    :cond_0
    return-object p0
.end method

.method public getConnTypeValue()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->connType_:I

    return p0
.end method

.method public getErrCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->errCode_:I

    return p0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->errMsg_:Ljava/lang/String;

    return-object p0
.end method

.method public getErrMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->errMsg_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
