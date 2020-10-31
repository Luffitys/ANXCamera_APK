.class public Lmiui/vip/QueryCallback;
.super Ljava/lang/Object;
.source "QueryCallback.java"


# instance fields
.field mMonitorTypes:J


# direct methods
.method public varargs constructor <init>([I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    invoke-virtual {p0, p1}, Lmiui/vip/QueryCallback;->addMonitorTypes([I)V

    return-void
.end method


# virtual methods
.method public varargs addMonitorTypes([I)V
    .registers 9

    if-eqz p1, :cond_14

    array-length v0, p1

    if-lez v0, :cond_14

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_14

    aget v2, p1, v1

    iget-wide v3, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    int-to-long v5, v2

    or-long/2addr v3, v5

    iput-wide v3, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public isMonitorType(I)Z
    .registers 6

    iget-wide v0, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onAchievements(ILjava/util/List;Ljava/lang/String;)V
    .registers 4
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

    return-void
.end method

.method public onBanners(ILjava/util/List;Ljava/lang/String;)V
    .registers 4
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

    return-void
.end method

.method public onConnected(ZLmiui/vip/VipUserInfo;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lmiui/vip/VipUserInfo;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onLevelByPhoneNumber(ILjava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/vip/VipPhoneLevel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onUserInfo(ILmiui/vip/VipUserInfo;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public varargs removeMonitorTypes([I)V
    .registers 9

    if-eqz p1, :cond_15

    array-length v0, p1

    if-lez v0, :cond_15

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget v2, p1, v1

    iget-wide v3, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    not-int v5, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    iput-wide v3, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method
