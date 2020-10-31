.class public Landroid/net/util/IpUtils;
.super Ljava/lang/Object;
.source "IpUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 6

    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_7

    const-string v0, "[%s]:%d"

    goto :goto_9

    :cond_7
    const-string v0, "%s:%d"

    :goto_9
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checksum(Ljava/nio/ByteBuffer;III)I
    .registers 11

    move v0, p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v3, p3, p2

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_22

    invoke-virtual {v2, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v5

    invoke-static {v5}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_22
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr p2, v4

    if-eq p3, p2, :cond_34

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    int-to-short v4, v4

    if-gez v4, :cond_31

    add-int/lit16 v5, v4, 0x100

    int-to-short v4, v5

    :cond_31
    mul-int/lit16 v5, v4, 0x100

    add-int/2addr v0, v5

    :cond_34
    shr-int/lit8 v4, v0, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    and-int v6, v0, v5

    add-int/2addr v4, v6

    shr-int/lit8 v0, v4, 0x10

    and-int/2addr v0, v5

    add-int/2addr v0, v4

    and-int/2addr v0, v5

    not-int v4, v0

    int-to-short v5, v4

    invoke-static {v5}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v5

    return v5
.end method

.method private static intAbs(S)I
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static ipChecksum(Ljava/nio/ByteBuffer;I)S
    .registers 5

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v1}, Landroid/net/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    return v1
.end method

.method private static ipversion(Ljava/nio/ByteBuffer;I)B
    .registers 3

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, -0x10

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    return v0
.end method

.method public static isValidUdpOrTcpPort(I)Z
    .registers 2

    if-lez p0, :cond_8

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I
    .registers 6

    add-int v0, p2, p3

    add-int/lit8 v1, p1, 0xc

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0xe

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x10

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x12

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I
    .registers 7

    add-int v0, p2, p3

    const/16 v1, 0x8

    :goto_4
    const/16 v2, 0x28

    if-ge v1, v2, :cond_16

    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    invoke-static {v2}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_16
    return v0
.end method

.method public static tcpChecksum(Ljava/nio/ByteBuffer;III)S
    .registers 5

    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v0, p1, p2, p3}, Landroid/net/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result v0

    return v0
.end method

.method private static transportChecksum(Ljava/nio/ByteBuffer;IIII)S
    .registers 8

    if-ltz p4, :cond_2c

    invoke-static {p0, p2}, Landroid/net/util/IpUtils;->ipversion(Ljava/nio/ByteBuffer;I)B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    invoke-static {p0, p2, p1, p4}, Landroid/net/util/IpUtils;->pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I

    move-result v1

    goto :goto_15

    :cond_e
    const/4 v1, 0x6

    if-ne v0, v1, :cond_24

    invoke-static {p0, p2, p1, p4}, Landroid/net/util/IpUtils;->pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I

    move-result v1

    :goto_15
    add-int v2, p3, p4

    invoke-static {p0, v1, p3, v2}, Landroid/net/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p1, v2, :cond_22

    if-nez v1, :cond_22

    const/4 v1, -0x1

    :cond_22
    int-to-short v2, v1

    return v2

    :cond_24
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Checksum must be IPv4 or IPv6"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport length < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static udpChecksum(Ljava/nio/ByteBuffer;II)S
    .registers 5

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v0

    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {p0, v1, p1, p2, v0}, Landroid/net/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result v1

    return v1
.end method
