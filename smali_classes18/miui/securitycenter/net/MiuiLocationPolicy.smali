.class public Lmiui/securitycenter/net/MiuiLocationPolicy;
.super Ljava/lang/Object;
.source "MiuiLocationPolicy.java"


# instance fields
.field mLocalPolicy:Landroid/location/LocationPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiLocationPolicy;->mLocalPolicy:Landroid/location/LocationPolicyManager;

    return-void
.end method


# virtual methods
.method public getAppRestrictBackground(I)Z
    .registers 3

    iget-object v0, p0, Lmiui/securitycenter/net/MiuiLocationPolicy;->mLocalPolicy:Landroid/location/LocationPolicyManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationPolicyManager;->getUidPolicy(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setAppRestrictBackground(IZ)V
    .registers 5

    if-eqz p2, :cond_a

    iget-object v0, p0, Lmiui/securitycenter/net/MiuiLocationPolicy;->mLocalPolicy:Landroid/location/LocationPolicyManager;

    const/16 v1, 0xff

    invoke-virtual {v0, p1, v1}, Landroid/location/LocationPolicyManager;->setUidPolicy(II)V

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiLocationPolicy;->mLocalPolicy:Landroid/location/LocationPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/location/LocationPolicyManager;->setUidPolicy(II)V

    :goto_10
    return-void
.end method
