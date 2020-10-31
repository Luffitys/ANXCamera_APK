.class public Lcom/miui/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# static fields
.field private static final BG_EMBEDED_TABS_IDX:I = 0x1

.field private static final BG_LENGTH:I = 0x3

.field private static final BG_NORMAL_IDX:I = 0x0

.field private static final BG_STACKED_IDX:I = 0x2


# instance fields
.field private isShowBlurBackgroundView:Z

.field private mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundArray:[Landroid/graphics/drawable/Drawable;

.field private mBackgroundBackup:Landroid/graphics/drawable/Drawable;

.field private mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

.field private mBrandingBackground:Landroid/graphics/drawable/Drawable;

.field private mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mCustomBackground:Z

.field private mCustomViewAutoFitSystemWindow:Z

.field private mFragmentViewPagerMode:Z

.field private mHideListener:Landroid/animation/AnimatorListenerAdapter;

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mPendingInsets:Landroid/graphics/Rect;

.field private mRequestAnimation:Z

.field private mShowListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSplitBackgroundBackup:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mTabContainerPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    new-instance v1, Lcom/miui/internal/widget/ActionBarContainer$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarContainer$1;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v1, Lcom/miui/internal/widget/ActionBarContainer$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarContainer$2;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lmiui/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lmiui/R$styleable;->ActionBar_android_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v0

    sget v2, Lmiui/R$styleable;->ActionBar_miui_actionBarEmbededTabsBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    sget v2, Lmiui/R$styleable;->ActionBar_miui_actionBarStackedBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v3, v5

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    sget v2, Lmiui/R$styleable;->ActionBar_android_backgroundStacked:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    sget v2, Lmiui/R$styleable;->ActionBar_customViewAutoFitSystemWindow:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getId()I

    move-result v2

    sget v3, Lcom/miui/internal/R$id;->split_action_bar:I

    if-ne v2, v3, :cond_63

    iput-boolean v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    sget v2, Lmiui/R$styleable;->ActionBar_android_backgroundSplit:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    :cond_63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lmiui/R$attr;->colorPrimary:I

    invoke-static {p1, v3}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v2, :cond_7a

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setPadding(IIII)V

    :cond_7a
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->addActionBarBlurView(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_90

    move v0, v4

    goto :goto_90

    :cond_87
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_90

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_90

    move v0, v4

    :cond_90
    :goto_90
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/internal/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method private addActionBarBlurView(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-direct {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/BlurBackgroundView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private applyInsets(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    if-nez v0, :cond_20

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_1d

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_20
    return-void
.end method

.method private clearBackground()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundBackup:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackgroundBackup:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    :cond_14
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->updateBackground(Z)V

    :cond_23
    :goto_23
    return-void
.end method

.method private onMeasureSplit(II)V
    .registers 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_35

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/internal/widget/BlurBackgroundView;

    if-eqz v3, :cond_26

    goto :goto_32

    :cond_26
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_35
    if-nez v1, :cond_3b

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    :cond_3b
    return-void
.end method

.method private resetBackground()V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    :cond_c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackgroundBackup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2b

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    :cond_14
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    :cond_1c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundBackup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->updateBackground(Z)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private selectDrawable()V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3f

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_19

    goto :goto_3f

    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_33

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_33

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_34

    :cond_33
    const/4 v1, 0x2

    :cond_34
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v0, v1

    if-eqz v2, :cond_3e

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    :cond_3e
    return-void

    :cond_3f
    :goto_3f
    return-void
.end method

.method private setAllClipChildren(Landroid/view/ViewGroup;Z)V
    .registers 6

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/miui/internal/widget/ActionBarContainer;->setAllClipChildren(Landroid/view/ViewGroup;Z)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    return-void
.end method

.method private setAllClipToPadding(Landroid/view/ViewGroup;Z)V
    .registers 6

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/miui/internal/widget/ActionBarContainer;->setAllClipToPadding(Landroid/view/ViewGroup;Z)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    return-void
.end method

.method private updateAllClipView(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_29

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_29

    invoke-direct {p0, v1, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setAllClipChildren(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0, v1, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setAllClipToPadding(Landroid/view/ViewGroup;Z)V

    :cond_29
    return-void
.end method

.method private updateBackground(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContainer;->clearBackground()V

    goto :goto_9

    :cond_6
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContainer;->resetBackground()V

    :goto_9
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mRequestAnimation:Z

    if-eqz v0, :cond_12

    new-instance v0, Lcom/miui/internal/widget/ActionBarContainer$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarContainer$3;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mRequestAnimation:Z

    :cond_12
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_16
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_29
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3c
    return-void
.end method

.method getCollapsedHeight()I
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_31

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_31

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_2e

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v3

    if-lez v3, :cond_2e

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_31
    return v0
.end method

.method getInsetHeight()I
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mFragmentViewPagerMode:Z

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_2c

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/ActionMenuView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v4

    if-lez v4, :cond_2c

    add-int/lit8 v1, v1, 0x1

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2f
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContextView;->getAnimatedVisibility()I

    move-result v2

    if-eqz v2, :cond_3b

    :cond_3a
    const/4 v0, 0x0

    :cond_3b
    return v0
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public hide(Z)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    if-eqz p1, :cond_4b

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    const-string v1, "TranslationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_39

    nop

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_3b

    :cond_39
    const-wide/16 v1, 0x0

    :goto_3b
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_50

    :cond_4b
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :goto_50
    return-void
.end method

.method public isBlurEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    return v0
.end method

.method public isSearchStubSupportBlur()Z
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_22

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v2, :cond_1f

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isSearchStubSupportBlur()Z

    move-result v2

    return v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_22
    goto :goto_2c

    :cond_23
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/BlurBackgroundView;->isSupportBlur()Z

    move-result v0

    if-nez v0, :cond_2c

    return v1

    :cond_2c
    :goto_2c
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_47

    :cond_d
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_46

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_46

    :cond_1d
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_24
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    :goto_47
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 14

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_75

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_44

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_44

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6e

    :cond_44
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v3, :cond_4b

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_4c

    :cond_4b
    move v3, v2

    :goto_4c
    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v5, :cond_5d

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    add-int/2addr v5, v6

    goto :goto_5f

    :cond_5d
    iget v5, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    :goto_5f
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :goto_6e
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int v4, v0, v1

    invoke-virtual {v3, p2, v4, p4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_75
    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_8b

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_c1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x1

    goto :goto_c1

    :cond_8b
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContainer;->selectDrawable()V

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_98

    sub-int v4, p4, p2

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x1

    :cond_98
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a2

    sub-int v4, p4, p2

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x1

    :cond_a2
    invoke-static {}, Lcom/miui/internal/app/SystemVersionHelper;->isMiui11()Z

    move-result v3

    if-nez v3, :cond_c1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_b8

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmiui/R$attr;->colorDividerLine:I

    invoke-static {v3, v4}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    :cond_b8
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v4, v0, -0x1

    sub-int v5, p4, p2

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_c1
    :goto_c1
    if-eqz v1, :cond_c6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    :cond_c6
    return-void
.end method

.method public onMeasure(II)V
    .registers 12

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->onMeasureSplit(II)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_21
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->applyInsets(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_32

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_33

    :cond_32
    move v2, v1

    :goto_33
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setContentInset(I)V

    :cond_36
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    const/16 v4, 0x8

    if-eqz v3, :cond_50

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_50

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_50

    const/4 v3, 0x1

    goto :goto_51

    :cond_50
    move v3, v1

    :goto_51
    if-eqz v3, :cond_73

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/miui/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v6

    if-eqz v6, :cond_66

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_72

    :cond_66
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    :goto_72
    move v2, v6

    :cond_73
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v5, :cond_a6

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_a6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_a6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-nez v3, :cond_a1

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v8, :cond_a1

    iget v8, v8, Landroid/graphics/Rect;->top:I

    goto :goto_a2

    :cond_a1
    move v8, v1

    :goto_a2
    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    :cond_a6
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a8
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_ce

    invoke-virtual {p0, v5}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v6, v7, :cond_b7

    goto :goto_cb

    :cond_b7
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_cb

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-lez v7, :cond_cb

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_cb

    add-int/lit8 v4, v4, 0x1

    :cond_cb
    :goto_cb
    add-int/lit8 v5, v5, 0x1

    goto :goto_a8

    :cond_ce
    if-nez v4, :cond_d3

    invoke-virtual {p0, v1, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    :cond_d3
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 22

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_23

    move/from16 v3, p2

    move/from16 v4, p3

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v2, 0x2

    new-array v5, v2, [I

    fill-array-data v5, :array_36

    new-array v7, v2, [I

    fill-array-data v7, :array_3e

    move-object/from16 v2, p1

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/widget/ActionBarContextView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    :cond_23
    iget-object v8, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v8 .. v14}, Lcom/miui/internal/widget/ActionBarView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    return-void

    nop

    :array_36
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3e
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_28

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v2, 0x2

    new-array v8, v2, [I

    fill-array-data v8, :array_3e

    new-array v9, v2, [I

    fill-array-data v9, :array_46

    move-object/from16 v2, p1

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v9}, Lcom/miui/internal/widget/ActionBarContextView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    :cond_28
    iget-object v10, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    invoke-virtual/range {v10 .. v18}, Lcom/miui/internal/widget/ActionBarView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    return-void

    :array_3e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_46
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarContextView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 6

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->onPageScrolled(IFZZ)V

    :cond_10
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarContextView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ActionBarContextView;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ActionBarView;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onWindowHide()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    :cond_11
    return-void
.end method

.method public onWindowShow()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    :cond_11
    return-void
.end method

.method public setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_34

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/widget/BlurBackgroundView;

    if-eqz v1, :cond_18

    goto :goto_31

    :cond_18
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v1, :cond_2a

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setAlpha(F)V

    goto :goto_31

    :cond_2a
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_34
    goto :goto_38

    :cond_35
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_38
    :goto_38
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBlurBackground(Z)Z
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_38

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->updateBackground(Z)V

    const/4 v1, 0x0

    :goto_17
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_37

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v2, :cond_34

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v2, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBlurBackground(Z)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v2, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->updateBackground(Z)V

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_37
    goto :goto_4a

    :cond_38
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->updateAllClipView(Z)V

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->updateBackground(Z)V

    :cond_4a
    :goto_4a
    return v0
.end method

.method public setFragmentViewPagerMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mFragmentViewPagerMode:Z

    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_14
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->requestLayout()V

    goto :goto_28

    :cond_23
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_28
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    goto :goto_2d

    :cond_2b
    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    :goto_2d
    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_36

    goto :goto_42

    :cond_36
    move v1, v2

    goto :goto_42

    :cond_38
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_14

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_14
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1f

    goto :goto_2b

    :cond_1f
    move v1, v2

    goto :goto_2b

    :cond_21
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_14

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_14
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1f

    goto :goto_2b

    :cond_1f
    move v1, v2

    goto :goto_2b

    :cond_21
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_37
    return-void
.end method

.method public setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    :cond_7
    if-eqz p1, :cond_21

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    goto :goto_2a

    :cond_21
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_2a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    :cond_2a
    :goto_2a
    nop

    :goto_2b
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-void
.end method

.method public setTransitioning(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-eqz p1, :cond_7

    const/high16 v0, 0x60000

    goto :goto_9

    :cond_7
    const/high16 v0, 0x40000

    :goto_9
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_10

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_10
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_17
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1e

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1e
    return-void
.end method

.method public show(Z)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_59

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_5c

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    const-string v1, "TranslationY"

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v2, :cond_3c

    nop

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    goto :goto_3e

    :cond_3c
    const-wide/16 v2, 0x0

    :goto_3e
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    :cond_58
    goto :goto_5c

    :cond_59
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateAllClipView()V
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->updateAllClipView(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1e

    :cond_8
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_1e

    :cond_10
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1e

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method
