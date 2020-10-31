.class abstract Lcom/android/framework/protobuf/ByteString$LeafByteString;
.super Lcom/android/framework/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z
.end method

.method protected final getTreeDepth()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final isBalanced()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    return-void
.end method
