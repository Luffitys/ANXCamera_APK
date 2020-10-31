.class public abstract Landroid/net/lowpan/LowpanInterface$Callback;
.super Ljava/lang/Object;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(Z)V
    .registers 2

    return-void
.end method

.method public onEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public onLinkAddressAdded(Landroid/net/LinkAddress;)V
    .registers 2

    return-void
.end method

.method public onLinkAddressRemoved(Landroid/net/LinkAddress;)V
    .registers 2

    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .registers 2

    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .registers 2

    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .registers 2

    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onUpChanged(Z)V
    .registers 2

    return-void
.end method
