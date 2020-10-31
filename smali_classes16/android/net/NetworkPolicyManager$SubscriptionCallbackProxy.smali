.class public Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubscriptionCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/NetworkPolicyManager$SubscriptionCallback;

.field final synthetic this$0:Landroid/net/NetworkPolicyManager;


# direct methods
.method constructor <init>(Landroid/net/NetworkPolicyManager;Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;->this$0:Landroid/net/NetworkPolicyManager;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    iput-object p2, p0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$SubscriptionCallback;

    return-void
.end method


# virtual methods
.method public onSubscriptionOverride(III)V
    .registers 5

    iget-object v0, p0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$SubscriptionCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkPolicyManager$SubscriptionCallback;->onSubscriptionOverride(III)V

    return-void
.end method

.method public onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .registers 4

    iget-object v0, p0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$SubscriptionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkPolicyManager$SubscriptionCallback;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V

    return-void
.end method
