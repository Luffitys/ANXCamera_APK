.class public final Landroid/gamedriver/GameDriverProto$Blacklist;
.super Lcom/android/framework/protobuf/GeneratedMessageLite;
.source "GameDriverProto.java"

# interfaces
.implements Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamedriver/GameDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Blacklist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "Landroid/gamedriver/GameDriverProto$Blacklist;",
        "Landroid/gamedriver/GameDriverProto$Blacklist$Builder;",
        ">;",
        "Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

.field public static final PACKAGE_NAMES_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/framework/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_CODE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private versionCode_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-direct {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;-><init>()V

    sput-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    const-class v1, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method static synthetic access$100(Landroid/gamedriver/GameDriverProto$Blacklist;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklist;->setVersionCode(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/gamedriver/GameDriverProto$Blacklist;)V
    .registers 1

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->clearVersionCode()V

    return-void
.end method

.method static synthetic access$300(Landroid/gamedriver/GameDriverProto$Blacklist;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklist;->setPackageNames(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/gamedriver/GameDriverProto$Blacklist;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->addPackageNames(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/gamedriver/GameDriverProto$Blacklist;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->addAllPackageNames(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$600(Landroid/gamedriver/GameDriverProto$Blacklist;)V
    .registers 1

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->clearPackageNames()V

    return-void
.end method

.method static synthetic access$700(Landroid/gamedriver/GameDriverProto$Blacklist;Lcom/android/framework/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method private addAllPackageNames(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPackageNames(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_b
    const/4 v0, 0x0

    throw v0
.end method

.method private addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V
    .registers 4

    if-eqz p1, :cond_f

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    const/4 v0, 0x0

    throw v0
.end method

.method private clearPackageNames()V
    .registers 2

    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearVersionCode()V
    .registers 3

    iget v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    return-void
.end method

.method private ensurePackageNamesIsMutable()V
    .registers 2

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static newBuilder()Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .registers 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/gamedriver/GameDriverProto$Blacklist;)Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .registers 2

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0, p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->createBuilder(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom([B)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parser()Lcom/android/framework/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPackageNames(ILjava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_b

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    const/4 v0, 0x0

    throw v0
.end method

.method private setVersionCode(J)V
    .registers 4

    iget v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    iput-wide p1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Landroid/gamedriver/GameDriverProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_60

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_13
    return-object v2

    :pswitch_14
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_19
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->PARSER:Lcom/android/framework/protobuf/Parser;

    if-nez v0, :cond_34

    const-class v1, Landroid/gamedriver/GameDriverProto$Blacklist;

    monitor-enter v1

    :try_start_20
    sget-object v2, Landroid/gamedriver/GameDriverProto$Blacklist;->PARSER:Lcom/android/framework/protobuf/Parser;

    move-object v0, v2

    if-nez v0, :cond_2f

    new-instance v2, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-direct {v2, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    sput-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->PARSER:Lcom/android/framework/protobuf/Parser;

    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    :cond_34
    :goto_34
    return-object v0

    :pswitch_35
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0

    :pswitch_38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string/jumbo v2, "versionCode_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "packageNames_"

    aput-object v2, v0, v1

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0002\u0000\u0002\u001a"

    sget-object v2, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v2, v1, v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->newMessageInfo(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_54
    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;

    invoke-direct {v0, v2}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;-><init>(Landroid/gamedriver/GameDriverProto$1;)V

    return-object v0

    :pswitch_5a
    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-direct {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;-><init>()V

    return-object v0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_54
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getPackageNames(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNamesCount()I
    .registers 2

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPackageNamesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getVersionCode()J
    .registers 3

    iget-wide v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    return-wide v0
.end method

.method public hasVersionCode()Z
    .registers 3

    iget v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
