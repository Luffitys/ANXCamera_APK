.class public final Landroid/net/MacAddress;
.super Ljava/lang/Object;
.source "MacAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MacAddress$MacAddressType;
    }
.end annotation


# static fields
.field public static final ALL_ZEROS_ADDRESS:Landroid/net/MacAddress;

.field private static final BASE_GOOGLE_MAC:Landroid/net/MacAddress;

.field public static final BROADCAST_ADDRESS:Landroid/net/MacAddress;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

.field private static final ETHER_ADDR_BROADCAST:[B

.field private static final ETHER_ADDR_LEN:I = 0x6

.field private static final LOCALLY_ASSIGNED_MASK:J

.field private static final MULTICAST_MASK:J

.field private static final NIC_MASK:J

.field private static final OUI_MASK:J

.field public static final TYPE_BROADCAST:I = 0x3

.field public static final TYPE_MULTICAST:I = 0x2

.field public static final TYPE_UNICAST:I = 0x1

.field public static final TYPE_UNKNOWN:I = 0x0

.field private static final VALID_LONG_MASK:J = 0xffffffffffffL


# instance fields
.field private final mAddr:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    invoke-static {v0}, Landroid/net/MacAddress;->addr([I)[B

    move-result-object v0

    sput-object v0, Landroid/net/MacAddress;->ETHER_ADDR_BROADCAST:[B

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    new-instance v0, Landroid/net/MacAddress;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/MacAddress;-><init>(J)V

    sput-object v0, Landroid/net/MacAddress;->ALL_ZEROS_ADDRESS:Landroid/net/MacAddress;

    const-string v0, "2:0:0:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    sput-wide v0, Landroid/net/MacAddress;->LOCALLY_ASSIGNED_MASK:J

    const-string v0, "1:0:0:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    sput-wide v0, Landroid/net/MacAddress;->MULTICAST_MASK:J

    const-string v0, "ff:ff:ff:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    sput-wide v0, Landroid/net/MacAddress;->OUI_MASK:J

    const-string v0, "0:0:0:ff:ff:ff"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    sput-wide v0, Landroid/net/MacAddress;->NIC_MASK:J

    const-string v0, "da:a1:19:0:0:0"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/MacAddress;->BASE_GOOGLE_MAC:Landroid/net/MacAddress;

    nop

    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/MacAddress;->DEFAULT_MAC_ADDRESS:Landroid/net/MacAddress;

    new-instance v0, Landroid/net/MacAddress$1;

    invoke-direct {v0}, Landroid/net/MacAddress$1;-><init>()V

    sput-object v0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_5c
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method private constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p1

    iput-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    return-void
.end method

.method synthetic constructor <init>(JLandroid/net/MacAddress$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/MacAddress;-><init>(J)V

    return-void
.end method

.method private static varargs addr([I)[B
    .registers 5

    array-length v0, p0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    new-array v0, v1, [B

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was not an array with length equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static byteAddrFromLongAddr(J)[B
    .registers 3

    invoke-static {p0, p1}, Landroid/net/util/MacAddressUtils;->byteAddrFromLongAddr(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static byteAddrFromStringAddr(Ljava/lang/String;)[B
    .registers 8

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_43

    new-array v1, v2, [B

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_42

    aget-object v4, v0, v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_2a

    const/16 v5, 0xff

    if-lt v5, v4, :cond_2a

    int-to-byte v5, v4

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "was not a valid MAC address"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    return-object v1

    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was not a valid MAC address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createRandomUnicastAddressWithGoogleBase()Landroid/net/MacAddress;
    .registers 2

    sget-object v0, Landroid/net/MacAddress;->BASE_GOOGLE_MAC:Landroid/net/MacAddress;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v0, v1}, Landroid/net/util/MacAddressUtils;->createRandomUnicastAddress(Landroid/net/MacAddress;Ljava/util/Random;)Landroid/net/MacAddress;

    move-result-object v0

    return-object v0
.end method

.method public static fromBytes([B)Landroid/net/MacAddress;
    .registers 4

    new-instance v0, Landroid/net/MacAddress;

    invoke-static {p0}, Landroid/net/MacAddress;->longAddrFromByteAddr([B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/net/MacAddress;-><init>(J)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Landroid/net/MacAddress;
    .registers 4

    new-instance v0, Landroid/net/MacAddress;

    invoke-static {p0}, Landroid/net/MacAddress;->longAddrFromStringAddr(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/net/MacAddress;-><init>(J)V

    return-object v0
.end method

.method public static isMacAddress([B)Z
    .registers 2

    invoke-static {p0}, Landroid/net/util/MacAddressUtils;->isMacAddress([B)Z

    move-result v0

    return v0
.end method

.method private static longAddrFromByteAddr([B)J
    .registers 3

    invoke-static {p0}, Landroid/net/util/MacAddressUtils;->longAddrFromByteAddr([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static longAddrFromStringAddr(Ljava/lang/String;)J
    .registers 10

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_48

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_10
    array-length v4, v0

    if-ge v3, v4, :cond_47

    aget-object v4, v0, v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_2f

    const/16 v5, 0xff

    if-lt v5, v4, :cond_2f

    int-to-long v5, v4

    const/16 v7, 0x8

    shl-long v7, v1, v7

    add-long v1, v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "was not a valid MAC address"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_47
    return-wide v1

    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was not a valid MAC address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static macAddressType([B)I
    .registers 2

    invoke-static {p0}, Landroid/net/MacAddress;->isMacAddress([B)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->getAddressType()I

    move-result v0

    return v0
.end method

.method public static stringAddrFromByteAddr([B)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/net/MacAddress;->isMacAddress([B)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static stringAddrFromLongAddr(J)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x28

    shr-long v1, p0, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x20

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x18

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x8

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    and-long v1, p0, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/MacAddress;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Landroid/net/MacAddress;

    iget-wide v0, v0, Landroid/net/MacAddress;->mAddr:J

    iget-wide v2, p0, Landroid/net/MacAddress;->mAddr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public getAddressType()I
    .registers 5

    sget-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    invoke-virtual {p0, v0}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    return v0

    :cond_a
    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    sget-wide v2, Landroid/net/MacAddress;->MULTICAST_MASK:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    return v0

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public getLinkLocalIpv6FromEui48Mac()Ljava/net/Inet6Address;
    .registers 9

    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, -0x2

    aput-byte v3, v1, v2

    const/16 v4, -0x80

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    aget-byte v4, v0, v2

    const/4 v6, 0x2

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    const/16 v7, 0x8

    aput-byte v4, v1, v7

    aget-byte v4, v0, v5

    const/16 v5, 0x9

    aput-byte v4, v1, v5

    aget-byte v4, v0, v6

    const/16 v5, 0xa

    aput-byte v4, v1, v5

    const/16 v4, 0xb

    const/4 v5, -0x1

    aput-byte v5, v1, v4

    const/16 v4, 0xc

    aput-byte v3, v1, v4

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    const/16 v4, 0xd

    aput-byte v3, v1, v4

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    const/16 v4, 0xe

    aput-byte v3, v1, v4

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    const/16 v4, 0xf

    aput-byte v3, v1, v4

    const/4 v3, 0x0

    :try_start_45
    invoke-static {v3, v1, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v2
    :try_end_49
    .catch Ljava/net/UnknownHostException; {:try_start_45 .. :try_end_49} :catch_4a

    return-object v2

    :catch_4a
    move-exception v2

    return-object v3
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isLocallyAssigned()Z
    .registers 5

    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    sget-wide v2, Landroid/net/MacAddress;->LOCALLY_ASSIGNED_MASK:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public matches(Landroid/net/MacAddress;Landroid/net/MacAddress;)Z
    .registers 9

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    iget-wide v2, p2, Landroid/net/MacAddress;->mAddr:J

    and-long/2addr v0, v2

    iget-wide v4, p1, Landroid/net/MacAddress;->mAddr:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public toByteArray()[B
    .registers 3

    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    invoke-static {v0, v1}, Landroid/net/MacAddress;->byteAddrFromLongAddr(J)[B

    move-result-object v0

    return-object v0
.end method

.method public toOuiString()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/net/MacAddress;->mAddr:J

    const/16 v3, 0x28

    shr-long/2addr v1, v3

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/MacAddress;->mAddr:J

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/MacAddress;->mAddr:J

    const/16 v5, 0x18

    shr-long/2addr v1, v5

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%02x:%02x:%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    invoke-static {v0, v1}, Landroid/net/MacAddress;->stringAddrFromLongAddr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/net/MacAddress;->mAddr:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
