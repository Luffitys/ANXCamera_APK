.class public Lcom/miui/internal/view/menu/ExpandedMenuBlurView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->addBlurView(Landroid/content/Context;)V

    return-void
.end method

.method private addBlurView(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-direct {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->setBlurBackground(Z)Z

    return-void
.end method


# virtual methods
.method public isSearchStubSupportBlur()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->isSupportBlur()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setBlurBackground(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->mBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    move-result p0

    return p0
.end method
