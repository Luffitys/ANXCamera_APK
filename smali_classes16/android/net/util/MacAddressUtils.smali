.class public final Landroid/net/util/MacAddressUtils;
.super Ljava/lang/Object;
.source "MacAddressUtils.java"


# static fields
.field private static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final ETHER_ADDR_LEN:I = 0x6

.field private static final LOCALLY_ASSIGNED_MASK:J

.field private static final MULTICAST_MASK:J

.field private static final NIC_MASK:J

.field private static final OUI_MASK:J

.field private static final VALID_LONG_MASK:J = 0xffffffffffffL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    nop

    const-string v0, "2:0:0:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Landroid/net/util/MacAddressUtils;->LOCALLY_ASSIGNED_MASK:J

    nop

    const-string v0, "1:0:0:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Landroid/net/util/MacAddressUtils;->MULTICAST_MASK:J

    nop

    const-string v0, "ff:ff:ff:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Landroid/net/util/MacAddressUtils;->OUI_MASK:J

    nop

    const-string v0, "0:0:0:ff:ff:ff"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sput-wide v0, Landroid/net/util/MacAddressUtils;->NIC_MASK:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteAddrFromLongAddr(J)[B
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x6

    :goto_4
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_11

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    shr-long/2addr p0, v1

    move v1, v2

    goto :goto_4

    :cond_11
    return-object v0
.end method

.method public static createRandomUnicastAddress()Landroid/net/MacAddress;
    .registers 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/net/util/MacAddressUtils;->createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;

    move-result-object v0

    return-object v0
.end method

.method public static createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;
    .registers 8

    if-nez p0, :cond_d

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    goto :goto_20

    :cond_d
    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sget-wide v2, Landroid/net/util/MacAddressUtils;->OUI_MASK:J

    and-long/2addr v0, v2

    sget-wide v2, Landroid/net/util/MacAddressUtils;->NIC_MASK:J

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    :goto_20
    sget-wide v2, Landroid/net/util/MacAddressUtils;->LOCALLY_ASSIGNED_MASK:J

    or-long/2addr v0, v2

    sget-wide v2, Landroid/net/util/MacAddressUtils;->MULTICAST_MASK:J

    not-long v2, v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/net/util/MacAddressUtils;->byteAddrFromLongAddr(J)[B

    move-result-object v2

    invoke-static {v2}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v2

    const-string v3, "02:00:00:00:00:00"

    invoke-virtual {v2, v3}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static {p0, p1}, Landroid/net/util/MacAddressUtils;->createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;

    move-result-object v3

    return-object v3

    :cond_3c
    return-object v2
.end method

.method public static isMacAddress([B)Z
    .registers 3

    if-eqz p0, :cond_8

    array-length v0, p0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isMulticastAddress(Landroid/net/MacAddress;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    sget-wide v2, Landroid/net/util/MacAddressUtils;->MULTICAST_MASK:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static longAddrFromByteAddr([B)J
    .registers 11

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/net/util/MacAddressUtils;->isMacAddress([B)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1d

    aget-byte v4, p0, v3

    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x8

    shl-long v6, v0, v6

    int-to-long v8, v5

    add-long v0, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1d
    return-wide v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not a valid MAC address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
