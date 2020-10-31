.class public final Lcom/android/service/nano/StringListParamProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "StringListParamProto.java"


# static fields
.field private static volatile _emptyArray:[Lcom/android/service/nano/StringListParamProto;


# instance fields
.field public element:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/service/nano/StringListParamProto;->clear()Lcom/android/service/nano/StringListParamProto;

    return-void
.end method

.method public static emptyArray()[Lcom/android/service/nano/StringListParamProto;
    .registers 2

    sget-object v0, Lcom/android/service/nano/StringListParamProto;->_emptyArray:[Lcom/android/service/nano/StringListParamProto;

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/service/nano/StringListParamProto;->_emptyArray:[Lcom/android/service/nano/StringListParamProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/service/nano/StringListParamProto;

    sput-object v1, Lcom/android/service/nano/StringListParamProto;->_emptyArray:[Lcom/android/service/nano/StringListParamProto;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/android/service/nano/StringListParamProto;->_emptyArray:[Lcom/android/service/nano/StringListParamProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/service/nano/StringListParamProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/service/nano/StringListParamProto;

    invoke-direct {v0}, Lcom/android/service/nano/StringListParamProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/service/nano/StringListParamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/service/nano/StringListParamProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/service/nano/StringListParamProto;

    invoke-direct {v0}, Lcom/android/service/nano/StringListParamProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/service/nano/StringListParamProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/service/nano/StringListParamProto;
    .registers 2

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/service/nano/StringListParamProto;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    if-eqz v1, :cond_26

    array-length v1, v1

    if-lez v1, :cond_26

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_22

    aget-object v4, v4, v3

    if-eqz v4, :cond_1f

    add-int/lit8 v1, v1, 0x1

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_22
    add-int/2addr v0, v2

    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    :cond_26
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/service/nano/StringListParamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/service/nano/StringListParamProto;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/service/nano/StringListParamProto;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_44

    const/16 v1, 0xa

    if-eq v0, v1, :cond_11

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_43

    return-object p0

    :cond_11
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    array-length v2, v2

    :goto_1e
    add-int v4, v2, v1

    new-array v4, v4, [Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v5, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    :goto_29
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3a

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_3a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    iput-object v4, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    nop

    :cond_43
    goto :goto_0

    :cond_44
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
