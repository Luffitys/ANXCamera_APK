.class Landroid/net/util/MultinetworkPolicyTracker$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Landroid/net/util/MultinetworkPolicyTracker;)V
    .registers 2

    iput-object p1, p0, Landroid/net/util/MultinetworkPolicyTracker$1;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker$1;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    # invokes: Landroid/net/util/MultinetworkPolicyTracker;->reevaluateInternal()V
    invoke-static {v0}, Landroid/net/util/MultinetworkPolicyTracker;->access$000(Landroid/net/util/MultinetworkPolicyTracker;)V

    return-void
.end method
