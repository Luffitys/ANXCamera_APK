.class Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
.super Landroid/service/controls/IControlsSubscription$Stub;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscriptionAdapter"
.end annotation


# instance fields
.field final mSubscription:Ljava/util/concurrent/Flow$Subscription;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Flow$Subscription;)V
    .registers 2

    invoke-direct {p0}, Landroid/service/controls/IControlsSubscription$Stub;-><init>()V

    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;->mSubscription:Ljava/util/concurrent/Flow$Subscription;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;->mSubscription:Ljava/util/concurrent/Flow$Subscription;

    invoke-interface {v0}, Ljava/util/concurrent/Flow$Subscription;->cancel()V

    return-void
.end method

.method public request(J)V
    .registers 4

    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;->mSubscription:Ljava/util/concurrent/Flow$Subscription;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/Flow$Subscription;->request(J)V

    return-void
.end method
