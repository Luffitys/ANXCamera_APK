.class public Lcom/miui/internal/widget/ActionBarContextView;
.super Lcom/miui/internal/widget/AbsActionBarView;
.source ""

# interfaces
.implements Lcom/miui/internal/widget/ActionModeView;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final DAMPING:F = 0.9f

.field private static final DELAY_DURATION_100:I = 0x64

.field private static final DELAY_DURATION_50:I = 0x32

.field private static final STIFFNESS_HIGH:F = 986.96f

.field private static final STIFFNESS_LOW:F = 322.27f

.field private static final STIFFNESS_MEDIUM:F = 438.65f

.field private static final TYPE_NON_TOUCH:I = 0x1

.field private static final TYPE_TOUCH:I


# instance fields
.field private mActionMode:Ljava/lang/ref/WeakReference;

.field private mActionModeBackground:Landroid/graphics/drawable/Drawable;

.field private mAnimateStart:Z

.field private mAnimateToVisible:Z

.field private mAnimationListeners:Ljava/util/List;

.field private mAnimationMode:I

.field private mAnimationProgress:F

.field private mButton1:Landroid/widget/Button;

.field private mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private mButton2:Landroid/widget/Button;

.field private mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private mCollapseContainer:Landroid/view/View;

.field private mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

.field private mCollapseHeight:I

.field private mContentInset:I

.field private mExpandTitleStyleRes:I

.field private mExpandTitleView:Landroid/widget/TextView;

.field private mMovableContainer:Landroid/widget/FrameLayout;

.field private mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

.field private mNonTouchScrolling:Z

.field private mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScroller:Landroid/widget/Scroller;

.field private mRequestAnimation:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTouchScrolling:Z

.field private mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarContextView$1;-><init>(Lcom/miui/internal/widget/ActionBarContextView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    new-instance v0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTouchScrolling:Z

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    new-instance v1, Lcom/miui/internal/widget/ActionBarContextView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarContextView$3;-><init>(Lcom/miui/internal/widget/ActionBarContextView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    sget v2, Lcom/miui/internal/R$id;->action_bar_movable_container:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$dimen;->action_bar_title_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$dimen;->action_bar_title_top_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$dimen;->action_bar_title_horizontal_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$dimen;->action_bar_title_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    sget-object v1, Lmiui/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v1, Lmiui/R$styleable;->ActionMode_android_background:I

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lmiui/R$styleable;->ActionMode_android_titleTextStyle:I

    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    sget v1, Lmiui/R$styleable;->ActionMode_miui_expandTitleTextStyle:I

    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    sget v1, Lmiui/R$styleable;->ActionMode_android_height:I

    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    sget v0, Lmiui/R$styleable;->ActionMode_android_backgroundSplit:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    new-instance v8, Lcom/miui/internal/view/menu/ActionMenuItem;

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x1020019

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    new-instance v8, Lcom/miui/internal/view/menu/ActionMenuItem;

    sget v0, Lmiui/R$string;->action_mode_select_all:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x102001a

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/internal/widget/ActionBarContextView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ActionBarContextView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateStart:Z

    return p0
.end method

.method static synthetic access$302(Lcom/miui/internal/widget/ActionBarContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateStart:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ActionBarContextView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ActionBarContextView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I

    return p0
.end method

.method static synthetic access$502(Lcom/miui/internal/widget/ActionBarContextView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/internal/widget/ActionBarContextView;Lmiui/animation/physics/SpringAnimationSet;)Lmiui/animation/physics/SpringAnimationSet;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/ActionBarContextView;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/internal/widget/ActionBarContextView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/ActionBarContextView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    return p0
.end method

.method private animateLayoutWithProcess(F)V
    .locals 6

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, v0, p1

    iget v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    cmpl-float v1, p1, v3

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v1, v0, v4, v4, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMovableAnimConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v0, p1, v4, v4, p0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v3, v4, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, v0, v4, v4}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0, v4, v4}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, v3, v4, v4}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private clearBackground()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private getViewSpringAnima(Landroid/view/View;FFF)Lmiui/animation/physics/SpringAnimation;
    .locals 1

    new-instance p0, Lmiui/animation/physics/SpringAnimation;

    sget-object v0, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    invoke-direct {p0, p1, v0, p4}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    invoke-virtual {p0, p3}, Lmiui/animation/physics/DynamicAnimation;->setStartValue(F)Lmiui/animation/physics/DynamicAnimation;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object p1

    const p2, 0x3f666666    # 0.9f

    invoke-virtual {p1, p2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    const/high16 p1, 0x3b800000    # 0.00390625f

    invoke-virtual {p0, p1}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method private onLayoutCollapseViews(IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    add-int/2addr v1, v2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    sub-int/2addr p4, p2

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, v0, v1, p4}, Lcom/miui/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    :cond_0
    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p3, p1

    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/miui/internal/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mRequestAnimation:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiui/animation/physics/SpringAnimationSet;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/animation/physics/SpringAnimationSet;->start()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mRequestAnimation:Z

    :cond_2
    return-void
.end method

.method private resetBackground()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setButtonContentDescription(II)V
    .locals 1

    const v0, 0x1020019

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    const v0, 0x102001a

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_cancel_light:I

    if-eq v0, p2, :cond_b

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_cancel_dark:I

    if-ne v0, p2, :cond_3

    goto :goto_4

    :cond_3
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_confirm_light:I

    if-eq v0, p2, :cond_a

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_confirm_dark:I

    if-ne v0, p2, :cond_4

    goto :goto_3

    :cond_4
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_select_all_light:I

    if-eq v0, p2, :cond_9

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_select_all_dark:I

    if-ne v0, p2, :cond_5

    goto :goto_2

    :cond_5
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_deselect_all_light:I

    if-eq v0, p2, :cond_8

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_deselect_all_dark:I

    if-ne v0, p2, :cond_6

    goto :goto_1

    :cond_6
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_delete_light:I

    if-eq v0, p2, :cond_7

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_delete_dark:I

    if-ne v0, p2, :cond_c

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/miui/internal/R$string;->delete_description:I

    goto :goto_5

    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/miui/internal/R$string;->deselect_all_description:I

    goto :goto_5

    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/miui/internal/R$string;->select_all_description:I

    goto :goto_5

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/miui/internal/R$string;->confirm_description:I

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/miui/internal/R$string;->cancel_description:I

    :goto_5
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method private setSplitAnimating(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setAnimating(Z)V

    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public animateToVisibility(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->cancelAnimation()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitAnimating(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mRequestAnimation:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiui/animation/physics/SpringAnimationSet;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimationSet;->start()V

    :goto_0
    return-void
.end method

.method protected cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimationSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method public closeMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->endAnimation()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I

    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected endAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimationSet;->endAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getActionBarStyle()I
    .locals 0

    const p0, 0x1010394

    return p0
.end method

.method public bridge synthetic getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result p0

    return p0
.end method

.method public getAnimationProgress()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationProgress:F

    return p0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getExpandState()I
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getExpandState()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

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

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->killMode()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    :cond_1
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$layout;->action_menu_layout:I

    sget v5, Lcom/miui/internal/R$layout;->action_mode_menu_item_layout:I

    sget v6, Lcom/miui/internal/R$layout;->action_bar_expanded_menu_layout:I

    sget v7, Lcom/miui/internal/R$layout;->action_bar_list_menu_item_layout:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setActionEditMode(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-boolean v4, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x11

    goto :goto_0

    :cond_4
    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p1, p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method protected initTitle()V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$layout;->action_mode_title_item:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x102001a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-static {v0}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-static {v0}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    return-void
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

.method public bridge synthetic isOverflowReserved()Z
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isResizable()Z
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->isResizable()Z

    move-result p0

    return p0
.end method

.method public isTitleOptional()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return p0
.end method

.method public killMode()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected makeInOutAnimator(Z)Lmiui/animation/physics/SpringAnimationSet;
    .locals 22

    move-object/from16 v9, p0

    move/from16 v10, p1

    iget-boolean v0, v9, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateToVisible:Z

    if-ne v10, v0, :cond_0

    iget-object v0, v9, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_0

    new-instance v0, Lmiui/animation/physics/SpringAnimationSet;

    invoke-direct {v0}, Lmiui/animation/physics/SpringAnimationSet;-><init>()V

    return-object v0

    :cond_0
    iput-boolean v10, v9, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateToVisible:Z

    iget-object v11, v9, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v0, v9, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v11}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v13

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v14

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    if-eqz v10, :cond_1

    move v8, v0

    move v7, v1

    move v6, v13

    move v5, v15

    goto :goto_0

    :cond_1
    move v7, v0

    move v8, v1

    move v5, v13

    move v6, v15

    :goto_0
    new-instance v4, Lmiui/animation/physics/SpringAnimationSet;

    invoke-direct {v4}, Lmiui/animation/physics/SpringAnimationSet;-><init>()V

    const v0, 0x4476bd71

    if-eqz v10, :cond_2

    const v1, 0x43a1228f

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    invoke-direct {v9, v9, v1, v8, v7}, Lcom/miui/internal/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiui/animation/physics/SpringAnimation;

    move-result-object v1

    if-eqz v10, :cond_3

    const-wide/16 v2, 0x32

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2, v3}, Lmiui/animation/physics/DynamicAnimation;->setStartDelay(J)V

    invoke-virtual {v4, v1}, Lmiui/animation/physics/SpringAnimationSet;->play(Lmiui/animation/physics/SpringAnimation;)V

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-boolean v2, v9, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v2, :cond_4

    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;

    invoke-direct {v0, v9, v10}, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;-><init>(Lcom/miui/internal/widget/ActionBarContextView;Z)V

    invoke-virtual {v1, v0}, Lmiui/animation/physics/DynamicAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    iput-object v4, v9, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    return-object v4

    :cond_4
    iput-boolean v15, v9, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateStart:Z

    if-eqz v10, :cond_5

    const/16 v1, 0x64

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v15

    :goto_3
    if-eqz v10, :cond_6

    const v0, 0x43db5333    # 438.65f

    :cond_6
    move v2, v0

    new-instance v1, Lmiui/animation/physics/SpringAnimation;

    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$2;

    const-string v16, ""

    move-object/from16 v17, v0

    move-object v15, v1

    move-object/from16 v1, p0

    move v9, v2

    move-object/from16 v2, v16

    move v10, v3

    move-object v3, v11

    move-object/from16 v18, v4

    move v4, v14

    move/from16 v16, v5

    move v5, v13

    move/from16 v19, v6

    move/from16 v6, p1

    move/from16 v20, v7

    move/from16 v7, v19

    move/from16 v21, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/miui/internal/widget/ActionBarContextView$2;-><init>(Lcom/miui/internal/widget/ActionBarContextView;Ljava/lang/String;Lcom/miui/internal/view/menu/ActionMenuView;FIZII)V

    move/from16 v0, v19

    int-to-float v0, v0

    move-object/from16 v1, v17

    invoke-direct {v15, v12, v1, v0}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    move/from16 v0, v16

    int-to-float v1, v0

    invoke-virtual {v15, v1}, Lmiui/animation/physics/DynamicAnimation;->setStartValue(F)Lmiui/animation/physics/DynamicAnimation;

    invoke-virtual {v15}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v2

    invoke-virtual {v2, v9}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    invoke-virtual {v15}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v2

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    int-to-long v2, v10

    invoke-virtual {v15, v2, v3}, Lmiui/animation/physics/DynamicAnimation;->setStartDelay(J)V

    new-instance v4, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;

    move-object/from16 v5, p0

    move v7, v9

    invoke-direct {v4, v5, v6}, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;-><init>(Lcom/miui/internal/widget/ActionBarContextView;Z)V

    invoke-virtual {v15, v4}, Lmiui/animation/physics/DynamicAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    int-to-float v4, v13

    add-float/2addr v14, v4

    sub-float/2addr v14, v1

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    invoke-virtual {v12, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->animateContentMarginBottom(I)V

    move/from16 v1, v20

    move/from16 v0, v21

    invoke-direct {v5, v11, v7, v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiui/animation/physics/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lmiui/animation/physics/DynamicAnimation;->setStartDelay(J)V

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/animation/physics/SpringAnimation;

    const/4 v2, 0x0

    aput-object v15, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Lmiui/animation/physics/SpringAnimationSet;->playTogether([Lmiui/animation/physics/SpringAnimation;)V

    iput-object v1, v5, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    return-object v1
.end method

.method public notifyAnimationEnd(Z)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v0, p1}, Lmiui/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v0, p1}, Lmiui/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v0, p1, p2}, Lmiui/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    :cond_0
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    if-eq p2, v1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    if-ne p2, v1, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    iget v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sub-int v6, p5, p3

    sub-int v4, v6, v0

    invoke-direct {p0, p2, p3, p4, v4}, Lcom/miui/internal/widget/ActionBarContextView;->onLayoutCollapseViews(IIII)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/widget/ActionBarContextView;->onLayoutExpandViews(ZIIII)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->animateLayoutWithProcess(F)V

    return-void
.end method

.method protected onLayoutExpandViews(ZIIII)V
    .locals 1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int p2, p4, p1

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p5, p3

    sub-int/2addr p4, p5

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, p2

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v3, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_1

    iget-object v3, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v3, v1, v0, v4}, Lcom/miui/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v3, v0

    :cond_2
    iget v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    if-gtz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p2

    if-le v3, v2, :cond_3

    move v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-lez v2, :cond_5

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    add-int v4, v2, p2

    :cond_5
    invoke-virtual {p0, p1, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_6

    :cond_6
    if-lez v3, :cond_7

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    add-int/2addr v0, p2

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget p2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    :goto_4
    add-int/2addr p2, v0

    :goto_5
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_6

    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_4

    :cond_9
    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    goto :goto_5

    :goto_6
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 1

    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    iget p5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    const/4 v0, 0x1

    if-lt p1, p5, :cond_0

    sub-int p1, p2, p3

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    aget p1, p4, v0

    add-int/2addr p1, p3

    aput p1, p4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr p5, p1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    aget p1, p4, v0

    neg-int p3, p5

    add-int/2addr p1, p3

    aput p1, p4, v0

    :goto_0
    iget p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    if-eq p1, p2, :cond_1

    sub-int/2addr p2, p1

    aput p2, p6, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 0

    if-gez p5, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_1

    iget p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    sub-int/2addr p2, p5

    iget p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    const/4 p4, 0x1

    if-gt p2, p3, :cond_0

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    sub-int/2addr p2, p5

    iput p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    aget p2, p7, p4

    add-int/2addr p2, p5

    aput p2, p7, p4

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iput p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    aget p3, p7, p4

    neg-int p2, p2

    add-int/2addr p3, p2

    aput p3, p7, p4

    :goto_0
    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    if-eq p2, p1, :cond_1

    sub-int/2addr p1, p2

    aput p1, p8, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    if-nez p4, :cond_0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTouchScrolling:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    :goto_0
    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    const v1, 0x102001a

    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    iget-boolean p1, p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->postShowOverflowMenu()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->isResizable()Z

    move-result p0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 3

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTouchScrolling:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTouchScrolling:Z

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    :goto_0
    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ne p1, v1, :cond_3

    iget p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    if-le p1, p2, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationProgress:F

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    :goto_1
    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3

    :cond_2
    const v2, 0x102001a

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    :goto_1
    invoke-virtual {v0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3

    :cond_2
    const v2, 0x102001a

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    goto :goto_1

    :cond_5
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/miui/internal/widget/ActionBarContextView;->setButtonContentDescription(II)V

    :cond_6
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setContentInset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    return-void
.end method

.method public bridge synthetic setExpandState(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method public bridge synthetic setExpandState(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_5
    return-void
.end method

.method public bridge synthetic setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setVisibility(I)V

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

.method public updateBackground(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContextView;->clearBackground()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContextView;->resetBackground()V

    :goto_0
    return-void
.end method
