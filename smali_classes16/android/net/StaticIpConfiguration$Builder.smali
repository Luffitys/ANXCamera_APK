.class public final Landroid/net/StaticIpConfiguration$Builder;
.super Ljava/lang/Object;
.source "StaticIpConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/StaticIpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDnsServers:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDomains:Ljava/lang/String;

.field private mGateway:Ljava/net/InetAddress;

.field private mIpAddress:Landroid/net/LinkAddress;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/net/StaticIpConfiguration;
    .registers 5

    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iget-object v1, p0, Landroid/net/StaticIpConfiguration$Builder;->mIpAddress:Landroid/net/LinkAddress;

    iput-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    iget-object v1, p0, Landroid/net/StaticIpConfiguration$Builder;->mGateway:Ljava/net/InetAddress;

    iput-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v1, p0, Landroid/net/StaticIpConfiguration$Builder;->mDnsServers:Ljava/lang/Iterable;

    if-eqz v1, :cond_27

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_27
    iget-object v1, p0, Landroid/net/StaticIpConfiguration$Builder;->mDomains:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    return-object v0
.end method

.method public setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/net/StaticIpConfiguration$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/net/StaticIpConfiguration$Builder;->mDnsServers:Ljava/lang/Iterable;

    return-object p0
.end method

.method public setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Landroid/net/StaticIpConfiguration$Builder;->mDomains:Ljava/lang/String;

    return-object p0
.end method

.method public setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Landroid/net/StaticIpConfiguration$Builder;->mGateway:Ljava/net/InetAddress;

    return-object p0
.end method

.method public setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Landroid/net/StaticIpConfiguration$Builder;->mIpAddress:Landroid/net/LinkAddress;

    return-object p0
.end method
