.class Lcom/android/framework/protobuf/IterableByteBufferInputStream;
.super Ljava/io/InputStream;
.source "IterableByteBufferInputStream.java"


# instance fields
.field private currentAddress:J

.field private currentArray:[B

.field private currentArrayOffset:I

.field private currentByteBuffer:Ljava/nio/ByteBuffer;

.field private currentByteBufferPos:I

.field private currentIndex:I

.field private dataSize:I

.field private hasArray:Z

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->iterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    goto :goto_10

    :cond_23
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->getNextByteBuffer()Z

    move-result v1

    if-nez v1, :cond_38

    sget-object v1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentAddress:J

    :cond_38
    return-void
.end method

.method private getNextByteBuffer()Z
    .registers 5

    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    return v2

    :cond_10
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3b

    iput-boolean v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->hasArray:Z

    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArray:[B

    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArrayOffset:I

    goto :goto_48

    :cond_3b
    iput-boolean v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->hasArray:Z

    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentAddress:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArray:[B

    :goto_48
    return v1
.end method

.method private updateCurrentByteBufferPos(I)V
    .registers 4

    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->getNextByteBuffer()Z

    :cond_10
    return-void
.end method


# virtual methods
.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    iget v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    if-ne v0, v1, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget-boolean v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->hasArray:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArray:[B

    iget v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    iget v3, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArrayOffset:I

    add-int/2addr v2, v3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->updateCurrentByteBufferPos(I)V

    return v0

    :cond_1c
    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentAddress:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->updateCurrentByteBufferPos(I)V

    return v0
.end method

.method public read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentIndex:I

    iget v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->dataSize:I

    if-ne v0, v1, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_14

    move p3, v0

    :cond_14
    iget-boolean v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->hasArray:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArray:[B

    iget v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    iget v3, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentArrayOffset:I

    add-int/2addr v2, v3

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->updateCurrentByteBufferPos(I)V

    goto :goto_40

    :cond_26
    iget-object v1, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBufferPos:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/IterableByteBufferInputStream;->updateCurrentByteBufferPos(I)V

    :goto_40
    return p3
.end method
