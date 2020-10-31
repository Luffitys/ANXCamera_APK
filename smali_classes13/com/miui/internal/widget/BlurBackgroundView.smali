.class public Lcom/miui/internal/widget/BlurBackgroundView;
.super Landroid/widget/FrameLayout;
.source "BlurBackgroundView.java"


# instance fields
.field private mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

.field private mBlurForeground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/BlurBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createBlurBackground()V
    .registers 5

    new-instance v0, Lcom/miui/blur/drawable/BlurDrawable;

    invoke-direct {v0}, Lcom/miui/blur/drawable/BlurDrawable;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0xa5

    const/16 v2, 0x20

    if-ne v0, v2, :cond_3d

    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    invoke-virtual {v0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    const/16 v2, 0x13

    const/16 v3, 0x5c

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/R$color;->action_bar_blurview_fg_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    goto :goto_60

    :cond_3d
    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    invoke-virtual {v0}, Lcom/miui/blur/drawable/BlurDrawable;->clearMixColor()V

    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    const/16 v2, 0x12

    const/16 v3, 0x6b

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/blur/drawable/BlurDrawable;->addMixColor(II)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/R$color;->action_bar_blurview_fg_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    :goto_60
    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/blur/drawable/BlurDrawable;->setBlurRatio(F)V

    return-void
.end method


# virtual methods
.method public isSupportBlur()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->createBlurBackground()V

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    invoke-virtual {v0}, Lcom/miui/blur/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(F)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_e
    iget-object v1, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    if-eqz v1, :cond_15

    invoke-virtual {v1, v0}, Lcom/miui/blur/drawable/BlurDrawable;->setAlpha(I)V

    :cond_15
    return-void
.end method

.method public setBlurBackground(Z)Z
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->isSupportBlur()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p1, :cond_36

    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->createBlurBackground()V

    :cond_11
    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4c

    :cond_23
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/BlurBackgroundView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/BlurBackgroundView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/BlurBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/BlurBackgroundView;->setAlpha(F)V

    goto :goto_4c

    :cond_36
    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/BlurBackgroundView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/BlurBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/miui/internal/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/drawable/BlurDrawable;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/BlurBackgroundView;->setVisibility(I)V

    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    return v0
.end method
