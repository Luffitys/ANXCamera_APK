.class public final Landroid/net/IpPrefix;
.super Ljava/lang/Object;
.source "IpPrefix.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final address:[B

.field private final prefixLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/IpPrefix$2;

    invoke-direct {v0}, Landroid/net/IpPrefix$2;-><init>()V

    sput-object v0, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, p0, Landroid/net/IpPrefix;->address:[B

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpPrefix;->address:[B

    iput p2, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/IpPrefix;->address:[B

    iput p2, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/IpPrefix;)[B
    .registers 2

    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    return-object v0
.end method

.method private checkAndMaskAddressAndPrefixLength()V
    .registers 4

    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2b

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    goto :goto_2b

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpPrefix has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes which is neither 4 nor 16"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    return-void
.end method

.method public static lengthComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/net/IpPrefix$1;

    invoke-direct {v0}, Landroid/net/IpPrefix$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/net/InetAddress;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    if-eqz v0, :cond_19

    array-length v1, v0

    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    array-length v2, v2

    if-eq v1, v2, :cond_d

    goto :goto_19

    :cond_d
    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    :cond_19
    :goto_19
    const/4 v1, 0x0

    return v1
.end method

.method public containsPrefix(Landroid/net/IpPrefix;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/IpPrefix;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/IpPrefix;

    iget-object v2, p0, Landroid/net/IpPrefix;->address:[B

    iget-object v3, v0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, p0, Landroid/net/IpPrefix;->prefixLength:I

    iget v3, v0, Landroid/net/IpPrefix;->prefixLength:I

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Address is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPrefixLength()I
    .registers 2

    iget v0, p0, Landroid/net/IpPrefix;->prefixLength:I

    return v0
.end method

.method public getRawAddress()[B
    .registers 2

    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    return v0
.end method

.method public isIPv4()Z
    .registers 2

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    return v0
.end method

.method public isIPv6()Z
    .registers 2

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IpPrefix with invalid address! Shouldn\'t happen."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
