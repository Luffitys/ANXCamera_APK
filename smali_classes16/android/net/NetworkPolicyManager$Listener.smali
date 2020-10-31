.class public Landroid/net/NetworkPolicyManager$Listener;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSubscriptionOverride(III)V
    .registers 4

    return-void
.end method

.method public onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .registers 3

    return-void
.end method

.method public onUidPoliciesChanged(II)V
    .registers 3

    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 3

    return-void
.end method
