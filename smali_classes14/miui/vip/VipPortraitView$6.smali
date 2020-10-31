.class Lmiui/vip/VipPortraitView$6;
.super Lcom/miui/internal/vip/VipInternalCallback;
.source "VipPortraitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipPortraitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipPortraitView;


# direct methods
.method varargs constructor <init>(Lmiui/vip/VipPortraitView;[I)V
    .registers 3

    iput-object p1, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    invoke-direct {p0, p2}, Lcom/miui/internal/vip/VipInternalCallback;-><init>([I)V

    return-void
.end method


# virtual methods
.method public onAchievements(ILjava/util/List;Ljava/lang/String;)V
    .registers 6
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

    if-nez p1, :cond_15

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iget-object v0, v0, Lmiui/vip/VipPortraitView;->mAchievementList:Ljava/util/List;

    iget-object v1, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iget-object v1, v1, Lmiui/vip/VipPortraitView;->mCmpVipAchievement:Ljava/util/Comparator;

    # invokes: Lmiui/vip/VipPortraitView;->isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z
    invoke-static {v0, p2, v1}, Lmiui/vip/VipPortraitView;->access$100(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    # invokes: Lmiui/vip/VipPortraitView;->setAchievements(Ljava/util/List;)V
    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$200(Lmiui/vip/VipPortraitView;Ljava/util/List;)V

    :cond_15
    return-void
.end method

.method public onBanners(ILjava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1a

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iget-object v0, v0, Lmiui/vip/VipPortraitView;->mBannerList:Ljava/util/List;

    iget-object v1, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iget-object v1, v1, Lmiui/vip/VipPortraitView;->mCmpVipBanner:Ljava/util/Comparator;

    # invokes: Lmiui/vip/VipPortraitView;->isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z
    invoke-static {v0, p2, v1}, Lmiui/vip/VipPortraitView;->access$100(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    # invokes: Lmiui/vip/VipPortraitView;->saveBannerData(Ljava/util/List;)V
    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$400(Lmiui/vip/VipPortraitView;Ljava/util/List;)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    # invokes: Lmiui/vip/VipPortraitView;->setBanners(Ljava/util/List;)V
    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$500(Lmiui/vip/VipPortraitView;Ljava/util/List;)V

    :cond_1a
    return-void
.end method

.method public onConnected(ZLmiui/vip/VipUserInfo;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lmiui/vip/VipUserInfo;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    if-eqz p3, :cond_18

    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_18
    const-string v1, "null"

    :goto_1a
    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "VipPortraitView.onConnected, serviceAvailable = %s, user = %s, achievements = %s"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iput-boolean p1, v0, Lmiui/vip/VipPortraitView;->mServiceAvailable:Z

    if-eqz p1, :cond_60

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VipPortraitView.onConnected, before setAchievements"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/miui/internal/vip/utils/Utils;->hasData(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    # invokes: Lmiui/vip/VipPortraitView;->setAchievements(Ljava/util/List;)V
    invoke-static {v0, p3}, Lmiui/vip/VipPortraitView;->access$200(Lmiui/vip/VipPortraitView;Ljava/util/List;)V

    goto :goto_42

    :cond_3b
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/vip/VipService;->queryAchievements()V

    :goto_42
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/vip/VipService;->queryBanners()V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VipPortraitView.onConnected, before setVipLevel"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_58

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    # invokes: Lmiui/vip/VipPortraitView;->setVipLevel(Lmiui/vip/VipUserInfo;)V
    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$000(Lmiui/vip/VipPortraitView;Lmiui/vip/VipUserInfo;)V

    goto :goto_65

    :cond_58
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/vip/VipService;->queryUserVipInfo()V

    goto :goto_65

    :cond_60
    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    # invokes: Lmiui/vip/VipPortraitView;->clearVipInfo()V
    invoke-static {v0}, Lmiui/vip/VipPortraitView;->access$300(Lmiui/vip/VipPortraitView;)V

    :goto_65
    return-void
.end method

.method public onUserInfo(ILmiui/vip/VipUserInfo;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "VipPortraitView.onUserInfo, code = %d, user = %s, errMsg = %s"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1c

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    # invokes: Lmiui/vip/VipPortraitView;->setVipLevel(Lmiui/vip/VipUserInfo;)V
    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$000(Lmiui/vip/VipPortraitView;Lmiui/vip/VipUserInfo;)V

    :cond_1c
    return-void
.end method
