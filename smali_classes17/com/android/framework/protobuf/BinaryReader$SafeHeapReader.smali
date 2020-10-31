.class final Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/android/framework/protobuf/BinaryReader;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapReader"
.end annotation


# instance fields
.field private final buffer:[B

.field private final bufferIsImmutable:Z

.field private endGroupTag:I

.field private final initialPos:I

.field private limit:I

.field private pos:I

.field private tag:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader;-><init>(Lcom/android/framework/protobuf/BinaryReader$1;)V

    iput-boolean p2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    return-void
.end method

.method private isAtEnd()Z
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v0, v1, v0

    return v0

    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_26
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_34
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_46
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_4f
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_54
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_66
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_78
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_81
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_93
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :pswitch_98
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_98
        :pswitch_93
        :pswitch_8a
        :pswitch_81
        :pswitch_78
        :pswitch_6f
        :pswitch_66
        :pswitch_5d
        :pswitch_54
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_26
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method private readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    :try_start_f
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v1}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_28

    if-ne v2, v3, :cond_23

    nop

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    return-object v1

    :cond_23
    :try_start_23
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    throw v1
.end method

.method private readLittleEndian32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    return v0
.end method

.method private readLittleEndian32_NoCheck()I
    .registers 5

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private readLittleEndian64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v0

    return-wide v0
.end method

.method private readLittleEndian64_NoCheck()J
    .registers 10

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    :try_start_e
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3, p0, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v3}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iget v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_25

    if-ne v4, v2, :cond_20

    nop

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    return-object v3

    :cond_20
    :try_start_20
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v3

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    throw v3
.end method

.method private readVarint32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-eq v1, v2, :cond_84

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    move v4, v0

    if-ltz v0, :cond_14

    iput v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return v4

    :cond_14
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_1f

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_1f
    add-int/lit8 v0, v3, 0x1

    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    if-gez v1, :cond_2c

    xor-int/lit8 v1, v3, -0x80

    goto :goto_81

    :cond_2c
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_3c

    xor-int/lit16 v0, v3, 0x3f80

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_81

    :cond_3c
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_4b

    const v1, -0x1fc080

    xor-int/2addr v1, v3

    goto :goto_81

    :cond_4b
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v4, v0, 0x1c

    xor-int/2addr v3, v4

    const v4, 0xfe03f80

    xor-int/2addr v3, v4

    if-gez v0, :cond_7f

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_7c

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, v2, v4

    if-gez v4, :cond_7f

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_7c

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, v2, v4

    if-gez v4, :cond_7f

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    if-ltz v1, :cond_77

    goto :goto_7c

    :cond_77
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_7c
    :goto_7c
    move v1, v3

    move v0, v4

    goto :goto_81

    :cond_7f
    move v0, v1

    move v1, v3

    :goto_81
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return v1

    :cond_84
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private readVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private requireBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_a

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private requirePosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private requireWireType(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method private skipBytes(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method private skipGroup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    :cond_f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1e

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_1e
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v1, v2, :cond_27

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    return-void

    :cond_27
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private skipVarint()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1d

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v0, v2

    if-ltz v2, :cond_19

    iput v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_19
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_e

    :cond_1d
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipVarintSlowPath()V

    return-void
.end method

.method private skipVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private verifyPackedFixed32Length(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private verifyPackedFixed64Length(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getFieldNumber()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v2, :cond_15

    return v1

    :cond_15
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_52

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    iget v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v4}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    if-eqz v4, :cond_36

    if-ne v4, v3, :cond_31

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    iget v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v4, v3

    :goto_1b
    iget v5, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v4, :cond_2c

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    if-eqz v5, :cond_27

    move v5, v1

    goto :goto_28

    :cond_27
    move v5, v2

    :goto_28
    invoke-virtual {v0, v5}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_1b

    :cond_2c
    invoke-direct {p0, v4}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    goto :goto_7c

    :cond_31
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_44

    return-void

    :cond_44
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_51

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_51
    goto :goto_36

    :cond_52
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_82

    if-ne v0, v3, :cond_7d

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v0

    :goto_63
    iget v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v4, v3, :cond_78

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v4

    if-eqz v4, :cond_6f

    move v4, v1

    goto :goto_70

    :cond_6f
    move v4, v2

    :goto_70
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_78
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    :goto_7c
    return-void

    :cond_7d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_82
    :goto_82
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_94

    return-void

    :cond_94
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_a1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_a1
    goto :goto_82
.end method

.method public readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    :cond_d
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    iget-boolean v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->wrap([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    goto :goto_25

    :cond_1d
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    :goto_25
    nop

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-object v1
.end method

.method public readBytesList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    :goto_9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_24

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_24
    goto :goto_9

    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4f

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-eq v3, v2, :cond_33

    if-ne v3, v1, :cond_2e

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1d
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2d

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    goto :goto_1d

    :cond_2d
    goto :goto_77

    :cond_2e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_41

    return-void

    :cond_41
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4e

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4e
    goto :goto_33

    :cond_4f
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7d

    if-ne v0, v1, :cond_78

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_63
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_77

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_77
    :goto_77
    return-void

    :cond_78
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_7d
    :goto_7d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8f

    return-void

    :cond_8f
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_9c

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_9c
    goto :goto_7d
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_2b

    if-ne v2, v1, :cond_26

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_19
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_25

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    :cond_25
    goto :goto_68

    :cond_26
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_39

    return-void

    :cond_39
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_46

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_46
    goto :goto_2b

    :cond_47
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6e

    if-ne v0, v1, :cond_69

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_58
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_68

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_68
    :goto_68
    return-void

    :cond_69
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_80

    return-void

    :cond_80
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_8d

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_8d
    goto :goto_6e
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-eq v3, v2, :cond_34

    if-ne v3, v1, :cond_2f

    :goto_13
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2e

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_2e
    goto :goto_13

    :cond_2f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_34
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_3e
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_4a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3e

    :cond_4a
    goto :goto_94

    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7a

    if-ne v0, v1, :cond_75

    :goto_55
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_67

    return-void

    :cond_67
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_74

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_74
    goto :goto_55

    :cond_75
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_7a
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_84
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_94

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_94
    :goto_94
    return-void
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-eq v3, v2, :cond_2f

    if-ne v3, v1, :cond_2a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1d
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_29

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1d

    :cond_29
    goto :goto_6f

    :cond_2a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4a

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4a
    goto :goto_2f

    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_75

    if-ne v0, v1, :cond_70

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5f
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6f

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_87

    return-void

    :cond_87
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_94

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_94
    goto :goto_75
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4f

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-eq v3, v2, :cond_34

    if-ne v3, v1, :cond_2f

    :goto_13
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2e

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_2e
    goto :goto_13

    :cond_2f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_34
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_3e
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_4e

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    goto :goto_3e

    :cond_4e
    goto :goto_9c

    :cond_4f
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7e

    if-ne v0, v1, :cond_79

    :goto_59
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_6b

    return-void

    :cond_6b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_78

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_78
    goto :goto_59

    :cond_79
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_7e
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_88
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_9c

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_9c
    :goto_9c
    return-void
.end method

.method public readGroup(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    if-eq v2, v0, :cond_24

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_24
    goto :goto_b

    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_2f

    if-ne v2, v1, :cond_2a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_19
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_25

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    :cond_25
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    goto :goto_70

    :cond_2a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4a

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4a
    goto :goto_2f

    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_76

    if-ne v0, v1, :cond_71

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5c
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6c

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_6c
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    :goto_70
    return-void

    :cond_71
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_88

    return-void

    :cond_88
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_95

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_95
    goto :goto_76
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_2f

    if-ne v2, v1, :cond_2a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_19
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_25

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_19

    :cond_25
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    goto :goto_70

    :cond_2a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4a

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4a
    goto :goto_2f

    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_76

    if-ne v0, v1, :cond_71

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5c
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6c

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_6c
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    :goto_70
    return-void

    :cond_71
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_88

    return-void

    :cond_88
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_95

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_95
    goto :goto_76
.end method

.method public readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    :try_start_12
    iget-object v4, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v5, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    :goto_16
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v6

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_28

    nop

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_62

    nop

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    nop

    return-void

    :cond_28
    const/4 v7, 0x1

    const-string v8, "Unable to parse map entry."

    if-eq v6, v7, :cond_4a

    if-eq v6, v0, :cond_3c

    :try_start_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v7

    if-eqz v7, :cond_36

    goto :goto_53

    :cond_36
    new-instance v7, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v8}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3c
    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v9, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {p0, v7, v9, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    goto :goto_53

    :cond_4a
    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9, v9}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v7
    :try_end_51
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2f .. :try_end_51} :catch_54
    .catchall {:try_start_2f .. :try_end_51} :catchall_62

    move-object v4, v7

    nop

    :goto_53
    goto :goto_5b

    :catch_54
    move-exception v7

    :try_start_55
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v9

    if-eqz v9, :cond_5c

    :goto_5b
    goto :goto_16

    :cond_5c
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v0, v8}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    throw v0
.end method

.method public readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    if-eq v2, v0, :cond_24

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_24
    goto :goto_b

    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-eq v3, v2, :cond_34

    if-ne v3, v1, :cond_2f

    :goto_13
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2e

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_2e
    goto :goto_13

    :cond_2f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_34
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_3e
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_4a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3e

    :cond_4a
    goto :goto_94

    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7a

    if-ne v0, v1, :cond_75

    :goto_55
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_67

    return-void

    :cond_67
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_74

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_74
    goto :goto_55

    :cond_75
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_7a
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_84
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_94

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_94
    :goto_94
    return-void
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-eq v3, v2, :cond_2f

    if-ne v3, v1, :cond_2a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1d
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_29

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1d

    :cond_29
    goto :goto_6f

    :cond_2a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4a

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4a
    goto :goto_2f

    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_75

    if-ne v0, v1, :cond_70

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5f
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6f

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_87

    return-void

    :cond_87
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_94

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_94
    goto :goto_75
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_2f

    if-ne v2, v1, :cond_2a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_19
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_29

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    :cond_29
    goto :goto_70

    :cond_2a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4a

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4a
    goto :goto_2f

    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_76

    if-ne v0, v1, :cond_71

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5c
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_70

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_70
    :goto_70
    return-void

    :cond_71
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_88

    return-void

    :cond_88
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_95

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_95
    goto :goto_76
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_2f

    if-ne v2, v1, :cond_2a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_19
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_29

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_19

    :cond_29
    goto :goto_70

    :cond_2a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4a

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4a
    goto :goto_2f

    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_76

    if-ne v0, v1, :cond_71

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5c
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_70

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_70
    :goto_70
    return-void

    :cond_71
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_88

    return-void

    :cond_88
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_95

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_95
    goto :goto_76
.end method

.method public readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringInternal(Z)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    if-nez v0, :cond_d

    const-string v1, ""

    return-object v1

    :cond_d
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    if-eqz p1, :cond_24

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_24

    :cond_1f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_24
    :goto_24
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-object v1
.end method

.method public readStringList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    instance-of v0, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_2e

    if-nez p2, :cond_2e

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    :goto_12
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->add(Lcom/android/framework/protobuf/ByteString;)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_20

    return-void

    :cond_20
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2d

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_2d
    goto :goto_12

    :cond_2e
    :goto_2e
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3c

    return-void

    :cond_3c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_49

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_49
    goto :goto_2e

    :cond_4a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_2b

    if-ne v2, v1, :cond_26

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_19
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_25

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    :cond_25
    goto :goto_68

    :cond_26
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_39

    return-void

    :cond_39
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_46

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_46
    goto :goto_2b

    :cond_47
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6e

    if-ne v0, v1, :cond_69

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_58
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_68

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_68
    :goto_68
    return-void

    :cond_69
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_80

    return-void

    :cond_80
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_8d

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_8d
    goto :goto_6e
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_2f

    if-ne v2, v1, :cond_2a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_19
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_25

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_19

    :cond_25
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    goto :goto_70

    :cond_2a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4a

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4a
    goto :goto_2f

    :cond_4b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_76

    if-ne v0, v1, :cond_71

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5c
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6c

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_6c
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    :goto_70
    return-void

    :cond_71
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_88

    return-void

    :cond_88
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_95

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_95
    goto :goto_76
.end method

.method public readVarint64()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v1, v0, :cond_ca

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    move v4, v0

    if-ltz v0, :cond_13

    iput v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    int-to-long v0, v4

    return-wide v0

    :cond_13
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_1d

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_1d
    add-int/lit8 v0, v3, 0x1

    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    if-gez v1, :cond_2c

    xor-int/lit8 v1, v3, -0x80

    int-to-long v4, v1

    goto/16 :goto_c7

    :cond_2c
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_3c

    xor-int/lit16 v0, v3, 0x3f80

    int-to-long v4, v0

    move v0, v1

    goto/16 :goto_c7

    :cond_3c
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_4d

    const v1, -0x1fc080

    xor-int/2addr v1, v3

    int-to-long v4, v1

    goto/16 :goto_c7

    :cond_4d
    int-to-long v4, v3

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_64

    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v4, v6

    move v0, v1

    goto :goto_c7

    :cond_64
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x23

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_79

    const-wide v4, -0x7f01fc080L

    xor-long/2addr v4, v6

    goto :goto_c7

    :cond_79
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_8f

    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v0, v1

    goto :goto_c7

    :cond_8f
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x31

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_a4

    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    goto :goto_c7

    :cond_a4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-gez v0, :cond_c6

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v6, v1

    cmp-long v1, v6, v8

    if-ltz v1, :cond_c1

    goto :goto_c7

    :cond_c1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_c6
    move v0, v1

    :goto_c7
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-wide v4

    :cond_ca
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public skipField()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_3f

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v1, :cond_d

    goto :goto_3f

    :cond_d
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    if-eq v0, v1, :cond_35

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_29

    const/4 v2, 0x5

    if-ne v0, v2, :cond_24

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    return v1

    :cond_24
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :cond_29
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipGroup()V

    return v1

    :cond_2d
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    return v1

    :cond_35
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    return v1

    :cond_3b
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipVarint()V

    return v1

    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return v0
.end method
