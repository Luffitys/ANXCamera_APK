.class public Landroid/net/RouteInfo$RouteKey;
.super Ljava/lang/Object;
.source "RouteInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteKey"
.end annotation


# instance fields
.field private final mDestination:Landroid/net/IpPrefix;

.field private final mGateway:Ljava/net/InetAddress;

.field private final mInterface:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/RouteInfo$RouteKey;->mDestination:Landroid/net/IpPrefix;

    iput-object p2, p0, Landroid/net/RouteInfo$RouteKey;->mGateway:Ljava/net/InetAddress;

    iput-object p3, p0, Landroid/net/RouteInfo$RouteKey;->mInterface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/RouteInfo$RouteKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/RouteInfo$RouteKey;

    iget-object v2, v0, Landroid/net/RouteInfo$RouteKey;->mDestination:Landroid/net/IpPrefix;

    iget-object v3, p0, Landroid/net/RouteInfo$RouteKey;->mDestination:Landroid/net/IpPrefix;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/net/RouteInfo$RouteKey;->mGateway:Ljava/net/InetAddress;

    iget-object v3, p0, Landroid/net/RouteInfo$RouteKey;->mGateway:Ljava/net/InetAddress;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/net/RouteInfo$RouteKey;->mInterface:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/RouteInfo$RouteKey;->mInterface:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    :goto_2a
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/RouteInfo$RouteKey;->mDestination:Landroid/net/IpPrefix;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/RouteInfo$RouteKey;->mGateway:Ljava/net/InetAddress;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/RouteInfo$RouteKey;->mInterface:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
