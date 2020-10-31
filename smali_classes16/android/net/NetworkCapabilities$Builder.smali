.class public final Landroid/net/NetworkCapabilities$Builder;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mCaps:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    return-void
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 4

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    # invokes: Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->access$1400(I)V

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public build()Landroid/net/NetworkCapabilities;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The owner UID must be included in  administrator UIDs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_24
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    return-object v0
.end method

.method public removeCapability(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 4

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    # invokes: Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->access$1400(I)V

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setRequestorPackageName(Ljava/lang/String;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setRequestorPackageName(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setRequestorUid(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setRequestorUid(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setSignalStrength(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method
