.class Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
.super Ljava/lang/Object;
.source "CodedInputStream.java"

# interfaces
.implements Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkippedDataSink"
.end annotation


# instance fields
.field private byteArrayStream:Ljava/io/ByteArrayOutputStream;

.field private lastPos:I

.field final synthetic this$0:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;


# direct methods
.method private constructor <init>(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->access$500(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)I

    move-result p1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    return-void
.end method


# virtual methods
.method getSkippedData()Ljava/nio/ByteBuffer;
    .registers 5

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->access$600(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)[B

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I
    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->access$500(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->access$600(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)[B

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I
    invoke-static {v3}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->access$500(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public onRefill()V
    .registers 6

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_b

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    :cond_b
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->access$600(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)[B

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I
    invoke-static {v3}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->access$500(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)I

    move-result v3

    iget v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    return-void
.end method
