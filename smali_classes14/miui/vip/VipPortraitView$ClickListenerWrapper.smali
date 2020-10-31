.class Lmiui/vip/VipPortraitView$ClickListenerWrapper;
.super Ljava/lang/Object;
.source "VipPortraitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipPortraitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClickListenerWrapper"
.end annotation


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mData:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;->mData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/vip/VipService;->sendStatistic(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_10
    return-void
.end method
