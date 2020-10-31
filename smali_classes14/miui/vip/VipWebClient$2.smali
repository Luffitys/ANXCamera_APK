.class Lmiui/vip/VipWebClient$2;
.super Landroid/content/BroadcastReceiver;
.source "VipWebClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipWebClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipWebClient;


# direct methods
.method constructor <init>(Lmiui/vip/VipWebClient;)V
    .registers 2

    iput-object p1, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "VipWebClient.mReceiver.onReceive, action = %s"

    invoke-static {v4, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->hasAccount()Z

    move-result v2

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_22

    const-string v4, "remove"

    goto :goto_24

    :cond_22
    const-string v4, "add"

    :goto_24
    aput-object v4, v1, v3

    const-string v3, "VipWebClient.mReceiver.onReceive, login accounts changed, %s"

    invoke-static {v3, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_3f

    iget-object v1, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    const/4 v3, 0x0

    # invokes: Lmiui/vip/VipWebClient;->batchNotify(Lmiui/vip/VipUserInfo;Ljava/util/List;)V
    invoke-static {v1, v3, v3}, Lmiui/vip/VipWebClient;->access$200(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;Ljava/util/List;)V

    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v1

    iget-object v3, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    iget-object v3, v3, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    invoke-virtual {v1, v3}, Lmiui/vip/VipService;->disconnect(Lmiui/vip/QueryCallback;)V

    goto :goto_4a

    :cond_3f
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v1

    iget-object v3, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    iget-object v3, v3, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    invoke-virtual {v1, v3}, Lmiui/vip/VipService;->connect(Lmiui/vip/QueryCallback;)V

    :goto_4a
    goto :goto_50

    :cond_4b
    iget-object v1, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    # invokes: Lmiui/vip/VipWebClient;->notifyAccountUpdate()V
    invoke-static {v1}, Lmiui/vip/VipWebClient;->access$300(Lmiui/vip/VipWebClient;)V

    :goto_50
    return-void
.end method
