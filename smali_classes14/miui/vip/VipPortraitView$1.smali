.class Lmiui/vip/VipPortraitView$1;
.super Ljava/lang/Object;
.source "VipPortraitView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipPortraitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiui/vip/VipAchievement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipPortraitView;


# direct methods
.method constructor <init>(Lmiui/vip/VipPortraitView;)V
    .registers 2

    iput-object p1, p0, Lmiui/vip/VipPortraitView$1;->this$0:Lmiui/vip/VipPortraitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lmiui/vip/VipAchievement;

    check-cast p2, Lmiui/vip/VipAchievement;

    invoke-virtual {p0, p1, p2}, Lmiui/vip/VipPortraitView$1;->compare(Lmiui/vip/VipAchievement;Lmiui/vip/VipAchievement;)I

    move-result p1

    return p1
.end method

.method public compare(Lmiui/vip/VipAchievement;Lmiui/vip/VipAchievement;)I
    .registers 7

    iget-wide v0, p1, Lmiui/vip/VipAchievement;->id:J

    iget-wide v2, p2, Lmiui/vip/VipAchievement;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
