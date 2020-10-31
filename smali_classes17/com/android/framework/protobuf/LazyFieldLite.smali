.class public Lcom/android/framework/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;


# instance fields
.field private delayedBytes:Lcom/android/framework/protobuf/ByteString;

.field private extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

.field private volatile memoizedBytes:Lcom/android/framework/protobuf/ByteString;

.field protected volatile value:Lcom/android/framework/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/LazyFieldLite;->checkArguments(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iput-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    return-void
.end method

.method private static checkArguments(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V
    .registers 4

    if-eqz p0, :cond_d

    if-eqz p1, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ByteString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ExtensionRegistry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/LazyFieldLite;
    .registers 2

    new-instance v0, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LazyFieldLite;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method private static mergeValueAndBytes(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 4

    :try_start_0
    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0
    :try_end_c
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    return-void
.end method

.method public containsDefaultInstance()Z
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_15

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method protected ensureInitialized(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 5

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_c

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_36

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_26

    nop

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/android/framework/protobuf/Parser;->parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    goto :goto_2c

    :cond_26
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;
    :try_end_2c
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_2c} :catch_2d
    .catchall {:try_start_c .. :try_end_2c} :catchall_36

    :goto_2c
    goto :goto_34

    :catch_2d
    move-exception v0

    :try_start_2e
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    :goto_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyFieldLite;

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v2, v0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v1, :cond_22

    if-nez v2, :cond_22

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/framework/protobuf/LazyFieldLite;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_22
    if-eqz v1, :cond_2b

    if-eqz v2, :cond_2b

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_2b
    if-eqz v1, :cond_3a

    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/LazyFieldLite;->getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_3a
    invoke-interface {v2}, Lcom/android/framework/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/LazyFieldLite;->getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getSerializedSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    return v0

    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->ensureInitialized(Lcom/android/framework/protobuf/MessageLite;)V

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public merge(Lcom/android/framework/protobuf/LazyFieldLite;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->set(Lcom/android/framework/protobuf/LazyFieldLite;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_19

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    :cond_19
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_28

    iget-object v1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v1, :cond_28

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/ByteString;->concat(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_3e

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    return-void

    :cond_3e
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_54

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v2, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    return-void

    :cond_54
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    return-void
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/LazyFieldLite;->setByteString(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_14

    iput-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/ByteString;->concat(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/LazyFieldLite;->setByteString(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    :try_end_37
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_39

    :catch_38
    move-exception v0

    :goto_39
    return-void
.end method

.method public set(Lcom/android/framework/protobuf/LazyFieldLite;)V
    .registers 3

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_12

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    :cond_12
    return-void
.end method

.method public setByteString(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 4

    invoke-static {p2, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->checkArguments(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    return-void
.end method

.method public setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method public toByteString()Lcom/android/framework/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    monitor-enter p0

    :try_start_d
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    goto :goto_26

    :cond_1e
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    :goto_26
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method writeTo(Lcom/android/framework/protobuf/Writer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_21

    :cond_a
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_12

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_21

    :cond_12
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto :goto_21

    :cond_1c
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    :goto_21
    return-void
.end method
