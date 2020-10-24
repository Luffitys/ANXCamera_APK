.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscoveryOrBuilder;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null

.field public static final SERVICETYPES_FIELD_NUMBER:I = 0x1

.field public static final SERVICEUUIDS_FIELD_NUMBER:I = 0x2


# instance fields
.field private serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

.field private serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    const-class v1, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$8600()Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->setServiceTypes(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->addServiceTypes(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->addAllServiceTypes(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->clearServiceTypes()V

    return-void
.end method

.method static synthetic access$9100(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->addServiceTypesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->setServiceUuids(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->addServiceUuids(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->addAllServiceUuids(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->clearServiceUuids()V

    return-void
.end method

.method static synthetic access$9600(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->addServiceUuidsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllServiceTypes(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->ensureServiceTypesIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllServiceUuids(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->ensureServiceUuidsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addServiceTypes(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->ensureServiceTypesIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private addServiceTypesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->ensureServiceTypesIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private addServiceUuids(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->ensureServiceUuidsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private addServiceUuidsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->ensureServiceUuidsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private clearServiceTypes()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearServiceUuids()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureServiceTypesIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureServiceUuidsIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setServiceTypes(ILjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->ensureServiceTypesIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private setServiceUuids(ILjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->ensureServiceUuidsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "serviceTypes_"

    aput-object p3, p0, p2

    const-string p2, "serviceUuids_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u021a\u0002\u021a"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;-><init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;-><init>()V

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

.method public getServiceTypes(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getServiceTypesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTypesCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result p0

    return p0
.end method

.method public getServiceTypesList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getServiceUuids(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getServiceUuidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceUuidsCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result p0

    return p0
.end method

.method public getServiceUuidsList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
