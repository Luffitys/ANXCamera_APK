.class Lmiui/telephony/SubscriptionManagerEx$1;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SubscriptionManagerEx;


# direct methods
.method constructor <init>(Lmiui/telephony/SubscriptionManagerEx;)V
    .registers 2

    iput-object p1, p0, Lmiui/telephony/SubscriptionManagerEx$1;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$1;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManagerEx;->onSubscriptionInfoChanged()V

    :cond_11
    return-void
.end method
