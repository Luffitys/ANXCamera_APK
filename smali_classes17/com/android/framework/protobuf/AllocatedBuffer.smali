.class abstract Lcom/android/framework/protobuf/AllocatedBuffer;
.super Ljava/lang/Object;
.source "AllocatedBuffer.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 2

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/android/framework/protobuf/AllocatedBuffer$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/AllocatedBuffer$1;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static wrap([B)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([BII)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 7

    if-ltz p1, :cond_e

    if-ltz p2, :cond_e

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_e

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "bytes.length=%d, offset=%d, length=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static wrapNoCheck([BII)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 4

    new-instance v0, Lcom/android/framework/protobuf/AllocatedBuffer$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/AllocatedBuffer$2;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract array()[B
.end method

.method public abstract arrayOffset()I
.end method

.method public abstract hasArray()Z
.end method

.method public abstract hasNioBuffer()Z
.end method

.method public abstract limit()I
.end method

.method public abstract nioBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract position()I
.end method

.method public abstract position(I)Lcom/android/framework/protobuf/AllocatedBuffer;
.end method

.method public abstract remaining()I
.end method
