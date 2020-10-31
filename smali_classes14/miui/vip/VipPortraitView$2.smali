.class Lmiui/vip/VipPortraitView$2;
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
        "Lmiui/vip/VipBanner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipPortraitView;


# direct methods
.method constructor <init>(Lmiui/vip/VipPortraitView;)V
    .registers 2

    iput-object p1, p0, Lmiui/vip/VipPortraitView$2;->this$0:Lmiui/vip/VipPortraitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lmiui/vip/VipBanner;

    check-cast p2, Lmiui/vip/VipBanner;

    invoke-virtual {p0, p1, p2}, Lmiui/vip/VipPortraitView$2;->compare(Lmiui/vip/VipBanner;Lmiui/vip/VipBanner;)I

    move-result p1

    return p1
.end method

.method public compare(Lmiui/vip/VipBanner;Lmiui/vip/VipBanner;)I
    .registers 5

    iget-object v0, p1, Lmiui/vip/VipBanner;->name:Ljava/lang/String;

    iget-object v1, p2, Lmiui/vip/VipBanner;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    iget-object v1, p2, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    const/4 v0, -0x1

    :goto_17
    return v0
.end method
