.class Lmiui/vip/VipPortraitView$8;
.super Ljava/lang/Object;
.source "VipPortraitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/vip/VipPortraitView;->setBannerViewData(Landroid/view/View;Lmiui/vip/VipBanner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipPortraitView;

.field final synthetic val$banner:Lmiui/vip/VipBanner;


# direct methods
.method constructor <init>(Lmiui/vip/VipPortraitView;Lmiui/vip/VipBanner;)V
    .registers 3

    iput-object p1, p0, Lmiui/vip/VipPortraitView$8;->this$0:Lmiui/vip/VipPortraitView;

    iput-object p2, p0, Lmiui/vip/VipPortraitView$8;->val$banner:Lmiui/vip/VipBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lmiui/vip/VipPortraitView$8;->this$0:Lmiui/vip/VipPortraitView;

    invoke-virtual {v0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView$8;->val$banner:Lmiui/vip/VipBanner;

    iget-object v1, v1, Lmiui/vip/VipBanner;->action:Ljava/lang/String;

    iget-object v2, p0, Lmiui/vip/VipPortraitView$8;->val$banner:Lmiui/vip/VipBanner;

    iget-object v2, v2, Lmiui/vip/VipBanner;->extraParams:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
