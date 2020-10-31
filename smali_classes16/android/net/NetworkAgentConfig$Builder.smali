.class public final Landroid/net/NetworkAgentConfig$Builder;
.super Ljava/lang/Object;
.source "NetworkAgentConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkAgentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mConfig:Landroid/net/NetworkAgentConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/NetworkAgentConfig;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/NetworkAgentConfig;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    return-object v0
.end method

.method public disableNat64Detection()Landroid/net/NetworkAgentConfig$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    return-object p0
.end method

.method public disableProvisioningNotification()Landroid/net/NetworkAgentConfig$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    return-object p0
.end method

.method public setExplicitlySelected(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p1, v0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    return-object p0
.end method

.method public setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    # setter for: Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/net/NetworkAgentConfig;->access$002(Landroid/net/NetworkAgentConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput p1, v0, Landroid/net/NetworkAgentConfig;->legacyType:I

    return-object p0
.end method

.method public setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-object p1, v0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    return-object p0
.end method

.method public setPartialConnectivityAcceptable(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p1, v0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    return-object p0
.end method

.method public setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-object p1, v0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    return-object p0
.end method

.method public setUnvalidatedConnectivityAcceptable(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p1, v0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    return-object p0
.end method
