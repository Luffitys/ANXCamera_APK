.class abstract Lcom/miui/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/AbsActionBarView$CollapseView;,
        Lcom/miui/internal/widget/AbsActionBarView$SavedState;
    }
.end annotation


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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    iput v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    iput-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mResizable:Z

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiui/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_58

    const/4 v4, -0x2

    invoke-virtual {v1, v4, v3}, Lmiui/animation/base/AnimConfig;->setEase(I[F)Lmiui/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiui/animation/base/AnimConfig;

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v3, v2, [F

    fill-array-data v3, :array_60

    invoke-virtual {v1, v4, v3}, Lmiui/animation/base/AnimConfig;->setEase(I[F)Lmiui/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiui/animation/base/AnimConfig;

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v3, v2, [F

    fill-array-data v3, :array_68

    invoke-virtual {v1, v4, v3}, Lmiui/animation/base/AnimConfig;->setEase(I[F)Lmiui/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMovableAnimConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_52

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    iput v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    goto :goto_56

    :cond_52
    iput v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    iput v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    :goto_56
    return-void

    nop

    :array_58
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_60
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    :array_68
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->clearAnimation()V

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_2e

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_12

    sget v1, Lcom/miui/internal/R$anim;->action_bar_fade_in:I

    goto :goto_14

    :cond_12
    sget v1, Lcom/miui/internal/R$anim;->action_bar_fade_out:I

    :goto_14
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/AbsActionBarView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_2e

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setVisibility(I)V

    :cond_2e
    return-void
.end method

.method public dismissPopupMenus()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    :cond_8
    return-void
.end method

.method getActionBarStyle()I
    .registers 2

    const v0, 0x10102ce

    return v0
.end method

.method public getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    return-object v0
.end method

.method public getAnimatedVisibility()I
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public getExpandState()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    return v0
.end method

.method public getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isResizable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mResizable:Z

    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .registers 6

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p4

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .registers 3

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_9
    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

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

    iget-boolean v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_3a
    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_41

    invoke-virtual {v1, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_41
    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_55

    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(I)V

    :cond_55
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 7

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 9

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/widget/AbsActionBarView$SavedState;

    invoke-virtual {v0}, Lcom/miui/internal/widget/AbsActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/miui/internal/widget/AbsActionBarView$SavedState;->expandState:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/AbsActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/internal/widget/AbsActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    const/4 v2, 0x0

    iput v2, v1, Lcom/miui/internal/widget/AbsActionBarView$SavedState;->expandState:I

    goto :goto_14

    :cond_12
    iput v2, v1, Lcom/miui/internal/widget/AbsActionBarView$SavedState;->expandState:I

    :goto_14
    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method protected positionChild(Landroid/view/View;III)I
    .registers 14

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int v7, p2, v0

    add-int v8, v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, v2

    invoke-static/range {v3 .. v8}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return v0
.end method

.method protected positionChildInverse(Landroid/view/View;III)I
    .registers 14

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    sub-int v5, p2, v0

    add-int v8, v2, v1

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, p2

    invoke-static/range {v3 .. v8}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return v0
.end method

.method public postShowOverflowMenu()V
    .registers 2

    new-instance v0, Lcom/miui/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/AbsActionBarView$1;-><init>(Lcom/miui/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->requestLayout()V

    return-void
.end method

.method public setExpandState(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public setExpandState(IZ)V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    if-eqz p1, :cond_14

    return-void

    :cond_14
    iget-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mResizable:Z

    if-eqz v0, :cond_37

    iget v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    if-eq v0, p1, :cond_37

    iget v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz p2, :cond_24

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->onAnimatedExpandStateChanged(II)V

    goto :goto_37

    :cond_24
    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez p1, :cond_2c

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    goto :goto_31

    :cond_2c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_31

    iput v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mExpandState:I

    :cond_31
    :goto_31
    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->onExpandStateChanged(II)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->requestLayout()V

    :cond_37
    :goto_37
    return-void
.end method

.method public setResizable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mResizable:Z

    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return-void
.end method

.method public setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
