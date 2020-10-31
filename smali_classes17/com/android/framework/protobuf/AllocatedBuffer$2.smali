.class Lcom/android/framework/protobuf/AllocatedBuffer$2;
.super Lcom/android/framework/protobuf/AllocatedBuffer;
.source "AllocatedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/android/framework/protobuf/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private position:I

.field final synthetic val$bytes:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>([BII)V
    .registers 4

    iput-object p1, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->val$bytes:[B

    iput p2, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->val$offset:I

    iput p3, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->val$length:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public array()[B
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->val$bytes:[B

    return-object v0
.end method

.method public arrayOffset()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->val$offset:I

    return v0
.end method

.method public hasArray()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasNioBuffer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public limit()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->val$length:I

    return v0
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public position()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->position:I

    return v0
.end method

.method public position(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 5

    if-ltz p1, :cond_9

    iget v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->val$length:I

    if-gt p1, v0, :cond_9

    iput p1, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->position:I

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remaining()I
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->val$length:I

    iget v1, p0, Lcom/android/framework/protobuf/AllocatedBuffer$2;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
