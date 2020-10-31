.class public Landroid/net/LinkAddress;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIFETIME_PERMANENT:J = 0x7fffffffffffffffL
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LIFETIME_UNKNOWN:J = -0x1L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private address:Ljava/net/InetAddress;

.field private deprecationTime:J

.field private expirationTime:J

.field private flags:I

.field private prefixLength:I

.field private scope:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/LinkAddress$1;

    invoke-direct {v0}, Landroid/net/LinkAddress$1;-><init>()V

    sput-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/net/InetAddress;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;IIIJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;III)V

    invoke-static {p1}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;III)V
    .registers 14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;IIIJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IIIJJ)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {p0 .. p8}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;IIIJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InterfaceAddress;)V
    .registers 4

    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method private init(Ljava/net/InetAddress;IIIJJ)V
    .registers 15

    if-eqz p1, :cond_b1

    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_b1

    if-ltz p2, :cond_b1

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_12

    const/16 v0, 0x20

    if-gt p2, v0, :cond_b1

    :cond_12
    const/16 v0, 0x80

    if-gt p2, v0, :cond_b1

    const-wide/16 v0, -0x1

    cmp-long v2, p5, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v4

    :goto_21
    cmp-long v5, p7, v0

    if-nez v5, :cond_26

    goto :goto_27

    :cond_26
    move v3, v4

    :goto_27
    if-ne v2, v3, :cond_a9

    cmp-long v2, p5, v0

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4b

    cmp-long v2, p5, v3

    if-ltz v2, :cond_34

    goto :goto_4b

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid deprecation time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    :goto_4b
    cmp-long v2, p7, v0

    if-eqz v2, :cond_6b

    cmp-long v2, p7, v3

    if-ltz v2, :cond_54

    goto :goto_6b

    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid expiration time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    :goto_6b
    cmp-long v2, p5, v0

    if-eqz v2, :cond_9c

    cmp-long v0, p7, v0

    if-eqz v0, :cond_9c

    cmp-long v0, p7, p5

    if-ltz v0, :cond_78

    goto :goto_9c

    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiration earlier than deprecation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    :goto_9c
    iput-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iput p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    iput p3, p0, Landroid/net/LinkAddress;->flags:I

    iput p4, p0, Landroid/net/LinkAddress;->scope:I

    iput-wide p5, p0, Landroid/net/LinkAddress;->deprecationTime:J

    iput-wide p7, p0, Landroid/net/LinkAddress;->expirationTime:J

    return-void

    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must not specify only one of deprecation time and expiration time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad LinkAddress params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isIpv6ULA()Z
    .registers 5

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, -0x2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    :cond_16
    return v1
.end method

.method private static scopeForUnicastAddress(Ljava/net/InetAddress;)I
    .registers 2

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Landroid/system/OsConstants;->RT_SCOPE_HOST:I

    return v0

    :cond_9
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_26

    :cond_16
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-nez v0, :cond_23

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_23

    sget v0, Landroid/system/OsConstants;->RT_SCOPE_SITE:I

    return v0

    :cond_23
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    return v0

    :cond_26
    :goto_26
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_LINK:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/net/LinkAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/LinkAddress;

    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v3, v0, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v2, v3, :cond_36

    iget v2, p0, Landroid/net/LinkAddress;->flags:I

    iget v3, v0, Landroid/net/LinkAddress;->flags:I

    if-ne v2, v3, :cond_36

    iget v2, p0, Landroid/net/LinkAddress;->scope:I

    iget v3, v0, Landroid/net/LinkAddress;->scope:I

    if-ne v2, v3, :cond_36

    iget-wide v2, p0, Landroid/net/LinkAddress;->deprecationTime:J

    iget-wide v4, v0, Landroid/net/LinkAddress;->deprecationTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_36

    iget-wide v2, p0, Landroid/net/LinkAddress;->expirationTime:J

    iget-wide v4, v0, Landroid/net/LinkAddress;->expirationTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_36

    const/4 v1, 0x1

    :cond_36
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDeprecationTime()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/net/LinkAddress;->deprecationTime:J

    return-wide v0
.end method

.method public getExpirationTime()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/net/LinkAddress;->expirationTime:J

    return-wide v0
.end method

.method public getFlags()I
    .registers 8

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    iget-wide v1, p0, Landroid/net/LinkAddress;->deprecationTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Landroid/net/LinkAddress;->deprecationTime:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_18

    sget v1, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    or-int/2addr v0, v1

    goto :goto_1c

    :cond_18
    sget v1, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    not-int v1, v1

    and-int/2addr v0, v1

    :cond_1c
    :goto_1c
    iget-wide v1, p0, Landroid/net/LinkAddress;->expirationTime:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v1, v5

    if-nez v5, :cond_2b

    sget v1, Landroid/system/OsConstants;->IFA_F_PERMANENT:I

    or-int/2addr v0, v1

    goto :goto_33

    :cond_2b
    cmp-long v1, v1, v3

    if-eqz v1, :cond_33

    sget v1, Landroid/system/OsConstants;->IFA_F_PERMANENT:I

    not-int v1, v1

    and-int/2addr v0, v1

    :cond_33
    :goto_33
    return v0
.end method

.method public getNetworkPrefixLength()I
    .registers 2

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    return v0
.end method

.method public getPrefixLength()I
    .registers 2

    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    return v0
.end method

.method public getScope()I
    .registers 2

    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/LinkAddress;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/LinkAddress;->scope:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/LinkAddress;->deprecationTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/LinkAddress;->expirationTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGlobalPreferred()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getFlags()I

    move-result v0

    iget v1, p0, Landroid/net/LinkAddress;->scope:I

    sget v2, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    if-ne v1, v2, :cond_2f

    invoke-direct {p0}, Landroid/net/LinkAddress;->isIpv6ULA()Z

    move-result v1

    if-nez v1, :cond_2f

    sget v1, Landroid/system/OsConstants;->IFA_F_DADFAILED:I

    sget v2, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    or-int/2addr v1, v2

    and-int/2addr v1, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2f

    sget v1, Landroid/system/OsConstants;->IFA_F_TENTATIVE:I

    and-int/2addr v1, v0

    int-to-long v1, v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    sget v1, Landroid/system/OsConstants;->IFA_F_OPTIMISTIC:I

    and-int/2addr v1, v0

    int-to-long v1, v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2f

    :cond_2d
    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1
.end method

.method public isIPv6()Z
    .registers 2

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v0

    return v0
.end method

.method public isIpv4()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    return v0
.end method

.method public isIpv6()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    return v0
.end method

.method public isSameAddressAs(Landroid/net/LinkAddress;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v2, p1, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v2, p1, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v1, v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/LinkAddress;->deprecationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/LinkAddress;->expirationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
