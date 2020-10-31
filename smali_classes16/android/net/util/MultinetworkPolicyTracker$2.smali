.class Landroid/net/util/MultinetworkPolicyTracker$2;
.super Landroid/telephony/PhoneStateListener;
.source "MultinetworkPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/util/MultinetworkPolicyTracker;


# direct methods
.method constructor <init>(Landroid/net/util/MultinetworkPolicyTracker;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/util/MultinetworkPolicyTracker$2;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .registers 3

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker$2;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    # setter for: Landroid/net/util/MultinetworkPolicyTracker;->mActiveSubId:I
    invoke-static {v0, p1}, Landroid/net/util/MultinetworkPolicyTracker;->access$102(Landroid/net/util/MultinetworkPolicyTracker;I)I

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker$2;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    # invokes: Landroid/net/util/MultinetworkPolicyTracker;->reevaluateInternal()V
    invoke-static {v0}, Landroid/net/util/MultinetworkPolicyTracker;->access$000(Landroid/net/util/MultinetworkPolicyTracker;)V

    return-void
.end method
