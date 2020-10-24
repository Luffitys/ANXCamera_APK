.class public abstract Lcom/miui/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/miui/internal/view/menu/MenuView;


# instance fields
.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

.field private mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    new-instance p1, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-direct {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;-><init>(Lcom/miui/internal/view/menu/ActionMenuView;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    instance-of p0, p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected computeAlpha(FZZ)F
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    if-eqz p2, :cond_1

    sub-float/2addr p0, p1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p0, v0

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    mul-float/2addr p1, v0

    float-to-int p0, p1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method protected computeTranslationY(FZZ)F
    .locals 3

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    float-to-double p2, p1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, p2, v1

    const/high16 p3, 0x40000000    # 2.0f

    if-gez p2, :cond_0

    mul-float/2addr p1, p3

    goto :goto_0

    :cond_0
    sub-float/2addr v0, p1

    mul-float p1, v0, p3

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sub-float p1, v0, p1

    :cond_2
    :goto_0
    mul-float/2addr p1, p0

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public filterLeftoverView(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 1

    new-instance p0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 1

    instance-of v0, p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object p0
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    return-object p0
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasBackgroundView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasBlurBackgroundView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 3

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    const/4 v2, 0x0

    if-ge p1, p0, :cond_0

    instance-of p0, v0, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result p0

    or-int/2addr v2, p0

    :cond_0
    if-lez p1, :cond_1

    instance-of p0, v1, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p0

    or-int/2addr v2, p0

    :cond_1
    return v2
.end method

.method public initialize(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public isOverflowReserved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeAlpha(FZZ)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeTranslationY(FZZ)F

    move-result p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    return-void
.end method

.method public playCloseAnimator()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->close()V

    return-void
.end method

.method public playOpenAnimator()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->open()V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPresenter(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    return-void
.end method
