.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProcOrBuilder;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    const-class v1, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$7800()Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    const-string p2, "\u0000\u0000"

    invoke-static {p0, p2, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc$Builder;

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc$Builder;-><init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$RegisterProc;-><init>()V

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
