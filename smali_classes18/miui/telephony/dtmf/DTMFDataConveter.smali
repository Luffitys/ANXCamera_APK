.class public Lmiui/telephony/dtmf/DTMFDataConveter;
.super Ljava/lang/Object;
.source "DTMFDataConveter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTMFDataConveter"


# instance fields
.field private mBitPerSample:I

.field private mSign:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/telephony/dtmf/DTMFDataConveter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/telephony/dtmf/DTMFDataConveter;->setBitPerSample(I)V

    invoke-virtual {p0, p2}, Lmiui/telephony/dtmf/DTMFDataConveter;->setSign(Z)V

    return-void
.end method


# virtual methods
.method public byteToFloat([B)[F
    .registers 8

    if-nez p1, :cond_b

    const-string v0, "DTMFDataConveter"

    const-string v1, "bit mode can not match"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_b
    array-length v0, p1

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    div-int/2addr v0, v1

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_17
    array-length v3, v0

    if-ge v1, v3, :cond_77

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v3

    if-ne v3, v2, :cond_3b

    iget-boolean v3, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    if-eqz v3, :cond_2d

    aget-byte v3, p1, v1

    int-to-float v3, v3

    const/high16 v4, 0x42fe0000    # 127.0f

    div-float/2addr v3, v4

    aput v3, v0, v1

    goto :goto_74

    :cond_2d
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x7f

    int-to-float v3, v3

    const v4, 0x3c010204

    mul-float/2addr v3, v4

    aput v3, v0, v1

    goto :goto_74

    :cond_3b
    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_74

    iget-boolean v3, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    const v4, 0x38000100

    if-eqz v3, :cond_5e

    mul-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    shl-int/2addr v5, v2

    or-int/2addr v3, v5

    int-to-short v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    aput v3, v0, v1

    goto :goto_74

    :cond_5e
    mul-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v2

    or-int/2addr v3, v5

    add-int/lit16 v5, v3, -0x7fff

    int-to-float v5, v5

    mul-float/2addr v5, v4

    aput v5, v0, v1

    :cond_74
    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_77
    return-object v0
.end method

.method public floatToByte([F)[B
    .registers 10

    if-nez p1, :cond_b

    const-string v0, "DTMFDataConveter"

    const-string v1, "bit mode can not match"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_b
    array-length v0, p1

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_17
    array-length v3, p1

    if-ge v1, v3, :cond_74

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v3

    if-ne v3, v2, :cond_37

    iget-boolean v3, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    const/high16 v4, 0x42fe0000    # 127.0f

    if-eqz v3, :cond_2e

    aget v3, p1, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_71

    :cond_2e
    aget v3, p1, v1

    mul-float/2addr v3, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_71

    :cond_37
    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFDataConveter;->getBitPerSample()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_71

    iget-boolean v3, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    const-wide v4, 0x40dfffc000000000L    # 32767.0

    if-eqz v3, :cond_5c

    aget v3, p1, v1

    float-to-double v6, v3

    mul-double/2addr v6, v4

    double-to-int v3, v6

    mul-int/lit8 v4, v1, 0x2

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_71

    :cond_5c
    aget v3, p1, v1

    float-to-double v6, v3

    mul-double/2addr v6, v4

    double-to-int v3, v6

    add-int/lit16 v3, v3, 0x7fff

    mul-int/lit8 v4, v1, 0x2

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_74
    return-object v0
.end method

.method public getBitPerSample()I
    .registers 2

    iget v0, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mBitPerSample:I

    return v0
.end method

.method public getSign()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    return v0
.end method

.method public setBitPerSample(I)V
    .registers 2

    iput p1, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mBitPerSample:I

    return-void
.end method

.method public setSign(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/telephony/dtmf/DTMFDataConveter;->mSign:Z

    return-void
.end method
