.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyRegistryManager$2$NuSVAXj1QEZpnJjJOfQLLxCeDKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyRegistryManager$2$NuSVAXj1QEZpnJjJOfQLLxCeDKI;->f$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyRegistryManager$2$NuSVAXj1QEZpnJjJOfQLLxCeDKI;->f$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    invoke-static {v0}, Landroid/telephony/TelephonyRegistryManager$2;->lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    return-void
.end method
