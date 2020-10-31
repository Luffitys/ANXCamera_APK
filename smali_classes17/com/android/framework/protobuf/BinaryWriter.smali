.class abstract Lcom/android/framework/protobuf/BinaryWriter;
.super Lcom/android/framework/protobuf/ByteOutput;
.source "BinaryWriter.java"

# interfaces
.implements Lcom/android/framework/protobuf/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;,
        Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;,
        Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;,
        Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final MAP_KEY_NUMBER:I = 0x1

.field private static final MAP_VALUE_NUMBER:I = 0x2


# instance fields
.field private final alloc:Lcom/android/framework/protobuf/BufferAllocator;

.field final buffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/framework/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field totalDoneBytes:I


# direct methods
.method private constructor <init>(Lcom/android/framework/protobuf/BufferAllocator;I)V
    .registers 5

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteOutput;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    if-lez p2, :cond_1a

    const-string v0, "alloc"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/BufferAllocator;

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    iput p2, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chunkSize must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/framework/protobuf/BufferAllocator;ILcom/android/framework/protobuf/BinaryWriter$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-void
.end method

.method static synthetic access$200(J)B
    .registers 3

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B

    move-result v0

    return v0
.end method

.method private static computeUInt64SizeNoTag(J)B
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 v0, 0xa

    return v0

    :cond_12
    const/4 v0, 0x2

    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_23

    add-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    :cond_23
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_31

    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_31
    const-wide/16 v4, -0x4000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3b

    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_3b
    return v0
.end method

.method static isUnsafeDirectSupported()Z
    .registers 1

    # invokes: Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->isSupported()Z
    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;->access$000()Z

    move-result v0

    return v0
.end method

.method static isUnsafeHeapSupported()Z
    .registers 1

    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static newDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 2

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->newDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static newDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->newUnsafeDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->newSafeDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public static newHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 2

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->newHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static newHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->newUnsafeHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/BinaryWriter;->newSafeHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method static newSafeDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    new-instance v0, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeDirectWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newSafeHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 3

    new-instance v0, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$SafeHeapWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newUnsafeDirectInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 4

    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeDirectWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static newUnsafeHeapInstance(Lcom/android/framework/protobuf/BufferAllocator;I)Lcom/android/framework/protobuf/BinaryWriter;
    .registers 4

    invoke-static {}, Lcom/android/framework/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryWriter$UnsafeHeapWriter;-><init>(Lcom/android/framework/protobuf/BufferAllocator;I)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeBoolList_Internal(ILcom/android/framework/protobuf/BooleanArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_2e

    invoke-virtual {p2}, Lcom/android/framework/protobuf/BooleanArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/BooleanArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_21

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeBool(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_21
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_40

    :cond_2e
    invoke-virtual {p2}, Lcom/android/framework/protobuf/BooleanArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_34
    if-ltz v0, :cond_40

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeBool(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_40
    :goto_40
    return-void
.end method

.method private final writeBoolList_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_27

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeBool(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_27
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_4c

    :cond_34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3a
    if-ltz v0, :cond_4c

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeBool(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    :cond_4c
    :goto_4c
    return-void
.end method

.method private final writeDoubleList_Internal(ILcom/android/framework/protobuf/DoubleArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_34

    invoke-virtual {p2}, Lcom/android/framework/protobuf/DoubleArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/DoubleArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_27

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_27
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_46

    :cond_34
    invoke-virtual {p2}, Lcom/android/framework/protobuf/DoubleArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3a
    if-ltz v0, :cond_46

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeDouble(ID)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    :cond_46
    :goto_46
    return-void
.end method

.method private final writeDoubleList_Internal(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_3a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_2d

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_52

    :cond_3a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_40
    if-ltz v0, :cond_52

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeDouble(ID)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    :cond_52
    :goto_52
    return-void
.end method

.method private final writeFixed32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_30

    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_23

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_42

    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_42

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_42
    :goto_42
    return-void
.end method

.method private final writeFixed32List_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_36

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_29

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_4e

    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3c
    if-ltz v0, :cond_4e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    :cond_4e
    :goto_4e
    return-void
.end method

.method private final writeFixed64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_30

    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_23

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_42

    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_42

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_42
    :goto_42
    return-void
.end method

.method private final writeFixed64List_Internal(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_36

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_29

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_4e

    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3c
    if-ltz v0, :cond_4e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    :cond_4e
    :goto_4e
    return-void
.end method

.method private final writeFloatList_Internal(ILcom/android/framework/protobuf/FloatArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_34

    invoke-virtual {p2}, Lcom/android/framework/protobuf/FloatArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/FloatArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_27

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/FloatArrayList;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_27
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_46

    :cond_34
    invoke-virtual {p2}, Lcom/android/framework/protobuf/FloatArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3a
    if-ltz v0, :cond_46

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/FloatArrayList;->getFloat(I)F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFloat(IF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    :cond_46
    :goto_46
    return-void
.end method

.method private final writeFloatList_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_3a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_2d

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_52

    :cond_3a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_40
    if-ltz v0, :cond_52

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFloat(IF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    :cond_52
    :goto_52
    return-void
.end method

.method private final writeInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_30

    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_23

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_42

    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_42

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_42
    :goto_42
    return-void
.end method

.method private final writeInt32List_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_36

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_29

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_4e

    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3c
    if-ltz v0, :cond_4e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    :cond_4e
    :goto_4e
    return-void
.end method

.method private writeLazyString(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    goto :goto_11

    :cond_b
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    :goto_11
    return-void
.end method

.method static final writeMapEntryField(Lcom/android/framework/protobuf/Writer;ILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/BinaryWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported map value type for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    instance-of v0, p3, Lcom/android/framework/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_32

    move-object v0, p3

    check-cast v0, Lcom/android/framework/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_f0

    :cond_32
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_42

    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_f0

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected type for enum in map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4a
    move-object v0, p3

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_f0

    :pswitch_52
    invoke-interface {p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_f0

    :pswitch_57
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_f0

    :pswitch_63
    move-object v0, p3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_f0

    :pswitch_6f
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_f0

    :pswitch_7b
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto :goto_f0

    :pswitch_86
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_f0

    :pswitch_8d
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto :goto_f0

    :pswitch_98
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto :goto_f0

    :pswitch_a3
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto :goto_f0

    :pswitch_ae
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto :goto_f0

    :pswitch_b9
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_f0

    :pswitch_c4
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto :goto_f0

    :pswitch_cf
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_f0

    :pswitch_da
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_f0

    :pswitch_e5
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    nop

    :goto_f0
    return-void

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_da
        :pswitch_cf
        :pswitch_c4
        :pswitch_b9
        :pswitch_ae
        :pswitch_a3
        :pswitch_98
        :pswitch_8d
        :pswitch_86
        :pswitch_7b
        :pswitch_6f
        :pswitch_63
        :pswitch_57
        :pswitch_52
        :pswitch_4a
        :pswitch_22
    .end packed-switch
.end method

.method private final writeSInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_30

    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_23

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_42

    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_42

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_42
    :goto_42
    return-void
.end method

.method private final writeSInt32List_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_36

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_29

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_4e

    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3c
    if-ltz v0, :cond_4e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    :cond_4e
    :goto_4e
    return-void
.end method

.method private final writeSInt64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_30

    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_23

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_42

    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_42

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_42
    :goto_42
    return-void
.end method

.method private final writeSInt64List_Internal(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_36

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_29

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_4e

    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3c
    if-ltz v0, :cond_4e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    :cond_4e
    :goto_4e
    return-void
.end method

.method private final writeUInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_30

    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_23

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_42

    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_42

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_42
    :goto_42
    return-void
.end method

.method private final writeUInt32List_Internal(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_36

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_29

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_4e

    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3c
    if-ltz v0, :cond_4e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    :cond_4e
    :goto_4e
    return-void
.end method

.method private final writeUInt64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_30

    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_23

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint64(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_42

    :cond_30
    invoke-virtual {p2}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_42

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_42
    :goto_42
    return-void
.end method

.method private final writeUInt64List_Internal(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_36

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryWriter;->requireSpace(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_29

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint64(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_4e

    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3c
    if-ltz v0, :cond_4e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    :cond_4e
    :goto_4e
    return-void
.end method


# virtual methods
.method public final complete()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/android/framework/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->finishCurrentBuffer()V

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public final fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;
    .registers 2

    sget-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method abstract finishCurrentBuffer()V
.end method

.method public abstract getTotalBytesWritten()I
.end method

.method final newDirectBuffer()Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newHeapBuffer()Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryWriter;->alloc:Lcom/android/framework/protobuf/BufferAllocator;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method abstract requireSpace(I)V
.end method

.method abstract writeBool(Z)V
.end method

.method public final writeBoolList(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/BooleanArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeBoolList_Internal(ILcom/android/framework/protobuf/BooleanArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeBoolList_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method public final writeBytesList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public final writeDouble(ID)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(IJ)V

    return-void
.end method

.method public final writeDoubleList(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/DoubleArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeDoubleList_Internal(ILcom/android/framework/protobuf/DoubleArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeDoubleList_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method public final writeEnum(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32(II)V

    return-void
.end method

.method public final writeEnumList(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32List(ILjava/util/List;Z)V

    return-void
.end method

.method abstract writeFixed32(I)V
.end method

.method public final writeFixed32List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32List_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method abstract writeFixed64(J)V
.end method

.method public final writeFixed64List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64List_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method public final writeFloat(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(II)V

    return-void
.end method

.method public final writeFloatList(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/FloatArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFloatList_Internal(ILcom/android/framework/protobuf/FloatArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFloatList_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method public final writeGroupList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public final writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method abstract writeInt32(I)V
.end method

.method public final writeInt32List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeInt32List_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method public final writeInt64(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64(IJ)V

    return-void
.end method

.method public final writeInt64List(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64List(ILjava/util/List;Z)V

    return-void
.end method

.method public writeMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    iget-object v3, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p0, v5, v3, v4}, Lcom/android/framework/protobuf/BinaryWriter;->writeMapEntryField(Lcom/android/framework/protobuf/Writer;ILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iget-object v4, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v3, v4, v6}, Lcom/android/framework/protobuf/BinaryWriter;->writeMapEntryField(Lcom/android/framework/protobuf/Writer;ILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/BinaryWriter;->writeVarint32(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    goto :goto_8

    :cond_38
    return-void
.end method

.method public final writeMessageList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public final writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public final writeMessageSetItem(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    instance-of v1, p2, Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x3

    if-eqz v1, :cond_11

    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, v2, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_14

    :cond_11
    invoke-virtual {p0, v2, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    :goto_14
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32(II)V

    invoke-virtual {p0, v0, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeTag(II)V

    return-void
.end method

.method public final writeSFixed32(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32(II)V

    return-void
.end method

.method public final writeSFixed32List(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed32List(ILjava/util/List;Z)V

    return-void
.end method

.method public final writeSFixed64(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64(IJ)V

    return-void
.end method

.method public final writeSFixed64List(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeFixed64List(ILjava/util/List;Z)V

    return-void
.end method

.method abstract writeSInt32(I)V
.end method

.method public final writeSInt32List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt32List_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method abstract writeSInt64(J)V
.end method

.method public final writeSInt64List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeSInt64List_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method abstract writeString(Ljava/lang/String;)V
.end method

.method public final writeStringList(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    instance-of v0, p2, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_1a

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_19

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/BinaryWriter;->writeLazyString(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_19
    goto :goto_2e

    :cond_1a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_20
    if-ltz v0, :cond_2e

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_2e
    :goto_2e
    return-void
.end method

.method abstract writeTag(II)V
.end method

.method public final writeUInt32List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32List_Internal(ILcom/android/framework/protobuf/IntArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt32List_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method public final writeUInt64List(ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64List_Internal(ILcom/android/framework/protobuf/LongArrayList;Z)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/BinaryWriter;->writeUInt64List_Internal(ILjava/util/List;Z)V

    :goto_e
    return-void
.end method

.method abstract writeVarint32(I)V
.end method

.method abstract writeVarint64(J)V
.end method
