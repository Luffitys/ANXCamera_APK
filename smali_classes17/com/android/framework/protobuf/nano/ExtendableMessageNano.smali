.class public abstract Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;>",
        "Lcom/android/framework/protobuf/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/InternalNano;->cloneUnknownFieldData(Lcom/android/framework/protobuf/nano/ExtendableMessageNano;Lcom/android/framework/protobuf/nano/ExtendableMessageNano;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return v0
.end method

.method public final getExtension(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget v2, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldData;->getValue(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    :goto_17
    return-object v1
.end method

.method public final hasExtension(Lcom/android/framework/protobuf/nano/Extension;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v2, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public final setExtension(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;TT;)TM;"
        }
    .end annotation

    iget v0, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    if-nez p2, :cond_1b

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz v1, :cond_3c

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->remove(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    goto :goto_3c

    :cond_1b
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_28

    new-instance v2, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v2}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    goto :goto_2c

    :cond_28
    invoke-virtual {v2, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v1

    :goto_2c
    if-nez v1, :cond_39

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    new-instance v3, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v3, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;-><init>(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    goto :goto_3c

    :cond_39
    invoke-virtual {v1, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;->setValue(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    move-object v1, p0

    return-object v1
.end method

.method protected final storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-static {p2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    sub-int v3, v2, v0

    invoke-virtual {p1, v0, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v3

    new-instance v4, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    invoke-direct {v4, p2, v3}, Lcom/android/framework/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v6, :cond_2c

    new-instance v6, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v6}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    goto :goto_30

    :cond_2c
    invoke-virtual {v6, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v5

    :goto_30
    if-nez v5, :cond_3d

    new-instance v6, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v6}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    move-object v5, v6

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v6, v1, v5}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    :cond_3d
    invoke-virtual {v5, v4}, Lcom/android/framework/protobuf/nano/FieldData;->addUnknownField(Lcom/android/framework/protobuf/nano/UnknownFieldData;)V

    const/4 v6, 0x1

    return v6
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method
