.class Lcom/android/framework/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final prefixesStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/framework/protobuf/RopeByteString$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/framework/protobuf/RopeByteString$Balancer;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->balance(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private balance(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    :goto_e
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    new-instance v2, Lcom/android/framework/protobuf/RopeByteString;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    move-object v0, v2

    goto :goto_e

    :cond_26
    return-object v0
.end method

.method private doBalance(Lcom/android/framework/protobuf/ByteString;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->insert(Lcom/android/framework/protobuf/ByteString;)V

    goto :goto_20

    :cond_a
    instance-of v0, p1, Lcom/android/framework/protobuf/RopeByteString;

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/RopeByteString;

    # getter for: Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;
    invoke-static {v0}, Lcom/android/framework/protobuf/RopeByteString;->access$400(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    # getter for: Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;
    invoke-static {v0}, Lcom/android/framework/protobuf/RopeByteString;->access$500(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    nop

    :goto_20
    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDepthBinForLength(I)I
    .registers 4

    sget-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_d

    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    add-int/lit8 v0, v1, -0x1

    :cond_d
    return v0
.end method

.method private insert(Lcom/android/framework/protobuf/ByteString;)V
    .registers 9

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    sget-object v1, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_97

    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_26

    goto/16 :goto_97

    :cond_26
    sget-object v2, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    :goto_32
    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_58

    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    if-ge v4, v2, :cond_58

    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    new-instance v6, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v6, v4, v3, v5}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    move-object v3, v6

    goto :goto_32

    :cond_58
    new-instance v4, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v4, v3, p1, v5}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    move-object v3, v4

    :goto_5e
    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_91

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    sget-object v4, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    add-int/lit8 v6, v0, 0x1

    aget v1, v4, v6

    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    if-ge v4, v1, :cond_91

    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    new-instance v6, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v6, v4, v3, v5}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    move-object v3, v6

    goto :goto_5e

    :cond_91
    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_9c

    :cond_97
    :goto_97
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :goto_9c
    return-void
.end method
