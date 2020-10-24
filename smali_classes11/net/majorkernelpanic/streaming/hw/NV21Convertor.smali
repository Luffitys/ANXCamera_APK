.class public Lnet/majorkernelpanic/streaming/hw/NV21Convertor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mBuffer:[B

.field mCopy:Ljava/nio/ByteBuffer;

.field private mHeight:I

.field private mPanesReversed:Z

.field private mPlanar:Z

.field private mSize:I

.field private mSliceHeight:I

.field private mStride:I

.field private mWidth:I

.field private mYPadding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    return-void
.end method


# virtual methods
.method public convert([BLjava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->convert([B)[B

    move-result-object p0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public convert([B)[B
    .locals 6

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    :cond_1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPlanar:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mHeight:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mWidth:I

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    :goto_0
    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, p1, v3

    aput-byte v4, v2, v1

    aget-byte v4, p1, v0

    aput-byte v4, p1, v3

    aget-byte v2, v2, v1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    add-int/2addr v2, v0

    div-int/lit8 v3, v0, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    return-object p0

    :cond_3
    return-object p1

    :cond_4
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mHeight:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mWidth:I

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    div-int/lit8 v3, v2, 0x4

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    mul-int/lit8 v4, v0, 0x2

    add-int v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    aput-byte v5, v3, v0

    div-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v0

    add-int/2addr v2, v4

    aget-byte v2, p1, v2

    aput-byte v2, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_3
    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    div-int/lit8 v3, v2, 0x4

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    mul-int/lit8 v4, v0, 0x2

    add-int v5, v2, v4

    aget-byte v5, p1, v5

    aput-byte v5, v3, v0

    div-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v0

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget p0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    div-int/lit8 v2, p0, 0x2

    invoke-static {v0, v1, p1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_7
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    add-int/2addr v2, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_8
    return-object p1
.end method

.method public getBufferSize()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getPlanar()Z
    .locals 0

    iget-boolean p0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPlanar:Z

    return p0
.end method

.method public getSliceHeigth()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    return p0
.end method

.method public getStride()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    return p0
.end method

.method public getUVPanesReversed()Z
    .locals 0

    iget-boolean p0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    return p0
.end method

.method public getYPadding()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    return p0
.end method

.method public setColorPanesReversed(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    return-void
.end method

.method public setEncoderColorFormat(I)V
    .locals 1

    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const v0, 0x7f000100

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->setPlanar(Z)V

    goto :goto_1

    :cond_0
    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlanar(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPlanar:Z

    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mHeight:I

    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mWidth:I

    iput p2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    mul-int/2addr p1, p2

    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    return-void
.end method

.method public setSliceHeigth(I)V
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    return-void
.end method

.method public setStride(I)V
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    return-void
.end method

.method public setYPadding(I)V
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    return-void
.end method
