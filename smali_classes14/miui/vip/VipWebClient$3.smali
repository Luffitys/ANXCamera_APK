.class Lmiui/vip/VipWebClient$3;
.super Lmiui/vip/QueryCallback;
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
.method varargs constructor <init>(Lmiui/vip/VipWebClient;[I)V
    .registers 3

    iput-object p1, p0, Lmiui/vip/VipWebClient$3;->this$0:Lmiui/vip/VipWebClient;

    invoke-direct {p0, p2}, Lmiui/vip/QueryCallback;-><init>([I)V

    return-void
.end method


# virtual methods
.method public onAchievements(ILjava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_7

    iget-object v0, p0, Lmiui/vip/VipWebClient$3;->this$0:Lmiui/vip/VipWebClient;

    # invokes: Lmiui/vip/VipWebClient;->notifyAchievementsUpdate(Ljava/util/List;)V
    invoke-static {v0, p2}, Lmiui/vip/VipWebClient;->access$500(Lmiui/vip/VipWebClient;Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public onConnected(ZLmiui/vip/VipUserInfo;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lmiui/vip/VipUserInfo;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VipWebClient.interceptRequest, onConnected, notify"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/vip/VipWebClient$3;->this$0:Lmiui/vip/VipWebClient;

    # invokes: Lmiui/vip/VipWebClient;->batchNotify(Lmiui/vip/VipUserInfo;Ljava/util/List;)V
    invoke-static {v0, p2, p3}, Lmiui/vip/VipWebClient;->access$200(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;Ljava/util/List;)V

    return-void
.end method

.method public onUserInfo(ILmiui/vip/VipUserInfo;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_7

    iget-object v0, p0, Lmiui/vip/VipWebClient$3;->this$0:Lmiui/vip/VipWebClient;

    # invokes: Lmiui/vip/VipWebClient;->notifyVipUserUpdate(Lmiui/vip/VipUserInfo;)V
    invoke-static {v0, p2}, Lmiui/vip/VipWebClient;->access$400(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;)V

    :cond_7
    return-void
.end method
