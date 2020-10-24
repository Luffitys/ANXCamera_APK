.class public Lcom/miui/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source ""

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

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

    move-result-object p2

    sget v1, Lmiui/R$styleable;->ActionBar_android_background:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v0

    sget v1, Lmiui/R$styleable;->ActionBar_miui_actionBarEmbededTabsBackground:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    sget v1, Lmiui/R$styleable;->ActionBar_miui_actionBarStackedBackground:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v2, v4

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    sget v1, Lmiui/R$styleable;->ActionBar_android_backgroundStacked:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    sget v1, Lmiui/R$styleable;->ActionBar_customViewAutoFitSystemWindow:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    sget v2, Lcom/miui/internal/R$id;->split_action_bar:I

    if-ne v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    sget v1, Lmiui/R$styleable;->ActionBar_android_backgroundSplit:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lmiui/R$attr;->colorPrimary:I

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean p2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez p2, :cond_1

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->addActionBarBlurView(Landroid/content/Context;)V

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/internal/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method private addActionBarBlurView(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-direct {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private applyInsets(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    return-void
.end method

.method private clearBackground()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundBackup:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackgroundBackup:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->updateBackground(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onMeasureSplit(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/internal/widget/BlurBackgroundView;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, p2, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_3
    return-void
.end method

.method private resetBackground()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackgroundBackup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundBackup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->updateBackground(Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method private selectDrawable()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x2

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_0
    return-void
.end method

.method private setAllClipChildren(Landroid/view/ViewGroup;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->setAllClipChildren(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setAllClipToPadding(Landroid/view/ViewGroup;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->setAllClipToPadding(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAllClipView(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setAllClipChildren(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setAllClipToPadding(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method private updateBackground(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContainer;->clearBackground()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContainer;->resetBackground()V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mRequestAnimation:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/internal/widget/ActionBarContainer$3;

    invoke-direct {p1, p0}, Lcom/miui/internal/widget/ActionBarContainer$3;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mRequestAnimation:Z

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-void
.end method

.method getCollapsedHeight()I
    .locals 4

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method getInsetHeight()I
    .locals 6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mFragmentViewPagerMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v1, v2

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v3, v1, :cond_2

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getAnimatedVisibility()I

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object p0
.end method

.method public hide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, p1, v0

    const-string v0, "TranslationY"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public isBlurEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    return p0
.end method

.method public isSearchStubSupportBlur()Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isSearchStubSupportBlur()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->isSupportBlur()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_2
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 p5, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    :cond_0
    iget v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    :goto_0
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    move v0, p5

    :goto_1
    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    add-int/2addr v2, v3

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int p3, p1, p3

    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    :cond_3
    iget-boolean p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p5, p5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    :goto_3
    move p5, v0

    goto :goto_6

    :cond_5
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContainer;->selectDrawable()V

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_6

    sub-int v1, p4, p2

    invoke-virtual {p3, p5, p5, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move p3, v0

    goto :goto_4

    :cond_6
    move p3, p5

    :goto_4
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    sub-int p3, p4, p2

    invoke-virtual {v1, p5, p5, p3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    :cond_7
    move v0, p3

    :goto_5
    invoke-static {}, Lcom/miui/internal/app/SystemVersionHelper;->isMiui11()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lmiui/R$attr;->colorDividerLine:I

    invoke-static {p3, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBrandingBottomDivider:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, p1, -0x1

    sub-int/2addr p4, p2

    invoke-virtual {p3, p5, v1, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    :cond_9
    :goto_6
    if-eqz p5, :cond_a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_a
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->onMeasureSplit(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_1

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

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->applyInsets(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setContentInset(I)V

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz p1, :cond_7

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_7
    move p1, v1

    :goto_3
    add-int/2addr p2, p1

    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_8
    move p1, v1

    move p2, p1

    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v0, v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_a

    add-int/lit8 p2, p2, 0x1

    :cond_a
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_b
    if-nez p2, :cond_c

    invoke-virtual {p0, v1, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_c
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v1, 0x2

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    new-array v8, v1, [I

    fill-array-data v8, :array_1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/miui/internal/widget/ActionBarContextView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    :cond_0
    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual/range {v9 .. v15}, Lcom/miui/internal/widget/ActionBarView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_0

    new-array v10, v1, [I

    fill-array-data v10, :array_1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lcom/miui/internal/widget/ActionBarContextView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    :cond_0
    iget-object v11, v0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    invoke-virtual/range {v11 .. v19}, Lcom/miui/internal/widget/ActionBarView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarContextView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->onPageScrolled(IFZZ)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarContextView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ActionBarContextView;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarView;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onWindowHide()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    :cond_0
    return-void
.end method

.method public onWindowShow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    :cond_0
    return-void
.end method

.method public setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/widget/BlurBackgroundView;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBlurBackground(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->updateBackground(Z)V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBlurBackground(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->updateBackground(Z)V

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->updateAllClipView(Z)V

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->updateBackground(Z)V

    :cond_4
    return v0
.end method

.method public setFragmentViewPagerMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mFragmentViewPagerMode:Z

    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v0

    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    :goto_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-void
.end method

.method public setTransitioning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x60000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    return-void
.end method

.method public show(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    const-string v1, "TranslationY"

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateAllClipView()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->isShowBlurBackgroundView:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->updateAllClipView(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
