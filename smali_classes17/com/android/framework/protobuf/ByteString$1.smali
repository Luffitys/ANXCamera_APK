.class Lcom/android/framework/protobuf/ByteString$1;
.super Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lcom/android/framework/protobuf/ByteString;


# direct methods
.method constructor <init>(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3

    iput-object p1, p0, Lcom/android/framework/protobuf/ByteString$1;->this$0:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    iget-object v0, p0, Lcom/android/framework/protobuf/ByteString$1;->this$0:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/ByteString$1;->limit:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public nextByte()B
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$1;->this$0:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/ByteString;->internalByteAt(I)B

    move-result v1

    return v1

    :cond_11
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
