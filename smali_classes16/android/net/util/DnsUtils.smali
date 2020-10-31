.class public Landroid/net/util/DnsUtils;
.super Ljava/lang/Object;
.source "DnsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/DnsUtils$SortableAddress;,
        Landroid/net/util/DnsUtils$Rfc6724Comparator;
    }
.end annotation


# static fields
.field private static final CHAR_BIT:I = 0x8

.field public static final IPV6_ADDR_SCOPE_GLOBAL:I = 0xe

.field public static final IPV6_ADDR_SCOPE_LINKLOCAL:I = 0x2

.field public static final IPV6_ADDR_SCOPE_NODELOCAL:I = 0x1

.field public static final IPV6_ADDR_SCOPE_SITELOCAL:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DnsUtils"

.field private static final sRfc6724Comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/net/util/DnsUtils$SortableAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/util/DnsUtils$Rfc6724Comparator;

    invoke-direct {v0}, Landroid/net/util/DnsUtils$Rfc6724Comparator;-><init>()V

    sput-object v0, Landroid/net/util/DnsUtils;->sRfc6724Comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/net/InetAddress;)I
    .registers 2

    invoke-static {p0}, Landroid/net/util/DnsUtils;->findLabel(Ljava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/net/InetAddress;)I
    .registers 2

    invoke-static {p0}, Landroid/net/util/DnsUtils;->findScope(Ljava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/net/InetAddress;)I
    .registers 2

    invoke-static {p0}, Landroid/net/util/DnsUtils;->findPrecedence(Ljava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/net/InetAddress;)Z
    .registers 2

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .registers 3

    invoke-static {p0, p1}, Landroid/net/util/DnsUtils;->compareIpv6PrefixMatchLen(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method private static checkConnectivity(Landroid/net/Network;ILjava/net/SocketAddress;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {p1, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_9} :catch_23

    nop

    if-eqz p0, :cond_f

    :try_start_c
    invoke-virtual {p0, v1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    :cond_f
    invoke-static {v1, p2}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_1d
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_12} :catch_1d
    .catchall {:try_start_c .. :try_end_12} :catchall_18

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    nop

    const/4 v0, 0x1

    return v0

    :catchall_18
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v0

    :catch_1d
    move-exception v2

    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v0

    :catch_23
    move-exception v1

    return v0
.end method

.method private static compareIpv6PrefixMatchLen(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .registers 8

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_e

    const/4 v2, 0x0

    return v2

    :cond_e
    const/4 v2, 0x0

    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_33

    aget-byte v3, v0, v2

    aget-byte v4, v1, v2

    if-ne v3, v4, :cond_1c

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    aget-byte v3, v0, v2

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v3

    aget-byte v4, v1, v2

    invoke-static {v4}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v4

    xor-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x18

    add-int/2addr v4, v5

    return v4

    :cond_33
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    return v2
.end method

.method private static findLabel(Ljava/net/InetAddress;)I
    .registers 3

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv4Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    return v0

    :cond_8
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    return v0

    :cond_17
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address6To4(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    return v0

    :cond_1f
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6AddressTeredo(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x5

    return v0

    :cond_27
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6AddressULA(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0xd

    return v0

    :cond_30
    move-object v0, p0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x3

    return v0

    :cond_3b
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0xb

    return v0

    :cond_44
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address6Bone(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/16 v0, 0xc

    return v0

    :cond_4d
    return v1

    :cond_4e
    return v1
.end method

.method private static findPrecedence(Ljava/net/InetAddress;)I
    .registers 3

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv4Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x23

    return v0

    :cond_9
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x32

    return v0

    :cond_19
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address6To4(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x1e

    return v0

    :cond_22
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6AddressTeredo(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x5

    return v0

    :cond_2a
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6AddressULA(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x3

    return v0

    :cond_32
    move-object v0, p0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address6Bone(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_4b

    :cond_48
    const/16 v0, 0x28

    return v0

    :cond_4b
    :goto_4b
    return v1

    :cond_4c
    return v1
.end method

.method private static findScope(Ljava/net/InetAddress;)I
    .registers 4

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x2

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Landroid/net/util/DnsUtils;->getIpv6MulticastScope(Ljava/net/InetAddress;)I

    move-result v0

    return v0

    :cond_14
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2a

    :cond_21
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x5

    return v0

    :cond_29
    return v1

    :cond_2a
    :goto_2a
    return v2

    :cond_2b
    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv4Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    return v1

    :cond_3f
    :goto_3f
    return v2

    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method private static findSrcAddress(Landroid/net/Network;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 7

    invoke-static {p1}, Landroid/net/util/DnsUtils;->isIpv4Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    goto :goto_12

    :cond_a
    invoke-static {p1}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_5e

    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    :goto_12
    :try_start_12
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v0, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_12 .. :try_end_1a} :catch_42

    nop

    if-eqz p0, :cond_20

    :try_start_1d
    invoke-virtual {p0, v2}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    :cond_20
    new-instance v3, Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {v2, v3}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    invoke-static {v2}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_33} :catch_3c
    .catch Landroid/system/ErrnoException; {:try_start_1d .. :try_end_33} :catch_3c
    .catchall {:try_start_1d .. :try_end_33} :catchall_37

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-object v1

    :catchall_37
    move-exception v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v1

    :catch_3c
    move-exception v3

    nop

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-object v1

    :catch_42
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findSrcAddress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/system/ErrnoException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DnsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5e
    return-object v1
.end method

.method private static getIpv6MulticastScope(Ljava/net/InetAddress;)I
    .registers 3

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_11

    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    :goto_11
    return v0
.end method

.method public static haveIpv4(Landroid/net/Network;)Z
    .registers 4

    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-static {p0, v1, v0}, Landroid/net/util/DnsUtils;->checkConnectivity(Landroid/net/Network;ILjava/net/SocketAddress;)Z

    move-result v1

    return v1
.end method

.method public static haveIpv6(Landroid/net/Network;)Z
    .registers 4

    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "2000::"

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-static {p0, v1, v0}, Landroid/net/util/DnsUtils;->checkConnectivity(Landroid/net/Network;ILjava/net/SocketAddress;)Z

    move-result v1

    return v1
.end method

.method private static isIpv4Address(Ljava/net/InetAddress;)Z
    .registers 2

    instance-of v0, p0, Ljava/net/Inet4Address;

    return v0
.end method

.method private static isIpv6Address(Ljava/net/InetAddress;)Z
    .registers 2

    instance-of v0, p0, Ljava/net/Inet6Address;

    return v0
.end method

.method private static isIpv6Address6Bone(Ljava/net/InetAddress;)Z
    .registers 6

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    aget-byte v2, v0, v1

    const/16 v3, 0x3f

    const/4 v4, 0x1

    if-ne v2, v3, :cond_19

    aget-byte v2, v0, v4

    const/4 v3, -0x2

    if-ne v2, v3, :cond_19

    move v1, v4

    :cond_19
    return v1
.end method

.method private static isIpv6Address6To4(Ljava/net/InetAddress;)Z
    .registers 6

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ne v2, v3, :cond_19

    aget-byte v2, v0, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    move v1, v4

    :cond_19
    return v1
.end method

.method private static isIpv6AddressTeredo(Ljava/net/InetAddress;)Z
    .registers 6

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ne v2, v3, :cond_22

    aget-byte v2, v0, v4

    if-ne v2, v4, :cond_22

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    if-nez v2, :cond_22

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    if-nez v2, :cond_22

    move v1, v4

    :cond_22
    return v1
.end method

.method private static isIpv6AddressULA(Ljava/net/InetAddress;)Z
    .registers 4

    invoke-static {p0}, Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xfe

    const/16 v2, 0xfc

    if-ne v0, v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public static rfc6724Sort(Landroid/net/Network;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    new-instance v3, Landroid/net/util/DnsUtils$SortableAddress;

    invoke-static {p0, v2}, Landroid/net/util/DnsUtils;->findSrcAddress(Landroid/net/Network;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/net/util/DnsUtils$SortableAddress;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_22
    sget-object v1, Landroid/net/util/DnsUtils;->sRfc6724Comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/util/DnsUtils$SortableAddress;

    iget-object v4, v3, Landroid/net/util/DnsUtils$SortableAddress;->address:Ljava/net/InetAddress;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_42
    return-object v1
.end method
