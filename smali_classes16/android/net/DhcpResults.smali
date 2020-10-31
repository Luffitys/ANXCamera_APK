.class public final Landroid/net/DhcpResults;
.super Ljava/lang/Object;
.source "DhcpResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/DhcpResults;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DhcpResults"


# instance fields
.field public captivePortalApiUrl:Ljava/lang/String;

.field public final dnsServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public domains:Ljava/lang/String;

.field public gateway:Ljava/net/InetAddress;

.field public ipAddress:Landroid/net/LinkAddress;

.field public leaseDuration:I

.field public mtu:I

.field public serverAddress:Ljava/net/Inet4Address;

.field public serverHostName:Ljava/lang/String;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/DhcpResults$1;

    invoke-direct {v0}, Landroid/net/DhcpResults$1;-><init>()V

    sput-object v0, Landroid/net/DhcpResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/net/DhcpResults;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    if-eqz p1, :cond_25

    iget-object v0, p1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iget-object v0, p1, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget v0, p1, Landroid/net/DhcpResults;->leaseDuration:I

    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    iget v0, p1, Landroid/net/DhcpResults;->mtu:I

    iput v0, p0, Landroid/net/DhcpResults;->mtu:I

    iget-object v0, p1, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    :cond_25
    return-void
.end method

.method public constructor <init>(Landroid/net/StaticIpConfiguration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    iget-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    :cond_27
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/net/DhcpResults;
    .registers 2

    invoke-static {p0}, Landroid/net/DhcpResults;->readFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;
    .registers 4

    sget-object v0, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/StaticIpConfiguration;

    new-instance v1, Landroid/net/DhcpResults;

    invoke-direct {v1, v0}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/DhcpResults;->mtu:I

    invoke-static {p0}, Lcom/android/net/module/util/InetAddressUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    iput-object v2, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public addDns(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    :try_start_6
    iget-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_29

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDns failed with addrString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DhcpResults"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_29
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public addDnsServer(Ljava/net/InetAddress;)V
    .registers 3

    iget-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    iput-object v0, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    iget-object v1, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    iput v1, p0, Landroid/net/DhcpResults;->mtu:I

    iput-object v0, p0, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/net/DhcpResults;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/DhcpResults;

    invoke-virtual {p0}, Landroid/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/StaticIpConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iget-object v4, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget v3, p0, Landroid/net/DhcpResults;->leaseDuration:I

    iget v4, v1, Landroid/net/DhcpResults;->leaseDuration:I

    if-ne v3, v4, :cond_50

    iget v3, p0, Landroid/net/DhcpResults;->mtu:I

    iget v4, v1, Landroid/net/DhcpResults;->mtu:I

    if-ne v3, v4, :cond_50

    iget-object v3, p0, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_51

    :cond_50
    move v0, v2

    :goto_51
    return v0
.end method

.method public getCaptivePortalApiUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsServers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDomains()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    return-object v0
.end method

.method public getGateway()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getIpAddress()Landroid/net/LinkAddress;
    .registers 2

    iget-object v0, p0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public getLeaseDuration()I
    .registers 2

    iget v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    return v0
.end method

.method public getMtu()I
    .registers 2

    iget v0, p0, Landroid/net/DhcpResults;->mtu:I

    return v0
.end method

.method public getRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/StaticIpConfiguration;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServerAddress()Ljava/net/Inet4Address;
    .registers 2

    iget-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getVendorInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hasMeteredHint()Z
    .registers 3

    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v1, "ANDROID_METERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public setCaptivePortalApiUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    return-void
.end method

.method public setDomains(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    return-void
.end method

.method public setGateway(Ljava/net/InetAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    return-void
.end method

.method public setGateway(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_9

    nop

    const/4 v0, 0x0

    return v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGateway failed with addrString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DhcpResults"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public setIpAddress(Landroid/net/LinkAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;I)Z
    .registers 6

    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, v0, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_10
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_d} :catch_10

    nop

    const/4 v0, 0x0

    return v0

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIpAddress failed with addrString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DhcpResults"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public setLeaseDuration(I)V
    .registers 2

    iput p1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    return-void
.end method

.method public setMtu(I)V
    .registers 2

    iput p1, p0, Landroid/net/DhcpResults;->mtu:I

    return-void
.end method

.method public setServerAddress(Ljava/net/Inet4Address;)V
    .registers 2

    iput-object p1, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    return-void
.end method

.method public setVendorInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    return-void
.end method

.method public toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .registers 3

    new-instance v0, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    iget-object v1, p0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " DHCP server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " Vendor info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " lease "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/DhcpResults;->mtu:I

    if-eqz v1, :cond_3a

    const-string v1, " MTU "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3a
    const-string v1, " Servername "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    if-eqz v1, :cond_52

    const-string v1, " CaptivePortalApiUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/net/StaticIpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, p2}, Lcom/android/net/module/util/InetAddressUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
