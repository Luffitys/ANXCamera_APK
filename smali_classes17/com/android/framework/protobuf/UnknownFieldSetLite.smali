.class public final Lcom/android/framework/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "UnknownFieldSetLite.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/framework/protobuf/UnknownFieldSetLite;

.field private static final MIN_CAPACITY:I = 0x8


# instance fields
.field private count:I

.field private isMutable:Z

.field private memoizedSerializedSize:I

.field private objects:[Ljava/lang/Object;

.field private tags:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    iput p1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iput-object p2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iput-object p3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method private ensureCapacity()V
    .registers 4

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v1, v1

    if-ne v0, v1, :cond_22

    const/4 v1, 0x4

    if-ge v0, v1, :cond_d

    const/16 v0, 0x8

    goto :goto_f

    :cond_d
    shr-int/lit8 v0, v0, 0x1

    :goto_f
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    :cond_22
    return-void
.end method

.method private static equals([I[II)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_e

    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method private static equals([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_12

    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x0

    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public static getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 1

    sget-object v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method private static hashCode([II)I
    .registers 6

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_e

    mul-int/lit8 v2, v0, 0x1f

    aget v3, p0, v1

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return v0
.end method

.method private static hashCode([Ljava/lang/Object;I)I
    .registers 6

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_12

    mul-int/lit8 v2, v0, 0x1f

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v0
.end method

.method private mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/android/framework/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    goto :goto_0

    :cond_e
    :goto_e
    return-object p0
.end method

.method static mutableCopyOf(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 9

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v6, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v3
.end method

.method static newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 1

    new-instance v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method

.method private static writeField(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_54

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x5

    if-ne v1, v2, :cond_21

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_6a

    :cond_21
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2b
    invoke-interface {p2}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v1, v2, :cond_40

    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeStartGroup(I)V

    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/Writer;)V

    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeEndGroup(I)V

    goto :goto_6a

    :cond_40
    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeEndGroup(I)V

    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/Writer;)V

    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeStartGroup(I)V

    goto :goto_6a

    :cond_4d
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_6a

    :cond_54
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_6a

    :cond_5f
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    nop

    :goto_6a
    return-void
.end method


# virtual methods
.method checkMutable()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    if-nez v2, :cond_d

    return v1

    :cond_d
    move-object v2, p1

    check-cast v2, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v4, v2, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ne v3, v4, :cond_2e

    iget-object v4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v5, v2, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v4, v5, v3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->equals([I[II)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object v4, v2, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v5, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->equals([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_2e

    :cond_2d
    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public getSerializedSize()I
    .registers 8

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v2, :cond_82

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    if-eqz v4, :cond_6f

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5f

    const/4 v5, 0x2

    if-eq v4, v5, :cond_53

    const/4 v6, 0x3

    if-eq v4, v6, :cond_40

    const/4 v5, 0x5

    if-ne v4, v5, :cond_36

    iget-object v4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_7f

    :cond_36
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_40
    nop

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_7f

    :cond_53
    iget-object v4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_7f

    :cond_5f
    iget-object v4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_7f

    :cond_6f
    iget-object v4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v0, v4

    nop

    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_82
    iput v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getSerializedSizeAsMessageSet()I
    .registers 6

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    iput v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->hashCode([II)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->hashCode([Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public makeImmutable()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method mergeFieldFrom(ILcom/android/framework/protobuf/CodedInputStream;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_56

    if-eq v1, v2, :cond_4a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_42

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_2f

    if-eq v1, v4, :cond_2d

    const/4 v3, 0x5

    if-ne v1, v3, :cond_28

    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :cond_2d
    const/4 v1, 0x0

    return v1

    :cond_2f
    new-instance v1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-direct {v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>()V

    invoke-direct {v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {v0, v4}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    :cond_42
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    :cond_4a
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    :cond_56
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2
.end method

.method mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    if-eqz p1, :cond_e

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-object p0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method mergeVarintField(II)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 6

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-object p0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final printWithIndent(Ljava/lang/StringBuilder;I)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, p2, v2, v3}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method storeField(ILjava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    invoke-direct {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->ensureCapacity()V

    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aput-object p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    return-void
.end method

.method public writeAsMessageSetTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method writeAsMessageSetTo(Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_20

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_20
    goto :goto_38

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_38
    :goto_38
    return-void
.end method

.method public writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_6c

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-eqz v3, :cond_5b

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_43

    const/4 v4, 0x3

    if-eq v3, v4, :cond_32

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2d

    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_69

    :cond_2d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v3

    throw v3

    :cond_32
    invoke-virtual {p1, v2, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    goto :goto_69

    :cond_43
    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_69

    :cond_4d
    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_69

    :cond_5b
    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    nop

    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6c
    return-void
.end method

.method public writeTo(Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    goto :goto_35

    :cond_21
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_35

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_35
    :goto_35
    return-void
.end method
