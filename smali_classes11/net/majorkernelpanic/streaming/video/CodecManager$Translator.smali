.class Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bufferSize:I

.field private i:I

.field private mHeight:I

.field private mOutputColorFormat:I

.field private mUVSize:I

.field private mUVStride:I

.field private mWidth:I

.field private mYSize:I

.field private mYStride:I

.field private tmp:[B


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mOutputColorFormat:I

    iput p2, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mWidth:I

    iput p3, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mHeight:I

    int-to-double p1, p2

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    mul-int/lit8 p1, p1, 0x10

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYStride:I

    div-int/lit8 p1, p1, 0x2

    int-to-double p1, p1

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    mul-int/lit8 p1, p1, 0x10

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVStride:I

    iget p2, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYStride:I

    iget p3, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mHeight:I

    mul-int/2addr p2, p3

    iput p2, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYSize:I

    mul-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVSize:I

    mul-int/lit8 p3, p1, 0x2

    add-int/2addr p2, p3

    iput p2, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->bufferSize:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->tmp:[B

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->bufferSize:I

    return p0
.end method

.method public getUVStride()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVStride:I

    return p0
.end method

.method public getYStride()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYStride:I

    return p0
.end method

.method public translate([B)[B
    .locals 5

    iget v0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mOutputColorFormat:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->bufferSize:I

    div-int/lit8 v0, v0, 0x6

    mul-int/lit8 v1, v0, 0x4

    :goto_0
    iput v1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->i:I

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->i:I

    mul-int/lit8 v2, v0, 0x5

    if-ge v1, v2, :cond_1

    aget-byte v2, p1, v1

    add-int v3, v1, v0

    aget-byte v3, p1, v3

    aput-byte v3, p1, v1

    add-int v3, v1, v0

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    iget v0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYSize:I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->tmp:[B

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVSize:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->i:I

    :goto_1
    iget v0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->i:I

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVSize:I

    if-ge v0, v1, :cond_1

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYSize:I

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v2

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->tmp:[B

    add-int/2addr v1, v0

    aget-byte v1, v4, v1

    aput-byte v1, p1, v3

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v4, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->i:I

    goto :goto_1

    :cond_1
    return-object p1
.end method
