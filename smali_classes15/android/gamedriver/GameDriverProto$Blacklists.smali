.class public final Landroid/gamedriver/GameDriverProto$Blacklists;
.super Lcom/android/framework/protobuf/GeneratedMessageLite;
.source "GameDriverProto.java"

# interfaces
.implements Landroid/gamedriver/GameDriverProto$BlacklistsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamedriver/GameDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Blacklists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "Landroid/gamedriver/GameDriverProto$Blacklists;",
        "Landroid/gamedriver/GameDriverProto$Blacklists$Builder;",
        ">;",
        "Landroid/gamedriver/GameDriverProto$BlacklistsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BLACKLISTS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

.field private static volatile PARSER:Lcom/android/framework/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/gamedriver/GameDriverProto$Blacklists;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-direct {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;-><init>()V

    sput-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    const-class v1, Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Landroid/gamedriver/GameDriverProto$Blacklists;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/gamedriver/GameDriverProto$Blacklists;Landroid/gamedriver/GameDriverProto$Blacklist;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/gamedriver/GameDriverProto$Blacklists;Landroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/gamedriver/GameDriverProto$Blacklists;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->addAllBlacklists(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/gamedriver/GameDriverProto$Blacklists;)V
    .registers 1

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->clearBlacklists()V

    return-void
.end method

.method static synthetic access$1800(Landroid/gamedriver/GameDriverProto$Blacklists;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->removeBlacklists(I)V

    return-void
.end method

.method static synthetic access$900()Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method private addAllBlacklists(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .registers 5

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-interface {v0, p1, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    .registers 4

    if-eqz p2, :cond_b

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_b
    const/4 v0, 0x0

    throw v0
.end method

.method private addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .registers 4

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_b
    const/4 v0, 0x0

    throw v0
.end method

.method private clearBlacklists()V
    .registers 2

    invoke-static {}, Landroid/gamedriver/GameDriverProto$Blacklists;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureBlacklistsIsMutable()V
    .registers 2

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    :cond_10
    return-void
.end method

.method public static getDefaultInstance()Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static newBuilder()Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/gamedriver/GameDriverProto$Blacklists;)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 2

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0, p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->createBuilder(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom([B)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parser()Lcom/android/framework/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/gamedriver/GameDriverProto$Blacklists;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeBlacklists(I)V
    .registers 3

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .registers 5

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-interface {v0, p1, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    .registers 4

    if-eqz p2, :cond_b

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    const/4 v0, 0x0

    throw v0
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

    packed-switch v0, :pswitch_data_5a

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
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->PARSER:Lcom/android/framework/protobuf/Parser;

    if-nez v0, :cond_34

    const-class v1, Landroid/gamedriver/GameDriverProto$Blacklists;

    monitor-enter v1

    :try_start_20
    sget-object v2, Landroid/gamedriver/GameDriverProto$Blacklists;->PARSER:Lcom/android/framework/protobuf/Parser;

    move-object v0, v2

    if-nez v0, :cond_2f

    new-instance v2, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-direct {v2, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    sput-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->PARSER:Lcom/android/framework/protobuf/Parser;

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
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0

    :pswitch_38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "blacklists_"

    aput-object v3, v0, v2

    const-class v2, Landroid/gamedriver/GameDriverProto$Blacklist;

    aput-object v2, v0, v1

    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object v2, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v2, v1, v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->newMessageInfo(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_4d
    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;

    invoke-direct {v0, v2}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;-><init>(Landroid/gamedriver/GameDriverProto$1;)V

    return-object v0

    :pswitch_53
    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-direct {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;-><init>()V

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getBlacklists(I)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 3

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public getBlacklistsCount()I
    .registers 2

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getBlacklistsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getBlacklistsOrBuilder(I)Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;
    .registers 3

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;

    return-object v0
.end method

.method public getBlacklistsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method
