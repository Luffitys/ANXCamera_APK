.class public Lcom/miui/internal/view/menu/ExpandedMenuBlurView;
.super Landroid/widget/FrameLayout;
.source "ExpandedMenuBlurView.java"


# instance fields
.field private mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->addBlurView(Landroid/content/Context;)V

    return-void
.end method

.method private addBlurView(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-direct {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/BlurBackgroundView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->addView(Landroid/view/View;I)V

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->setBlurBackground(Z)Z

    return-void
.end method


# virtual methods
.method public isSearchStubSupportBlur()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/BlurBackgroundView;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public setBlurBackground(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    move-result v0

    return v0
.end method
