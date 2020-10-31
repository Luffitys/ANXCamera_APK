.class public Lcom/miui/internal/widget/ActionBarContextView;
.super Lcom/miui/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Lcom/miui/internal/widget/ActionModeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;,
        Lcom/miui/internal/widget/ActionBarContextView$SavedState;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private mActionModeBackground:Landroid/graphics/drawable/Drawable;

.field private mAnimateStart:Z

.field private mAnimateToVisible:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 17

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {p0 .. p3}, Lcom/miui/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/miui/internal/widget/ActionBarContextView$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarContextView$1;-><init>(Lcom/miui/internal/widget/ActionBarContextView;)V

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    new-instance v1, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/internal/widget/ActionBarContextView;->mTouchScrolling:Z

    iput-boolean v1, v0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    new-instance v2, Lcom/miui/internal/widget/ActionBarContextView$3;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ActionBarContextView$3;-><init>(Lcom/miui/internal/widget/ActionBarContextView;)V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_movable_container:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$dimen;->action_bar_title_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$dimen;->action_bar_title_top_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$dimen;->action_bar_title_horizontal_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/internal/R$dimen;->action_bar_title_bottom_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    sget-object v2, Lmiui/R$styleable;->ActionMode:[I

    move-object v9, p2

    move/from16 v10, p3

    invoke-virtual {p1, p2, v2, v10, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    sget v2, Lmiui/R$styleable;->ActionMode_android_background:I

    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lmiui/R$styleable;->ActionMode_android_titleTextStyle:I

    invoke-virtual {v11, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    sget v2, Lmiui/R$styleable;->ActionMode_miui_expandTitleTextStyle:I

    invoke-virtual {v11, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    sget v2, Lmiui/R$styleable;->ActionMode_android_height:I

    invoke-virtual {v11, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    sget v1, Lmiui/R$styleable;->ActionMode_android_backgroundSplit:I

    invoke-virtual {v11, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    new-instance v12, Lcom/miui/internal/view/menu/ActionMenuItem;

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const v4, 0x1020019

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v12

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v12, v0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    new-instance v12, Lcom/miui/internal/view/menu/ActionMenuItem;

    sget v1, Lmiui/R$string;->action_mode_select_all:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v4, 0x102001a

    move-object v1, v12

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v12, v0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/internal/widget/ActionBarContextView;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ActionBarContextView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateStart:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/internal/widget/ActionBarContextView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateStart:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ActionBarContextView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ActionBarContextView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/internal/widget/ActionBarContextView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/internal/widget/ActionBarContextView;Lmiui/animation/physics/SpringAnimationSet;)Lmiui/animation/physics/SpringAnimationSet;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/ActionBarContextView;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/internal/widget/ActionBarContextView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/ActionBarContextView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    return v0
.end method

.method private animateLayoutWithProcess(F)V
    .registers 9

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mInnerExpandState:I

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2f

    cmpl-float v2, v0, v4

    if-lez v2, :cond_20

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseAnimHideConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v1, v4, v5, v3, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    goto :goto_27

    :cond_20
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseAnimShowConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v2, v1, v5, v5, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    :goto_27
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableAnimConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v1, v0, v5, v5, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    goto :goto_4d

    :cond_2f
    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3f

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v4, v5, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v1, v5, v5}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_4d

    :cond_3f
    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mInnerExpandState:I

    if-nez v2, :cond_4d

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v1, v5, v5}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v1, v4, v5, v5}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private clearBackground()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    return-void
.end method

.method private getViewSpringAnima(Landroid/view/View;FFF)Lmiui/animation/physics/SpringAnimation;
    .registers 8

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    sget-object v1, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    invoke-direct {v0, p1, v1, p4}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    invoke-virtual {v0, p3}, Lmiui/animation/physics/SpringAnimation;->setStartValue(F)Lmiui/animation/physics/DynamicAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    const/high16 v1, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    return-object v0
.end method

.method private onLayoutCollapseViews(IIII)V
    .registers 10

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    add-int/2addr v1, v2

    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2b

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/miui/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    :cond_2b
    sub-int v3, p3, p1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_43

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/miui/internal/widget/ActionBarContextView;->positionChildInverse(Landroid/view/View;III)I

    :cond_43
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mRequestAnimation:Z

    if-eqz v0, :cond_54

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiui/animation/physics/SpringAnimationSet;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimationSet;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mRequestAnimation:Z

    :cond_54
    return-void
.end method

.method private resetBackground()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-void
.end method

.method private setButtonContentDescription(II)V
    .registers 6

    const v0, 0x1020019

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    goto :goto_11

    :cond_8
    const v0, 0x102001a

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    nop

    if-nez v0, :cond_15

    return-void

    :cond_15
    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_cancel_light:I

    if-eq v1, p2, :cond_79

    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_cancel_dark:I

    if-ne v1, p2, :cond_1e

    goto :goto_79

    :cond_1e
    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_confirm_light:I

    if-eq v1, p2, :cond_6b

    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_confirm_dark:I

    if-ne v1, p2, :cond_27

    goto :goto_6b

    :cond_27
    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_select_all_light:I

    if-eq v1, p2, :cond_5d

    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_select_all_dark:I

    if-ne v1, p2, :cond_30

    goto :goto_5d

    :cond_30
    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_deselect_all_light:I

    if-eq v1, p2, :cond_4f

    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_deselect_all_dark:I

    if-ne v1, p2, :cond_39

    goto :goto_4f

    :cond_39
    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_delete_light:I

    if-eq v1, p2, :cond_41

    sget v1, Lcom/miui/internal/R$drawable;->action_mode_title_button_delete_dark:I

    if-ne v1, p2, :cond_86

    :cond_41
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->delete_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_86

    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->deselect_all_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_86

    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->select_all_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_86

    :cond_6b
    :goto_6b
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->confirm_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_86

    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->cancel_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_86
    :goto_86
    return-void
.end method

.method private setSplitAnimating(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setAnimating(Z)V

    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic animateToVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public animateToVisibility(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->cancelAnimation()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitAnimating(Z)V

    if-eqz p1, :cond_10

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mRequestAnimation:Z

    goto :goto_17

    :cond_10
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiui/animation/physics/SpringAnimationSet;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimationSet;->start()V

    :goto_17
    return-void
.end method

.method protected cancelAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimationSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method public closeMode()V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->endAnimation()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I

    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .registers 1

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected endAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimationSet;->endAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getActionBarStyle()I
    .registers 2

    const v0, 0x1010394

    return v0
.end method

.method public bridge synthetic getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public getAnimationProgress()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationProgress:F

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getExpandState()I
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .registers 11

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->killMode()V

    :cond_a
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    :cond_24
    new-instance v1, Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$layout;->action_menu_layout:I

    sget v6, Lcom/miui/internal/R$layout;->action_mode_menu_item_layout:I

    sget v7, Lcom/miui/internal/R$layout;->action_bar_expanded_menu_layout:I

    sget v8, Lcom/miui/internal/R$layout;->action_bar_list_menu_item_layout:I

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setActionEditMode(Z)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-boolean v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v5, :cond_69

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v1}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ad

    :cond_69
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v2, :cond_83

    move v3, v4

    :cond_83
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v2, :cond_8c

    const/16 v2, 0x11

    goto :goto_8e

    :cond_8c
    const/16 v2, 0x50

    :goto_8e
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v3, v1}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_ad
    return-void
.end method

.method protected initTitle()V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_7d

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$layout;->action_mode_title_item:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020019

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x102001a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz v2, :cond_3d

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-static {v2}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    :cond_3d
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v2, :cond_4b

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-static {v2}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    :cond_4b
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_65

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_65
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    if-eqz v3, :cond_7d

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_7d
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

    if-eqz v0, :cond_a4

    move v4, v1

    goto :goto_a5

    :cond_a4
    move v4, v3

    :goto_a5
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_ad

    goto :goto_ae

    :cond_ad
    move v1, v3

    :goto_ae
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_be

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    :cond_be
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_cd

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_cd
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_da

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    :cond_da
    return-void
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isResizable()Z
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    :cond_18
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected makeInOutAnimator(Z)Lmiui/animation/physics/SpringAnimationSet;
    .registers 26

    move-object/from16 v9, p0

    move/from16 v10, p1

    iget-boolean v0, v9, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateToVisible:Z

    if-ne v10, v0, :cond_12

    iget-object v0, v9, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_12

    new-instance v0, Lmiui/animation/physics/SpringAnimationSet;

    invoke-direct {v0}, Lmiui/animation/physics/SpringAnimationSet;-><init>()V

    return-object v0

    :cond_12
    iput-boolean v10, v9, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateToVisible:Z

    iget-object v11, v9, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v0, v9, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v11}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v13

    invoke-virtual {v11}, Lcom/miui/internal/view/menu/ActionMenuView;->getTranslationY()F

    move-result v14

    if-eqz v10, :cond_33

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v3, v13

    move v15, v0

    move v8, v1

    move v7, v2

    move v6, v3

    goto :goto_3c

    :cond_33
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move v2, v13

    const/4 v3, 0x0

    move v15, v0

    move v8, v1

    move v7, v2

    move v6, v3

    :goto_3c
    new-instance v0, Lmiui/animation/physics/SpringAnimationSet;

    invoke-direct {v0}, Lmiui/animation/physics/SpringAnimationSet;-><init>()V

    move-object v5, v0

    nop

    const v0, 0x4476bd71

    if-eqz v10, :cond_4c

    const v1, 0x43a1228f

    goto :goto_4d

    :cond_4c
    move v1, v0

    :goto_4d
    invoke-direct {v9, v9, v1, v15, v8}, Lcom/miui/internal/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiui/animation/physics/SpringAnimation;

    move-result-object v4

    if-eqz v10, :cond_56

    const-wide/16 v1, 0x32

    goto :goto_58

    :cond_56
    const-wide/16 v1, 0x0

    :goto_58
    invoke-virtual {v4, v1, v2}, Lmiui/animation/physics/SpringAnimation;->setStartDelay(J)V

    invoke-virtual {v5, v4}, Lmiui/animation/physics/SpringAnimationSet;->play(Lmiui/animation/physics/SpringAnimation;)V

    invoke-virtual {v9, v15}, Lcom/miui/internal/widget/ActionBarContextView;->setAlpha(F)V

    iget-boolean v1, v9, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v1, :cond_70

    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;

    invoke-direct {v0, v9, v10}, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;-><init>(Lcom/miui/internal/widget/ActionBarContextView;Z)V

    invoke-virtual {v4, v0}, Lmiui/animation/physics/SpringAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    iput-object v5, v9, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    return-object v5

    :cond_70
    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateStart:Z

    if-eqz v10, :cond_78

    const/16 v1, 0x64

    goto :goto_79

    :cond_78
    move v1, v3

    :goto_79
    move v2, v1

    if-eqz v10, :cond_7f

    const v0, 0x43db5333    # 438.65f

    :cond_7f
    move v1, v0

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    move/from16 v16, v15

    new-instance v15, Lcom/miui/internal/widget/ActionBarContextView$2;

    const-string v17, ""

    move-object v9, v0

    move-object v0, v15

    move v10, v1

    move-object/from16 v1, p0

    move/from16 v18, v2

    move-object/from16 v2, v17

    move/from16 v17, v3

    move-object v3, v11

    move-object/from16 v19, v4

    move v4, v14

    move-object/from16 v20, v5

    move v5, v13

    move/from16 v21, v6

    move/from16 v6, p1

    move/from16 v22, v7

    move/from16 v7, v21

    move/from16 v23, v8

    move/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lcom/miui/internal/widget/ActionBarContextView$2;-><init>(Lcom/miui/internal/widget/ActionBarContextView;Ljava/lang/String;Lcom/miui/internal/view/menu/ActionMenuView;FIZII)V

    move/from16 v3, v21

    int-to-float v0, v3

    invoke-direct {v9, v12, v15, v0}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    move-object v0, v9

    move/from16 v2, v22

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->setStartValue(F)Lmiui/animation/physics/DynamicAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v10}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v1

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v1, v4}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    move/from16 v1, v18

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lmiui/animation/physics/SpringAnimation;->setStartDelay(J)V

    new-instance v4, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;

    move-object/from16 v5, p0

    move v7, v10

    invoke-direct {v4, v5, v6}, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;-><init>(Lcom/miui/internal/widget/ActionBarContextView;Z)V

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    int-to-float v4, v13

    add-float/2addr v4, v14

    int-to-float v8, v2

    sub-float/2addr v4, v8

    invoke-virtual {v11, v4}, Lcom/miui/internal/view/menu/ActionMenuView;->setTranslationY(F)V

    invoke-virtual {v12, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->animateContentMarginBottom(I)V

    move/from16 v4, v16

    move/from16 v8, v23

    invoke-direct {v5, v11, v7, v4, v8}, Lcom/miui/internal/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiui/animation/physics/SpringAnimation;

    move-result-object v9

    nop

    int-to-long v2, v1

    invoke-virtual {v9, v2, v3}, Lmiui/animation/physics/SpringAnimation;->setStartDelay(J)V

    invoke-virtual {v11, v4}, Lcom/miui/internal/view/menu/ActionMenuView;->setAlpha(F)V

    const/4 v2, 0x2

    new-array v2, v2, [Lmiui/animation/physics/SpringAnimation;

    aput-object v0, v2, v17

    const/4 v3, 0x1

    aput-object v9, v2, v3

    move-object/from16 v3, v20

    invoke-virtual {v3, v2}, Lmiui/animation/physics/SpringAnimationSet;->playTogether([Lmiui/animation/physics/SpringAnimation;)V

    iput-object v3, v5, Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;

    return-object v3
.end method

.method public notifyAnimationEnd(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v1, p1, p2}, Lmiui/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    :cond_12
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_14
    if-eq p2, v1, :cond_1b

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_1b
    if-eqz p2, :cond_22

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_22
    if-ne p2, v1, :cond_2b

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_3e

    :cond_2b
    if-nez p2, :cond_35

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3e

    :cond_35
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    :goto_3e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    goto :goto_15

    :cond_8
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    sub-int v7, p5, p3

    move v8, v7

    sub-int v9, v8, v0

    invoke-direct {p0, p2, p3, p4, v9}, Lcom/miui/internal/widget/ActionBarContextView;->onLayoutCollapseViews(IIII)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, v9

    move v5, p4

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/widget/ActionBarContextView;->onLayoutExpandViews(ZIIII)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->animateLayoutWithProcess(F)V

    return-void
.end method

.method protected onLayoutExpandViews(ZIIII)V
    .registers 11

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4b

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mInnerExpandState:I

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual {v0, p2, v1, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    move v0, p2

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int v0, p4, v1

    :cond_28
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p5, p3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_4b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    if-lez v1, :cond_b

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    goto :goto_f

    :cond_b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :goto_f
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v1, v2

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v9, 0x0

    if-eqz v8, :cond_46

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v8}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, p0, :cond_46

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v8, v3, v6, v9}, Lcom/miui/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v8}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    :cond_46
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_64

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    const/16 v10, 0x8

    if-eq v8, v10, :cond_64

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v10, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8, v6}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v10, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v7, v10

    :cond_64
    iget v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    if-gtz v8, :cond_8a

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_6e
    if-ge v8, v7, :cond_7f

    invoke-virtual {p0, v8}, Lcom/miui/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    if-le v11, v5, :cond_7c

    move v5, v11

    :cond_7c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    :cond_7f
    if-lez v5, :cond_85

    iget v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    add-int v9, v5, v8

    :cond_85
    invoke-virtual {p0, v0, v9}, Lcom/miui/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    move v7, v5

    goto :goto_c7

    :cond_8a
    if-lez v7, :cond_92

    iget v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    iget v10, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    add-int/2addr v8, v10

    goto :goto_93

    :cond_92
    move v8, v9

    :goto_93
    iput v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Landroid/widget/FrameLayout;->measure(II)V

    iget v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_b0

    iget v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    add-int/2addr v5, v8

    invoke-virtual {p0, v0, v5}, Lcom/miui/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_c7

    :cond_b0
    iget v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_c2

    iget v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {p0, v0, v5}, Lcom/miui/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_c7

    :cond_c2
    iget v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    invoke-virtual {p0, v0, v5}, Lcom/miui/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    :goto_c7
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 13

    if-lez p3, :cond_3a

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    if-le v0, v1, :cond_3a

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_21

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    sub-int/2addr v2, p3

    iput v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    aget v2, p4, v3

    add-int/2addr v2, p3

    aput v2, p4, v3

    goto :goto_2f

    :cond_21
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    aget v4, p4, v3

    neg-int v5, v2

    add-int/2addr v4, v5

    aput v4, p4, v3

    :goto_2f
    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    if-eq v2, v1, :cond_3a

    sub-int v2, v1, v2

    aput v2, p6, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->requestLayout()V

    :cond_3a
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 15

    if-gez p5, :cond_56

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_56

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p5

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-gt v1, v2, :cond_2f

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    sub-int/2addr v2, p5

    iput v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    aget v2, p7, v3

    add-int/2addr v2, p5

    aput v2, p7, v3

    goto :goto_4b

    :cond_2f
    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    aget v4, p7, v3

    neg-int v5, v2

    add-int/2addr v4, v5

    aput v4, p7, v3

    :goto_4b
    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    if-eq v2, v0, :cond_56

    sub-int v2, v0, v2

    aput v2, p8, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->requestLayout()V

    :cond_56
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 7

    const/4 v0, 0x1

    if-nez p4, :cond_6

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTouchScrolling:Z

    goto :goto_8

    :cond_6
    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    :goto_8
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_15
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/miui/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    const v2, 0x102001a

    invoke-virtual {p0, v2, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->postShowOverflowMenu()V

    :cond_1e
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

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

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    :cond_1f
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->isResizable()Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 9

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTouchScrolling:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTouchScrolling:Z

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-nez v1, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_e
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-eqz v1, :cond_15

    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mNonTouchScrolling:Z

    const/4 v0, 0x1

    :cond_15
    :goto_15
    if-eqz v0, :cond_7f

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    if-ne v1, v3, :cond_23

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ne v1, v3, :cond_41

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPendingHeight:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-ne v1, v3, :cond_41

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    :cond_41
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-le v1, v3, :cond_6a

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_7a

    :cond_6a
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mCollapseHeight:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    :goto_7a
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_7f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .registers 1

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public setAnimationProgress(F)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimationProgress:F

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .registers 7

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_25

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz v2, :cond_1f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_43

    :cond_25
    const v2, 0x102001a

    if-ne p1, v2, :cond_43

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v2, :cond_3e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3e
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_43
    :goto_43
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .registers 8

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_2c

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz v2, :cond_26

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez p3, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_26
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_51

    :cond_2c
    const v2, 0x102001a

    if-ne p1, v2, :cond_51

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v2, :cond_4c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    if-nez p3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_4c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_51
    :goto_51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    if-eqz p3, :cond_5c

    invoke-direct {p0, p1, p3}, Lcom/miui/internal/widget/ActionBarContextView;->setButtonContentDescription(II)V

    :cond_5c
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setContentInset(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentInset:I

    return-void
.end method

.method public bridge synthetic setExpandState(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method public bridge synthetic setExpandState(IZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_83

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_80

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-nez p1, :cond_36

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_30
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_80

    :cond_36
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

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

    if-eqz v1, :cond_55

    const/16 v1, 0x11

    goto :goto_57

    :cond_55
    const/16 v1, 0x50

    :goto_57
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_79

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_79
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_80
    :goto_80
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_83
    return-void
.end method

.method public bridge synthetic setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->requestLayout()V

    :cond_7
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public updateBackground(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContextView;->clearBackground()V

    goto :goto_9

    :cond_6
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContextView;->resetBackground()V

    :goto_9
    return-void
.end method
