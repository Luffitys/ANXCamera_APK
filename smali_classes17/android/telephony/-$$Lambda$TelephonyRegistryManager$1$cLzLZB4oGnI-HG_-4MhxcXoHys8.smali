.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyRegistryManager$1$cLzLZB4oGnI-HG_-4MhxcXoHys8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyRegistryManager$1$cLzLZB4oGnI-HG_-4MhxcXoHys8;->f$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyRegistryManager$1$cLzLZB4oGnI-HG_-4MhxcXoHys8;->f$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-static {v0}, Landroid/telephony/TelephonyRegistryManager$1;->lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method
