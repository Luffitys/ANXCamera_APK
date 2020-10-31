.class Lcom/android/framework/protobuf/ByteString$2;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/framework/protobuf/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)I
    .registers 7

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v1

    :goto_8
    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    nop

    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v2

    # invokes: Lcom/android/framework/protobuf/ByteString;->toInt(B)I
    invoke-static {v2}, Lcom/android/framework/protobuf/ByteString;->access$200(B)I

    move-result v2

    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v3

    # invokes: Lcom/android/framework/protobuf/ByteString;->toInt(B)I
    invoke-static {v3}, Lcom/android/framework/protobuf/ByteString;->access$200(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_2c

    return v2

    :cond_2c
    goto :goto_8

    :cond_2d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/ByteString$2;->compare(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)I

    move-result p1

    return p1
.end method
