.class public Lcom/miui/internal/vip/protocol/Convertor;
.super Ljava/lang/Object;
.source "Convertor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toVipAchievement([Lcom/miui/internal/vip/protocol/Achievement;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/miui/internal/vip/protocol/Achievement;",
            ")",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_38

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_38

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_37

    aget-object v5, p0, v4

    new-instance v6, Lmiui/vip/VipAchievement;

    invoke-direct {v6}, Lmiui/vip/VipAchievement;-><init>()V

    iget-wide v7, v5, Lcom/miui/internal/vip/protocol/Achievement;->badgeId:J

    iput-wide v7, v6, Lmiui/vip/VipAchievement;->id:J

    iget-object v7, v5, Lcom/miui/internal/vip/protocol/Achievement;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    if-eqz v7, :cond_25

    iget-object v7, v5, Lcom/miui/internal/vip/protocol/Achievement;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    iget-object v7, v7, Lcom/miui/internal/vip/protocol/ExtInfo;->iconUrl:Ljava/lang/String;

    goto :goto_26

    :cond_25
    move-object v7, v0

    :goto_26
    iput-object v7, v6, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    iget v7, v5, Lcom/miui/internal/vip/protocol/Achievement;->owned:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2e

    goto :goto_2f

    :cond_2e
    move v8, v3

    :goto_2f
    iput-boolean v8, v6, Lmiui/vip/VipAchievement;->isOwned:Z

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_37
    return-object v1

    :cond_38
    :goto_38
    return-object v0
.end method

.method public static toVipBanner([Lcom/miui/internal/vip/protocol/Banner;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/miui/internal/vip/protocol/Banner;",
            ")",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_47

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_47

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_46

    aget-object v3, p0, v2

    new-instance v4, Lmiui/vip/VipBanner;

    invoke-direct {v4}, Lmiui/vip/VipBanner;-><init>()V

    iget-wide v5, v3, Lcom/miui/internal/vip/protocol/Banner;->bannerId:J

    iput-wide v5, v4, Lmiui/vip/VipBanner;->id:J

    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->icon:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->name:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->info:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->info:Ljava/lang/String;

    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    if-eqz v5, :cond_40

    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtInfo;->action:Lcom/miui/internal/vip/protocol/ExtAction;

    if-eqz v5, :cond_40

    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtInfo;->action:Lcom/miui/internal/vip/protocol/ExtAction;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtAction;->activity:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->action:Ljava/lang/String;

    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtInfo;->action:Lcom/miui/internal/vip/protocol/ExtAction;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtAction;->extra:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->extraParams:Ljava/lang/String;

    :cond_40
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_46
    return-object v0

    :cond_47
    :goto_47
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toVipUserInfo(I)Lmiui/vip/VipUserInfo;
    .registers 2

    new-instance v0, Lmiui/vip/VipUserInfo;

    invoke-direct {v0}, Lmiui/vip/VipUserInfo;-><init>()V

    iput p0, v0, Lmiui/vip/VipUserInfo;->level:I

    return-object v0
.end method
