.class abstract Lcom/miui/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source ""


# static fields
.field protected static final COLLAPSE_LAYOUT_MAX_TRANSY:I = 0x14

.field static final INNER_STATE_COLLAPSE:I = 0x0

.field static final INNER_STATE_EXPAND:I = 0x1

.field static final INNER_STATE_RESIZING:I = 0x2


# instance fields
.field protected mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

.field protected mCollapseAnimHideConfig:Lmiui/animation/base/AnimConfig;

.field protected mCollapseAnimShowConfig:Lmiui/animation/base/AnimConfig;

.field protected mContentHeight:I

.field private mExpandState:I

.field mInnerExpandState:I

.field protected mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

.field protected mMovableAnimConfig:Lmiui/animation/base/AnimConfig;

.field private mResizable:Z

.field protected mSplitActionBar:Z

.field protected mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

.field protected mSplitWhenNarrow:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    iput-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mResizable:Z

    new-instance p2, Lmiui/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiui/animation/base/AnimConfig;-><init>()V

    const/4 p3, 0x2

    new-array v0, p3, [F

    fill-array-data v0, :array_0

    const/4 v1, -0x2

    invoke-virtual {p2, v1, v0}, Lmiui/animation/base/AnimConfig;->setEase(I[F)Lmiui/animation/base/AnimConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiui/animation/base/AnimConfig;

    new-instance p2, Lmiui/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v0, p3, [F

    fill-array-data v0, :array_1

    invoke-virtual {p2, v1, v0}, Lmiui/animation/base/AnimConfig;->setEase(I[F)Lmiui/animation/base/AnimConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiui/animation/base/AnimConfig;

    new-instance p2, Lmiui/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v0, p3, [F

    fill-array-data v0, :array_2

    invoke-virtual {p2, v1, v0}, Lmiui/animation/base/AnimConfig;->setEase(I[F)Lmiui/animation/base/AnimConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMovableAnimConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    sget v1, Lcom/miui/internal/R$anim;->action_bar_fade_in:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/miui/internal/R$anim;->action_bar_fade_out:I

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    :cond_0
    return-void
.end method

.method getActionBarStyle()I
    .locals 0

    const p0, 0x10102ce

    return p0
.end method

.method public getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    return-object p0
.end method

.method public getAnimatedVisibility()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getContentHeight()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    return p0
.end method

.method public getExpandState()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    return p0
.end method

.method public getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    return-object p0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverflowReserved()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResizable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mResizable:Z

    return p0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 0

    const/high16 p0, -0x80000000

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p2, p0

    sub-int/2addr p2, p4

    const/4 p0, 0x0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lmiui/R$styleable;->ActionBar:[I

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getActionBarStyle()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/AbsActionBarView;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(I)V

    :cond_3
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .locals 0

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 0

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/miui/internal/widget/AbsActionBarView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/miui/internal/widget/AbsActionBarView$SavedState;->expandState:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/AbsActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/internal/widget/AbsActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    iput p0, v1, Lcom/miui/internal/widget/AbsActionBarView$SavedState;->expandState:I

    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected positionChild(Landroid/view/View;III)I
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int v5, p3, p4

    add-int v6, p2, v0

    add-int v7, v5, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v2 .. v7}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return v0
.end method

.method protected positionChildInverse(Landroid/view/View;III)I
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int v5, p3, p4

    sub-int v4, p2, v0

    add-int v7, v5, v1

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return v0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    new-instance v0, Lcom/miui/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/AbsActionBarView$1;-><init>(Lcom/miui/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setExpandState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public setExpandState(IZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mResizable:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    if-eq v0, p1, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->onAnimatedExpandStateChanged(II)V

    goto :goto_2

    :cond_1
    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez p1, :cond_2

    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->onExpandStateChanged(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_4
    :goto_2
    return-void
.end method

.method public setResizable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mResizable:Z

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return-void
.end method

.method public setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
