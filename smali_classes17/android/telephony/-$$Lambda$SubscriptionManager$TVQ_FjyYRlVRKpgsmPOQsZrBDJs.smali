.class public final synthetic Landroid/telephony/-$$Lambda$SubscriptionManager$TVQ_FjyYRlVRKpgsmPOQsZrBDJs;
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

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$TVQ_FjyYRlVRKpgsmPOQsZrBDJs;->f$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$TVQ_FjyYRlVRKpgsmPOQsZrBDJs;->f$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->lambda$addOnSubscriptionsChangedListener$0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method
