.class public Lmiui/securitycenter/net/MiuiNetworkPolicyManager;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManager.java"


# instance fields
.field private mPolicyService:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    return-void
.end method


# virtual methods
.method public getAppRestrictBackground(I)I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    return v0
.end method

.method public getRestrictBackground()Z
    .registers 2

    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public isAppRestrictBackground(I)Z
    .registers 4

    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public setAppRestrictBackground(IZ)V
    .registers 4

    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    return-void
.end method

.method public setRestrictBackground(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    return-void
.end method
