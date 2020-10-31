.class public Lcom/miui/internal/widget/ActionBarView;
.super Lcom/miui/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;,
        Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/miui/internal/widget/ActionBarView$HomeView;,
        Lcom/miui/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final ICON_INITIALIZED:I = 0x1

.field private static final LOGO_INITIALIZED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarView"

.field private static final TYPE_NON_TOUCH:I = 0x1

.field private static final TYPE_TOUCH:I


# instance fields
.field private mCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mCollapseContainer:Landroid/widget/FrameLayout;

.field private mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

.field private mCollapseCustomContainer:Landroid/widget/FrameLayout;

.field private mCollapseHeight:I

.field private mCollapseSubtitleStyleRes:I

.field private mCollapseSubtitleView:Landroid/widget/TextView;

.field private mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mCollapseTitleLayout:Landroid/widget/LinearLayout;

.field private mCollapseTitleShowable:Z

.field private mCollapseTitleStyleRes:I

.field private mCollapseTitleView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCustomNavView:Landroid/view/View;

.field private final mCustomTitleWatcher:Landroid/text/TextWatcher;

.field private mDisplayOptions:I

.field private mEndView:Landroid/view/View;

.field private mExpandBounds:Landroid/graphics/Rect;

.field private mExpandSubtitleStyleRes:I

.field private mExpandSubtitleView:Landroid/widget/TextView;

.field private mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mExpandTitleLayout:Landroid/widget/LinearLayout;

.field private mExpandTitleStyleRes:I

.field private mExpandTitleView:Landroid/widget/TextView;

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mHomeAsUpIndicatorResId:I

.field private mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

.field private final mHomeResId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLogoInitIndicator:I

.field private mImmersionView:Landroid/view/View;

.field private mInActionMode:Z

.field private mInSearchMode:Z

.field private mIncludeTabs:Z

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private mMovableContainer:Landroid/widget/FrameLayout;

.field private mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mNonTouchScrolling:Z

.field private mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScroller:Landroid/widget/Scroller;

.field private mProgressBarPadding:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSecondaryBounds:Landroid/graphics/Rect;

.field private mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

.field private mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

.field private mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mStartView:Landroid/view/View;

.field private mStateChangeAnimStateStyle:Lmiui/animation/IStateStyle;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTempResizable:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private final mTitleClickListener:Landroid/view/View$OnClickListener;

.field private mTitleNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private mTitleUpView:Landroid/view/View;

.field private mTouchScrolling:Z

.field private mUncollapsePaddingH:I

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 17

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {p0 .. p2}, Lcom/miui/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleShowable:Z

    new-instance v2, Lcom/miui/internal/widget/ActionBarView$1;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ActionBarView$1;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v2, Lcom/miui/internal/widget/ActionBarView$2;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ActionBarView$2;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/miui/internal/widget/ActionBarView$3;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ActionBarView$3;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/miui/internal/widget/ActionBarView$4;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ActionBarView$4;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/miui/internal/widget/ActionBarView$5;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ActionBarView$5;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    new-instance v2, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    new-instance v2, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    new-instance v2, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarView;->mTouchScrolling:Z

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryBounds:Landroid/graphics/Rect;

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiui/animation/IStateStyle;

    new-instance v3, Lcom/miui/internal/widget/ActionBarView$8;

    invoke-direct {v3, p0}, Lcom/miui/internal/widget/ActionBarView$8;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    iput-object v8, v0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$dimen;->action_bar_title_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    sget v4, Lcom/miui/internal/R$id;->action_bar_collapse_container:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    sget v4, Lcom/miui/internal/R$id;->action_bar_movable_container:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v4, v0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$dimen;->action_bar_title_top_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget v6, v0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/miui/internal/R$dimen;->action_bar_title_bottom_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v3, Lmiui/view/springback/SpringBackLayout;

    invoke-direct {v3, p1}, Lmiui/view/springback/SpringBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    sget v4, Lcom/miui/internal/R$id;->action_bar_secondary_container:I

    invoke-virtual {v3, v4}, Lmiui/view/springback/SpringBackLayout;->setId(I)V

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v3, v1}, Lmiui/view/springback/SpringBackLayout;->setScrollOrientation(I)V

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v1, v2}, Lmiui/view/springback/SpringBackLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->setBackgroundResource(I)V

    sget-object v1, Lmiui/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    move-object/from16 v9, p2

    invoke-virtual {p1, v9, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    sget v1, Lmiui/R$styleable;->ActionBar_android_navigationMode:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    sget v1, Lmiui/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    sget v1, Lmiui/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    sget v1, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleCenter:Z

    sget v1, Lmiui/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    sget v1, Lmiui/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    sget v1, Lmiui/R$styleable;->ActionBar_android_homeLayout:I

    sget v3, Lcom/miui/internal/R$layout;->action_bar_home:I

    invoke-virtual {v10, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mHomeResId:I

    sget v1, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleStyleRes:I

    sget v1, Lmiui/R$styleable;->ActionBar_android_subtitleTextStyle:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    sget v1, Lmiui/R$styleable;->ActionBar_miui_expandTitleTextStyle:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleStyleRes:I

    sget v1, Lmiui/R$styleable;->ActionBar_miui_expandSubtitleTextStyle:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleStyleRes:I

    sget v1, Lmiui/R$styleable;->ActionBar_android_progressBarPadding:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    sget v1, Lmiui/R$styleable;->ActionBar_android_itemPadding:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    sget v1, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    sget v1, Lmiui/R$styleable;->ActionBar_android_customNavigationLayout:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-eqz v12, :cond_17c

    invoke-virtual {v11, v12, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    iput v2, v0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    :cond_17c
    sget v1, Lmiui/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v13, Lcom/miui/internal/view/menu/ActionMenuItem;

    const/4 v3, 0x0

    const v4, 0x102002c

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, v13

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v13, v0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    new-instance v13, Lcom/miui/internal/view/menu/ActionMenuItem;

    const v4, 0x1020016

    iget-object v7, v0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, v13

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v13, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/internal/widget/ActionBarView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/internal/widget/ActionBarView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/internal/widget/ActionBarView;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/internal/widget/ActionBarView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/internal/widget/ActionBarView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/internal/widget/ActionBarView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/internal/widget/ActionBarView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTempResizable:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/miui/internal/widget/ActionBarView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTempResizable:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/internal/widget/ActionBarView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/ActionBarView;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initExpandedHomeLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method private addTabsContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .registers 9

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object p3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v0}, Lmiui/view/springback/SpringBackLayout;->removeAllViews()V

    goto :goto_85

    :cond_32
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_85

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v2

    if-nez v2, :cond_6d

    instance-of v2, v1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_52

    goto :goto_6d

    :cond_52
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v2}, Lmiui/view/springback/SpringBackLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v3}, Lmiui/view/springback/SpringBackLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v3}, Lmiui/view/springback/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    goto :goto_85

    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_93

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_93
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_9f

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_9f
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_ab

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_ab
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateTightTitle()V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateSandwichView()V

    return-void
.end method

.method private addTitleView(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->freeCollapseContainer(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method private addedCustomView()V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    sget v1, Lcom/miui/internal/R$id;->action_bar_expand_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_42

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->freeCollapseContainer(Z)Z

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_42
    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .registers 10

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mInnerExpandState:I

    const/16 v3, 0x14

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v2, v4, :cond_43

    cmpl-float v2, v0, v5

    if-lez v2, :cond_20

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseAnimHideConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    goto :goto_27

    :cond_20
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseAnimShowConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v2, v1, v6, v6, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    :goto_27
    move v2, v0

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    if-eqz v3, :cond_2d

    const/4 v2, 0x0

    :cond_2d
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableAnimConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v3, v2, v6, v6, v5}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_42

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3e

    move v1, v6

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x4

    :goto_3f
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_42
    goto :goto_6a

    :cond_43
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mInnerExpandState:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5a

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v1, v5, v6, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    if-eqz v2, :cond_54

    const/4 v1, 0x0

    :cond_54
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v1, v6, v6}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_69

    :cond_5a
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mInnerExpandState:I

    if-nez v2, :cond_69

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v1, v6, v6}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v1, v5, v6, v6}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_6a

    :cond_69
    :goto_69
    nop

    :goto_6a
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v2}, Lmiui/view/springback/SpringBackLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v4

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8b

    neg-int v1, v1

    if-gtz v1, :cond_92

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v1, v6}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setTransparent(II)V

    goto :goto_92

    :cond_8b
    if-ltz v1, :cond_92

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v1, v6}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setTransparent(II)V

    :cond_92
    :goto_92
    return-void
.end method

.method private canTitleBeShown()Z
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_a

    goto :goto_31

    :cond_a
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isResizable()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getExpandState()I

    move-result v3

    if-eqz v3, :cond_2f

    :cond_2b
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_30

    :cond_2f
    const/4 v1, 0x1

    :cond_30
    return v1

    :cond_31
    :goto_31
    return v1
.end method

.method private computeTitleCenterLayoutStart(Landroid/view/View;)I
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_1c

    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v5

    add-int/2addr v2, v5

    :cond_1c
    sub-int v4, v1, v2

    return v4
.end method

.method private configPresenters(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 5

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    goto :goto_1c

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    :goto_1c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method private freeCollapseContainer(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_43

    if-nez p1, :cond_23

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v4

    if-eqz v4, :cond_23

    return v3

    :cond_23
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v3}, Lmiui/view/springback/SpringBackLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lmiui/view/springback/SpringBackLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lmiui/view/springback/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    goto :goto_48

    :cond_43
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    return v1
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_8
    return-object v0
.end method

.method private getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .registers 3

    if-eqz p1, :cond_c

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_8
    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_42

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_27

    :try_start_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_3d
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    :cond_42
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .registers 5

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_48

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_43

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2d

    :try_start_12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :cond_43
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    :cond_48
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 5

    const/4 v0, 0x4

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_c
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_17
    return-void
.end method

.method private initExpandedHomeLayout()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_20
    return-void
.end method

.method private initHomeLayout()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :cond_30
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_41
    return-void
.end method

.method private initTitle()V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$layout;->action_bar_title_up:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1a
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_11a

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$layout;->action_bar_title_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/miui/internal/R$layout;->action_bar_title_expand_item:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_subtitle:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_subtitle:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleStyleRes:I

    if-eqz v2, :cond_89

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_89
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleStyleRes:I

    if-eqz v2, :cond_94

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_94
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a4

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a4
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    if-eqz v2, :cond_af

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_af
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleStyleRes:I

    if-eqz v2, :cond_ba

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_ba
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_d4

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d4
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x1

    if-eqz v2, :cond_dd

    move v2, v4

    goto :goto_de

    :cond_dd
    move v2, v1

    :goto_de
    iget v5, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_e6

    move v5, v4

    goto :goto_e7

    :cond_e6
    move v5, v1

    :goto_e7
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v5, :cond_ef

    if-eqz v2, :cond_f1

    move v3, v1

    goto :goto_f1

    :cond_ef
    const/16 v3, 0x8

    :cond_f1
    :goto_f1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v2, :cond_fc

    if-nez v5, :cond_fc

    move v6, v4

    goto :goto_fd

    :cond_fc
    move v6, v1

    :goto_fd
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_108

    if-nez v5, :cond_108

    move v6, v4

    goto :goto_109

    :cond_108
    move v6, v1

    :goto_109
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_113

    if-nez v5, :cond_113

    goto :goto_114

    :cond_113
    move v4, v1

    :goto_114
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateTightTitle()V

    :cond_11a
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lcom/miui/internal/widget/ActionBarView;->addTitleView(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Lcom/miui/internal/widget/ActionBarView$7;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$7;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_13d

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_140

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_140

    :cond_13d
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V

    :cond_140
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateSandwichView()V

    return-void
.end method

.method private isShowTitle()Z
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_20

    :cond_18
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_21

    :cond_20
    move v1, v2

    :cond_21
    return v1
.end method

.method private isSimpleCustomNavView()Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_19

    move-object v2, v1

    check-cast v2, Landroid/app/ActionBar$LayoutParams;

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    const/4 v3, 0x0

    if-nez v2, :cond_1e

    goto :goto_2e

    :cond_1e
    iget v4, v2, Landroid/app/ActionBar$LayoutParams;->gravity:I

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/miui/internal/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v4

    const v5, 0x800005

    if-ne v4, v5, :cond_2e

    const/4 v3, 0x1

    :cond_2e
    :goto_2e
    move v0, v3

    :cond_2f
    return v0
.end method

.method private isTitleCenter()Z
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleCenter:Z

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->isSimpleCustomNavView()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1e

    :cond_16
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private normalizeHorizontalGravity(IZ)I
    .registers 7

    const v0, 0x800007

    and-int/2addr v0, p1

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-nez v1, :cond_1f

    const/4 v1, 0x3

    const v2, 0x800005

    const v3, 0x800003

    if-ne v0, v1, :cond_18

    if-eqz p2, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    :goto_16
    move v0, v2

    goto :goto_1f

    :cond_18
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1f

    if-eqz p2, :cond_1e

    move v2, v3

    :cond_1e
    move v0, v2

    :cond_1f
    :goto_1f
    return v0
.end method

.method private onLayoutCollapseViews(ZIIII)V
    .registers 30

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingStart()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v7

    invoke-static/range {p0 .. p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    if-gtz v9, :cond_1d

    return-void

    :cond_1d
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_24

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    goto :goto_26

    :cond_24
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    :goto_26
    move-object v10, v1

    const/16 v11, 0x8

    if-eqz v10, :cond_3e

    invoke-virtual {v10}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_3e

    invoke-virtual {v10}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v1

    add-int v2, v0, v1

    invoke-virtual {v6, v10, v2, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_48

    :cond_3e
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v1, :cond_48

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_49

    :cond_48
    :goto_48
    nop

    :goto_49
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-nez v1, :cond_126

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isShowTitle()Z

    move-result v14

    if-eqz v14, :cond_b1

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v1, :cond_60

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    move v15, v0

    goto :goto_61

    :cond_60
    move v15, v0

    :goto_61
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    if-eqz v0, :cond_aa

    move v0, v15

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_7b

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Lcom/miui/internal/widget/ActionBarView;->computeTitleCenterLayoutStart(Landroid/view/View;)I

    move-result v0

    move/from16 v16, v0

    goto :goto_7d

    :cond_7b
    move/from16 v16, v0

    :goto_7d
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->canTitleBeShown()Z

    move-result v0

    iput-boolean v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleShowable:Z

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->updateTightTitle()V

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int v17, v16, v0

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v18

    sub-int v0, v9, v18

    div-int/2addr v0, v13

    add-int v19, v7, v0

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int v5, v19, v18

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    move v0, v15

    goto :goto_b1

    :cond_aa
    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0, v15, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v0, v15

    :cond_b1
    :goto_b1
    iget v1, v6, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    if-eq v1, v12, :cond_113

    if-eq v1, v13, :cond_b9

    goto/16 :goto_126

    :cond_b9
    const/4 v1, 0x0

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ne v2, v12, :cond_d6

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_d6

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    :cond_d6
    if-eqz v1, :cond_126

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/2addr v4, v13

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    div-int/2addr v5, v13

    if-eqz v14, :cond_f2

    iget v15, v6, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v4, v15

    sub-int/2addr v5, v15

    :cond_f2
    if-eqz v8, :cond_fa

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v5

    goto :goto_fb

    :cond_fa
    move v15, v4

    :goto_fb
    if-eqz v8, :cond_104

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v16

    sub-int v16, v16, v4

    goto :goto_106

    :cond_104
    move/from16 v16, v5

    :goto_106
    move/from16 v17, v16

    iget-object v12, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int v13, v7, v3

    move/from16 v11, v17

    invoke-virtual {v12, v15, v7, v11, v13}, Landroid/widget/FrameLayout;->layout(IIII)V

    move v0, v5

    goto :goto_126

    :cond_113
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_126

    if-eqz v14, :cond_11c

    iget v1, v6, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v0, v1

    :cond_11c
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    iget v2, v6, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_126
    :goto_126
    sub-int v1, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_145

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v6, :cond_145

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v6, v2, v1, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_145
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v2, :cond_153

    invoke-virtual {v6, v2, v1, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_153
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_174

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_174

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v3, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    sub-int v3, v1, v3

    invoke-virtual {v6, v2, v3, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    iget v3, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    :cond_174
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v2, :cond_18c

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_18c

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v6, v2, v1, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_18c
    const/4 v2, 0x0

    iget-object v3, v6, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v4, 0x10

    if-eqz v3, :cond_196

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_1a1

    :cond_196
    iget v3, v6, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a1

    iget-object v3, v6, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_1a1

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    :cond_1a1
    :goto_1a1
    if-eqz v2, :cond_2b0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_2b0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/app/ActionBar$LayoutParams;

    if-eqz v5, :cond_1b7

    move-object v5, v3

    check-cast v5, Landroid/app/ActionBar$LayoutParams;

    goto :goto_1b8

    :cond_1b7
    const/4 v5, 0x0

    :goto_1b8
    if-eqz v5, :cond_1bd

    iget v11, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_1c0

    :cond_1bd
    const v11, 0x800013

    :goto_1c0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v5, :cond_1d6

    invoke-virtual {v5}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v15

    add-int/2addr v0, v15

    invoke-virtual {v5}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v15

    sub-int/2addr v1, v15

    iget v13, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    iget v14, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    :cond_1d6
    const v15, 0x800007

    and-int/2addr v15, v11

    const/4 v4, 0x1

    if-ne v15, v4, :cond_1f9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v12

    const/16 v18, 0x2

    div-int/lit8 v4, v4, 0x2

    if-ge v4, v0, :cond_1ee

    const v15, 0x800003

    move-object/from16 v20, v3

    goto :goto_202

    :cond_1ee
    move-object/from16 v20, v3

    add-int v3, v4, v12

    if-le v3, v1, :cond_202

    const v3, 0x800005

    move v15, v3

    goto :goto_202

    :cond_1f9
    move-object/from16 v20, v3

    const/4 v3, -0x1

    if-ne v11, v3, :cond_202

    const v15, 0x800003

    goto :goto_203

    :cond_202
    :goto_202
    nop

    :goto_203
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingStart()I

    move-result v3

    invoke-direct {v6, v15, v8}, Lcom/miui/internal/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v4

    move/from16 v21, v3

    const/4 v3, 0x1

    if-eq v4, v3, :cond_222

    const v3, 0x800003

    if-eq v4, v3, :cond_220

    const v3, 0x800005

    if-eq v4, v3, :cond_21d

    move/from16 v3, v21

    goto :goto_22a

    :cond_21d
    sub-int v3, v1, v12

    goto :goto_22a

    :cond_220
    move v3, v0

    goto :goto_22a

    :cond_222
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v12

    const/4 v4, 0x2

    div-int/2addr v3, v4

    nop

    :goto_22a
    and-int/lit8 v4, v11, 0x70

    move/from16 v16, v0

    const/4 v0, -0x1

    if-ne v11, v0, :cond_233

    const/16 v4, 0x10

    :cond_233
    const/4 v0, 0x0

    move/from16 v19, v0

    const/16 v0, 0x10

    if-eq v4, v0, :cond_25d

    const/16 v0, 0x30

    if-eq v4, v0, :cond_257

    const/16 v0, 0x50

    if-eq v4, v0, :cond_245

    move/from16 v0, v19

    goto :goto_279

    :cond_245
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v17

    sub-int v0, v0, v17

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v0, v0, v17

    sub-int/2addr v0, v14

    goto :goto_279

    :cond_257
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v13

    goto :goto_279

    :cond_25d
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v21

    sub-int v17, v17, v21

    sub-int v21, v17, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v21, v21, v22

    const/16 v18, 0x2

    div-int/lit8 v19, v21, 0x2

    move/from16 v0, v19

    :goto_279
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    if-eqz v8, :cond_288

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v19

    sub-int v19, v19, v3

    sub-int v19, v19, v17

    goto :goto_28a

    :cond_288
    move/from16 v19, v3

    :goto_28a
    move/from16 v21, v19

    if-eqz v8, :cond_295

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v19

    sub-int v19, v19, v3

    goto :goto_297

    :cond_295
    add-int v19, v3, v17

    :goto_297
    move/from16 v22, v19

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v23, v1

    add-int v1, v0, v19

    move/from16 v19, v3

    move/from16 v3, v21

    move/from16 v21, v4

    move/from16 v4, v22

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/view/View;->layout(IIII)V

    move/from16 v0, v16

    move/from16 v1, v23

    :cond_2b0
    iget-object v3, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_2cc

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    iget-object v3, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iget-object v4, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v5, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v11, v3

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v4, v5, v11, v12, v3}, Landroid/widget/ProgressBar;->layout(IIII)V

    :cond_2cc
    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V

    :cond_2e
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_35
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3c
    return-void
.end method

.method private setTitleVisibility(Z)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_b

    move v3, v2

    goto :goto_c

    :cond_b
    move v3, v1

    :goto_c
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_17

    move v3, v2

    goto :goto_18

    :cond_17
    move v3, v1

    :goto_18
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_43

    if-eqz p1, :cond_40

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    const/4 v4, 0x1

    if-eqz v0, :cond_2a

    move v0, v4

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    iget v5, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_32

    goto :goto_33

    :cond_32
    move v4, v2

    :goto_33
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_3c

    if-eqz v0, :cond_3b

    move v1, v2

    goto :goto_3c

    :cond_3b
    move v1, v3

    :cond_3c
    :goto_3c
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    :cond_40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_43
    :goto_43
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateSandwichView()V

    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_d
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1a

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method private updateProgressBars(I)V
    .registers 8

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_29

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_1f

    if-ge v4, v2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v2, 0x4

    goto :goto_20

    :cond_1f
    :goto_1f
    move v2, v3

    :goto_20
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_23
    if-eqz v0, :cond_5a

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5a

    :cond_29
    const/4 v4, -0x2

    if-ne p1, v4, :cond_39

    const/16 v2, 0x8

    if-eqz v1, :cond_33

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_33
    if-eqz v0, :cond_5a

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5a

    :cond_39
    const/4 v4, -0x3

    if-ne p1, v4, :cond_41

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_5a

    :cond_41
    const/4 v4, -0x4

    if-ne p1, v4, :cond_48

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_5a

    :cond_48
    if-ltz p1, :cond_5a

    if-gt p1, v2, :cond_5a

    add-int/lit8 v3, p1, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge p1, v2, :cond_57

    invoke-direct {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarView;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_5a

    :cond_57
    invoke-direct {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarView;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method private updateSandwichView()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateSingleContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateSingleContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateSingleContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private updateSingleContainer(Landroid/view/ViewGroup;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_21

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_21
    return-void
.end method

.method private updateTightTitle()V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    const/16 v3, 0x8

    if-nez v1, :cond_29

    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v4, :cond_27

    goto :goto_29

    :cond_27
    move v4, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v4, v3

    :goto_2a
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    if-eqz v5, :cond_31

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_31
    if-nez v1, :cond_3f

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    iget-boolean v5, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v5, :cond_40

    :cond_3f
    move v2, v3

    :cond_40
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_47

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_47
    return-void
.end method

.method private updateTitleCenter()V
    .registers 7

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x800003

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    instance-of v4, v1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_23

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1d

    move v5, v2

    goto :goto_1e

    :cond_1d
    move v5, v3

    :goto_1e
    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_23
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    move v5, v2

    goto :goto_2a

    :cond_29
    move v5, v3

    :goto_2a
    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_36
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_4a

    if-eqz v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    :goto_3e
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_4a
    return-void
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public collapseActionView()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    :goto_8
    nop

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_e
    return-void
.end method

.method protected createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;
    .registers 9

    new-instance v6, Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$layout;->action_menu_layout:I

    sget v3, Lcom/miui/internal/R$layout;->action_menu_item_layout:I

    sget v4, Lcom/miui/internal/R$layout;->action_bar_expanded_menu_layout:I

    sget v5, Lcom/miui/internal/R$layout;->action_bar_list_menu_item_layout:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    sget v1, Lcom/miui/internal/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setId(I)V

    return-object v0
.end method

.method protected createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 3

    new-instance v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/widget/ActionBarView$1;)V

    return-object v0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .registers 1

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_6
    return-object p1
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

.method public bridge synthetic getContentHeight()I
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getEndView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    return-object v0
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

.method public getNavigationMode()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSplitActionBarHeight(Z)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    goto :goto_18

    :cond_e
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    :cond_18
    :goto_18
    return v0
.end method

.method public getStartView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hideImmersionMore()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V
    .registers 6

    const-string v0, "ActionBarView"

    if-gtz p1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to initialize invalid layout for immersion more button: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_25

    const-string v1, "Don\'t show immersion menu button for custom action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    if-nez v1, :cond_2d

    const-string v1, "Don\'t show immersion menu button for null display option"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    sget v1, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_51

    new-instance v1, Lcom/miui/internal/widget/ActionBarView$6;

    invoke-direct {v1, p0, p2, v0}, Lcom/miui/internal/widget/ActionBarView$6;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_51
    return-void
.end method

.method public initIndeterminateProgress()V
    .registers 5

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiui/R$attr;->actionBarIndeterminateProgressStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    sget v1, Lcom/miui/internal/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initProgress()V
    .registers 5

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiui/R$attr;->actionBarProgressStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    sget v1, Lcom/miui/internal/R$id;->progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isCollapsed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

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

.method public isSplitActionBar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTightTitleWithEmbeddedTabs()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public onActionModeEnd(Z)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getExpandState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    goto :goto_2a

    :cond_1a
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getExpandState()I

    move-result v0

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    :cond_2a
    :goto_2a
    if-eqz p1, :cond_3b

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_3b
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    if-eqz p1, :cond_57

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_49

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_49
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_50

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_50
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_57

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_57
    return-void
.end method

.method public onActionModeStart(ZZ)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    if-eqz p2, :cond_3c

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1e
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_25

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_25
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_2c

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_3c
    return-void
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiui/animation/IStateStyle;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/animation/IStateStyle;->cancel()V

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_14

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    goto :goto_18

    :cond_14
    if-nez p1, :cond_18

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    :cond_18
    :goto_18
    new-instance v2, Lmiui/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [Lmiui/animation/listener/TransitionListener;

    new-instance v4, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;

    invoke-direct {v4, p0, p2}, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;-><init>(Lcom/miui/internal/widget/ActionBarView;I)V

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p2, v1, :cond_34

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    goto :goto_37

    :cond_34
    if-nez p2, :cond_37

    const/4 v3, 0x0

    :cond_37
    :goto_37
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v4}, Lmiui/animation/Folme;->useValue([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v4

    iget v5, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    aput-object v2, v1, v0

    invoke-interface {v4, v5, v1}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiui/animation/IStateStyle;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_17

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v3, :cond_17

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_17

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_17
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_29

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_29

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_29
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3b

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v3, :cond_3b

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3b

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3b
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

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

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_14
    if-eq p2, v1, :cond_1b

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_1b
    if-eqz p2, :cond_22

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_22
    if-ne p2, v1, :cond_2b

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_3e

    :cond_2b
    if-nez p2, :cond_35

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3e

    :cond_35
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    :goto_3e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 18

    move-object v6, p0

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v0}, Lmiui/view/springback/SpringBackLayout;->getMeasuredHeight()I

    move-result v7

    iget v0, v6, Lcom/miui/internal/widget/ActionBarView;->mInnerExpandState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget v0, v6, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    move v8, v0

    goto :goto_1f

    :cond_10
    iget v0, v6, Lcom/miui/internal/widget/ActionBarView;->mInnerExpandState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    move v8, v0

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    move v8, v0

    :goto_1f
    sub-int v9, p5, p3

    sub-int v10, v9, v7

    sub-int v11, v10, v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView;->onLayoutCollapseViews(ZIIII)V

    move v3, v11

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView;->onLayoutExpandViews(ZIIII)V

    move v3, v10

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView;->onLayoutSecondaryViews(ZIIII)V

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v8

    int-to-float v0, v0

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->animateLayoutWithProcess(F)V

    return-void
.end method

.method protected onLayoutExpandViews(ZIIII)V
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_88

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual {v0, p2, v1, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView;

    :cond_37
    if-eqz v0, :cond_57

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v2, p4, v2

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    sub-int v1, v2, v4

    :cond_4b
    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->layout(IIII)V

    :cond_57
    move v1, p2

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int v1, p4, v2

    :cond_66
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int v4, p5, p3

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_88
    return-void
.end method

.method protected onLayoutSecondaryViews(ZIIII)V
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Lmiui/view/springback/SpringBackLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v0}, Lmiui/view/springback/SpringBackLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    add-int/2addr v1, p2

    invoke-virtual {v0}, Lmiui/view/springback/SpringBackLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v2, p5, v2

    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v3, p4, v3

    invoke-virtual {v0, v1, v2, v3, p5}, Lmiui/view/springback/SpringBackLayout;->layout(IIII)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v1}, Lmiui/view/springback/SpringBackLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_42

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v1, v3}, Lmiui/view/springback/SpringBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v1, v3}, Lmiui/view/springback/SpringBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView;

    :cond_42
    if-eqz v0, :cond_68

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_61

    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p4, v4

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v5

    sub-int v1, v4, v5

    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v2, p4, v4

    :cond_61
    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->layout(IIII)V

    :cond_68
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v2}, Lmiui/view/springback/SpringBackLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p5, p3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v3, p4, v3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v4}, Lmiui/view/springback/SpringBackLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lmiui/view/springback/SpringBackLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_87
    return-void
.end method

.method protected onMeasure(II)V
    .registers 34

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const/16 v4, 0x8

    if-ge v3, v1, :cond_27

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v4, :cond_24

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-ne v5, v4, :cond_22

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_24

    :cond_22
    add-int/lit8 v2, v2, 0x1

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_27
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_31

    invoke-virtual {v0, v5, v5}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    iput-boolean v3, v0, Lcom/miui/internal/widget/ActionBarView;->mIsCollapsed:Z

    return-void

    :cond_31
    iput-boolean v5, v0, Lcom/miui/internal/widget/ActionBarView;->mIsCollapsed:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    if-lez v7, :cond_3e

    iget v7, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    goto :goto_42

    :cond_3e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    :goto_42
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingStart()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingEnd()I

    move-result v10

    sub-int v11, v7, v8

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/high16 v14, -0x80000000

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    sub-int v16, v6, v9

    sub-int v3, v16, v10

    div-int/lit8 v16, v3, 0x2

    move/from16 v17, v16

    move/from16 v18, v9

    move/from16 v19, v10

    iget-object v12, v0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v12, :cond_7d

    invoke-virtual {v0, v12, v3, v15, v5}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v12, v0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v18, v18, v12

    :cond_7d
    iget-object v12, v0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v12, :cond_8d

    invoke-virtual {v0, v12, v3, v15, v5}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v12, v0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v19, v19, v12

    :cond_8d
    iget-object v12, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v12, :cond_94

    iget-object v12, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    goto :goto_96

    :cond_94
    iget-object v12, v0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    :goto_96
    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v5, :cond_9f

    if-eqz v12, :cond_9f

    invoke-virtual {v12, v4}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    :cond_9f
    if-eqz v12, :cond_e2

    invoke-virtual {v12}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_e2

    invoke-virtual {v12}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_b4

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_bc

    :cond_b4
    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_bc
    invoke-virtual {v12, v4, v13}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measure(II)V

    invoke-virtual {v12}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v20

    add-int v14, v14, v20

    move/from16 v20, v2

    sub-int v2, v3, v14

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v22, v4

    sub-int v4, v2, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v18, v18, v14

    move v3, v2

    move/from16 v2, v16

    goto :goto_ea

    :cond_e2
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v2, v16

    move/from16 v3, v21

    :goto_ea
    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_111

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, v0, :cond_111

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v15, v5}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v17, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v4

    add-int v19, v19, v4

    :cond_111
    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x2

    if-eqz v4, :cond_140

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v4

    const/16 v14, 0x8

    if-eq v4, v14, :cond_140

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v14, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v14, v5

    invoke-virtual {v0, v4, v3, v15, v14}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v17, v4

    iget v14, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v14, v5

    sub-int/2addr v4, v14

    const/4 v14, 0x0

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    add-int v19, v19, v4

    :cond_140
    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v4, :cond_16c

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v14, 0x8

    if-eq v4, v14, :cond_16c

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v0, v4, v3, v15, v14}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v17, v4

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v19, v19, v4

    move/from16 v4, v17

    move/from16 v14, v19

    goto :goto_170

    :cond_16c
    move/from16 v4, v17

    move/from16 v14, v19

    :goto_170
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isShowTitle()Z

    move-result v16

    if-eqz v16, :cond_179

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->updateTitleCenter()V

    :cond_179
    const/16 v17, 0x0

    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_182

    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_191

    :cond_182
    iget v5, v0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_18f

    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v5, :cond_18f

    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto :goto_191

    :cond_18f
    move-object/from16 v5, v17

    :goto_191
    move/from16 v17, v9

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-nez v9, :cond_19f

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v9, :cond_19c

    goto :goto_19f

    :cond_19c
    const/16 v9, 0x8

    goto :goto_1a9

    :cond_19f
    :goto_19f
    if-eqz v5, :cond_1a7

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a9

    :cond_1a7
    const/16 v9, 0x8

    :goto_1a9
    if-eqz v5, :cond_26a

    move/from16 v21, v10

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v9, :cond_25f

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/miui/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/app/ActionBar$LayoutParams;

    if-eqz v10, :cond_1c3

    move-object v10, v9

    check-cast v10, Landroid/app/ActionBar$LayoutParams;

    goto :goto_1c4

    :cond_1c3
    const/4 v10, 0x0

    :goto_1c4
    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz v10, :cond_1db

    move-object/from16 v24, v12

    iget v12, v10, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v25, v15

    iget v15, v10, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    add-int v22, v12, v15

    iget v12, v10, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    iget v15, v10, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int v23, v12, v15

    goto :goto_1df

    :cond_1db
    move-object/from16 v24, v12

    move/from16 v25, v15

    :goto_1df
    iget v12, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    const/4 v15, -0x2

    if-gtz v12, :cond_1e7

    const/high16 v12, -0x80000000

    goto :goto_1f0

    :cond_1e7
    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v12, v15, :cond_1ee

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_1f0

    :cond_1ee
    const/high16 v12, -0x80000000

    :goto_1f0
    nop

    iget v15, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v15, :cond_1fc

    iget v15, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_1fd

    :cond_1fc
    move v15, v11

    :goto_1fd
    sub-int v15, v15, v23

    move/from16 v27, v11

    const/4 v11, 0x0

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v7

    const/4 v7, -0x2

    if-eq v11, v7, :cond_210

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_212

    :cond_210
    const/high16 v7, -0x80000000

    :goto_212
    nop

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v11, :cond_21e

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_21f

    :cond_21e
    move v11, v3

    :goto_21f
    sub-int v11, v11, v22

    move/from16 v26, v8

    const/4 v8, 0x0

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eqz v10, :cond_22d

    iget v8, v10, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_230

    :cond_22d
    const v8, 0x800013

    :goto_230
    const v29, 0x800007

    and-int v8, v8, v29

    move-object/from16 v29, v10

    const/4 v10, 0x1

    if-ne v8, v10, :cond_249

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v30, v8

    const/4 v8, -0x1

    if-ne v10, v8, :cond_24b

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v10, 0x2

    mul-int/lit8 v11, v8, 0x2

    goto :goto_24b

    :cond_249
    move/from16 v30, v8

    :cond_24b
    :goto_24b
    nop

    invoke-static {v11, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v15, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v5, v8, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v8, v22, v8

    sub-int/2addr v3, v8

    goto :goto_276

    :cond_25f
    move/from16 v28, v7

    move/from16 v26, v8

    move/from16 v27, v11

    move-object/from16 v24, v12

    move/from16 v25, v15

    goto :goto_276

    :cond_26a
    move/from16 v28, v7

    move/from16 v26, v8

    move/from16 v21, v10

    move/from16 v27, v11

    move-object/from16 v24, v12

    move/from16 v25, v15

    :goto_276
    iget-object v7, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v7, :cond_2cb

    if-eqz v16, :cond_2cb

    iget v7, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v8, :cond_298

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v3, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v8, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v18, v18, v8

    move/from16 v8, v18

    goto :goto_29a

    :cond_298
    move/from16 v8, v18

    :goto_29a
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isTitleCenter()Z

    move-result v9

    if-eqz v9, :cond_2c2

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    mul-int/lit8 v11, v9, 0x2

    sub-int v11, v6, v11

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v11, v7}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v10, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v3, v10

    move/from16 v18, v8

    goto :goto_2cb

    :cond_2c2
    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v3, v7, v10}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    move/from16 v18, v8

    :cond_2cb
    :goto_2cb
    iget-object v7, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v8, v0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v8, v6, v8

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v7, v8, v10}, Landroid/widget/FrameLayout;->measure(II)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    if-eqz v9, :cond_30d

    invoke-virtual {v9}, Lmiui/view/springback/SpringBackLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_30d

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v9}, Lmiui/view/springback/SpringBackLayout;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_30d

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    const/4 v10, 0x0

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lmiui/view/springback/SpringBackLayout;->measure(II)V

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v9}, Lmiui/view/springback/SpringBackLayout;->getMeasuredWidth()I

    move-result v7

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v9}, Lmiui/view/springback/SpringBackLayout;->getMeasuredHeight()I

    move-result v8

    :cond_30d
    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_3a6

    iget v9, v0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_38a

    const/4 v10, 0x2

    if-eq v9, v10, :cond_31b

    goto/16 :goto_3a6

    :cond_31b
    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v9, :cond_346

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, v0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/miui/internal/R$integer;->action_bar_tab_layout_weight:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iget-object v11, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-nez v10, :cond_33d

    const/high16 v12, -0x80000000

    goto :goto_33f

    :cond_33d
    const/high16 v12, 0x40000000    # 2.0f

    :goto_33f
    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v11, v12, v13}, Lcom/miui/internal/widget/ScrollingTabContainerView;->measure(II)V

    :cond_346
    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v9, :cond_367

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iget v10, v0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v11, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/high16 v12, -0x80000000

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v11, v15, v12}, Lcom/miui/internal/widget/ScrollingTabContainerView;->measure(II)V

    :cond_367
    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v9, :cond_3a6

    iget v9, v0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    sub-int v9, v6, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v11, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/high16 v12, -0x80000000

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v11, v15, v10}, Lcom/miui/internal/widget/ScrollingTabContainerView;->measure(II)V

    goto :goto_3a6

    :cond_38a
    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_3a6

    iget v9, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    if-eqz v16, :cond_394

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    :cond_394
    sub-int v10, v3, v9

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v10, v0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    const/high16 v11, -0x80000000

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v12, v13}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_3a6
    :goto_3a6
    iget v9, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v9, :cond_3c2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3ac
    if-ge v10, v1, :cond_3be

    invoke-virtual {v0, v10}, Lcom/miui/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v12, v12, v26

    if-le v12, v9, :cond_3bb

    move v9, v12

    :cond_3bb
    add-int/lit8 v10, v10, 0x1

    goto :goto_3ac

    :cond_3be
    invoke-virtual {v0, v6, v9}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_3eb

    :cond_3c2
    add-int v9, v28, v8

    iput v9, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget v9, v0, Lcom/miui/internal/widget/ActionBarView;->mInnerExpandState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3d4

    iget v9, v0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    add-int v9, v28, v9

    add-int/2addr v9, v8

    invoke-virtual {v0, v6, v9}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_3eb

    :cond_3d4
    iget v9, v0, Lcom/miui/internal/widget/ActionBarView;->mInnerExpandState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3e6

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    add-int v9, v28, v9

    add-int/2addr v9, v8

    invoke-virtual {v0, v6, v9}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_3eb

    :cond_3e6
    add-int v9, v28, v8

    invoke-virtual {v0, v6, v9}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    :goto_3eb
    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v9, :cond_412

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_412

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v10, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    sub-int v10, v6, v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/ProgressBar;->measure(II)V

    :cond_412
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 13

    if-lez p3, :cond_3a

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    if-le v0, v1, :cond_3a

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_21

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    sub-int/2addr v2, p3

    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    aget v2, p4, v3

    add-int/2addr v2, p3

    aput v2, p4, v3

    goto :goto_2f

    :cond_21
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    aget v4, p4, v3

    neg-int v5, v2

    add-int/2addr v4, v5

    aput v4, p4, v3

    :goto_2f
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    if-eq v2, v1, :cond_3a

    sub-int v2, v1, v2

    aput v2, p6, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    :cond_3a
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 15

    if-gez p5, :cond_56

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_56

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p5

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-gt v1, v2, :cond_2f

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    sub-int/2addr v2, p5

    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    aget v2, p7, v3

    add-int/2addr v2, p5

    aput v2, p7, v3

    goto :goto_4b

    :cond_2f
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    aget v4, p7, v3

    neg-int v5, v2

    add-int/2addr v4, v5

    aput v4, p7, v3

    :goto_4b
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    if-eq v2, v0, :cond_56

    sub-int v2, v0, v2

    aput v2, p8, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    :cond_56
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 7

    const/4 v0, 0x1

    if-nez p4, :cond_6

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTouchScrolling:Z

    goto :goto_8

    :cond_6
    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    :goto_8
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_15
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/widget/ActionBarView$SavedState;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/miui/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_21

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_21
    iget-boolean v1, v0, Lcom/miui/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->postShowOverflowMenu()V

    :cond_28
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_1b

    iget-object v2, v2, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    :cond_1b
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 8

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    return v1

    :cond_13
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->isShowTitle()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isResizable()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 9

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTouchScrolling:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTouchScrolling:Z

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    if-nez v1, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_e
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    if-eqz v1, :cond_15

    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    const/4 v0, 0x1

    :cond_15
    :goto_15
    if-eqz v0, :cond_81

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    if-ne v1, v3, :cond_23

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-eq v1, v3, :cond_7c

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-ne v1, v3, :cond_3d

    goto :goto_7c

    :cond_3d
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-le v1, v3, :cond_66

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_76

    :cond_66
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    :goto_76
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_81

    :cond_7c
    :goto_7c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    return-void

    :cond_81
    :goto_81
    return-void
.end method

.method public onWindowHide()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowHide()V

    return-void
.end method

.method public onWindowShow()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowShow()V

    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .registers 1

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-void
.end method

.method public setCollapsable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .registers 5

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_12
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p1, :cond_1f

    if-eqz v0, :cond_1f

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->addedCustomView()V

    goto :goto_26

    :cond_1f
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    :goto_26
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 12

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_8

    :cond_6
    xor-int v1, p1, v0

    :goto_8
    move v0, v1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v0, 0x1f

    const/4 v2, 0x0

    if-eqz v1, :cond_e4

    and-int/lit8 v1, p1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_18

    move v1, v4

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    const/16 v5, 0x8

    if-eqz v1, :cond_60

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initHomeLayout()V

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v7, :cond_28

    move v7, v3

    goto :goto_29

    :cond_28
    move v7, v5

    :goto_29
    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_41

    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_36

    move v6, v4

    goto :goto_37

    :cond_36
    move v6, v3

    :goto_37
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v6}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    if-eqz v6, :cond_41

    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    :cond_41
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_67

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_51

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_51

    move v7, v4

    goto :goto_52

    :cond_51
    move v7, v3

    :goto_52
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v7, :cond_58

    move-object v9, v6

    goto :goto_5c

    :cond_58
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_5c
    invoke-virtual {v8, v9}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_67

    :cond_60
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v6, :cond_67

    invoke-virtual {p0, v6}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_67
    :goto_67
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_8f

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_73

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    goto :goto_8f

    :cond_73
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateSandwichView()V

    :cond_8f
    :goto_8f
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_ca

    and-int/lit8 v6, v0, 0x6

    if-eqz v6, :cond_ca

    iget v6, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_9f

    move v6, v4

    goto :goto_a0

    :cond_9f
    move v6, v3

    :goto_a0
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_b4

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v1, :cond_b1

    if-eqz v6, :cond_b0

    move v5, v3

    goto :goto_b1

    :cond_b0
    move v5, v7

    :cond_b1
    :goto_b1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_b4
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_bc

    if-eqz v6, :cond_bc

    move v7, v4

    goto :goto_bd

    :cond_bc
    move v7, v3

    :goto_bd
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_c7

    if-eqz v6, :cond_c7

    move v3, v4

    :cond_c7
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_ca
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_e0

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_e0

    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_dd

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->addedCustomView()V

    goto :goto_e0

    :cond_dd
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_e0
    :goto_e0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    goto :goto_e7

    :cond_e4
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->invalidate()V

    :goto_e7
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v1, :cond_11e

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f7

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_11e

    :cond_f7
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_10d

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_11e

    :cond_10d
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_11e
    :goto_11e
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_9
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .registers 6

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/ActionBarView;->addTabsContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    :cond_11
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_7
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_11

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method public setExpandState(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(I)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    sget v1, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    :cond_1e
    return-void
.end method

.method public bridge synthetic setExpandState(IZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_d
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    :cond_8
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_d
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_3e

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3e

    :cond_15
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3e

    :cond_2d
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_1d

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1d

    :cond_16
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_34
    return-void
.end method

.method public setLogo(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_17

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    :cond_13
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/view/menu/MenuBuilder;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2b
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-nez v1, :cond_3b

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarView;->createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    :cond_3b
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_71

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->configPresenters(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6d

    if-eq v3, p0, :cond_6d

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6d
    invoke-virtual {p0, v2, v1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d3

    :cond_71
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v2, :cond_96

    const/16 v2, 0x11

    goto :goto_98

    :cond_96
    const/16 v2, 0x50

    :goto_98
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->configPresenters(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_d0

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_b8

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eq v3, v4, :cond_b8

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b8
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/internal/view/menu/ActionMenuView;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v2, v6, v1}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget v4, Lcom/miui/internal/R$id;->expanded_menu:I

    invoke-virtual {v2, v4}, Lcom/miui/internal/view/menu/ActionMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_cf

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    :cond_cf
    goto :goto_d3

    :cond_d0
    invoke-virtual {v2, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_d3
    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    return-void
.end method

.method public setNavigationMode(I)V
    .registers 7

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    if-eq p1, v0, :cond_7b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_f

    :cond_8
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_f

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_f
    :goto_f
    if-eq p1, v1, :cond_27

    const/4 v1, 0x2

    if-eq p1, v1, :cond_15

    goto :goto_76

    :cond_15
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_76

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_76

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/internal/widget/ActionBarView;->addTabsContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    goto :goto_76

    :cond_27
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_5a

    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v3, 0x10102d7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$layout;->action_bar_view_list_nav_layout:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5a
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v1, v2, :cond_69

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_69
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    nop

    :cond_76
    :goto_76
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    :cond_7b
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    add-int/lit8 v0, p1, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, -0x3

    goto :goto_5

    :cond_4
    const/4 v0, -0x4

    :goto_5
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x2

    :goto_5
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x2

    :goto_5
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_83

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    if-eqz p1, :cond_2e

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    :cond_24
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3c

    :cond_2e
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_3c
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->requestLayout()V

    :cond_41
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_4c

    move v2, v1

    goto :goto_4e

    :cond_4c
    const/16 v2, 0x8

    :goto_4e
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_51
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_80

    if-nez p1, :cond_67

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_80

    :cond_67
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

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

.method public setStartView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_7
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_11

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 6

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_45

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v2

    :goto_18
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_21

    move v3, v1

    goto :goto_22

    :cond_21
    move v3, v2

    :goto_22
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_40

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3e
    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    nop

    :goto_41
    move v0, v1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V

    :cond_45
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUserTitle:Z

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showImmersionMore()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_a
    return v1
.end method

.method public bridge synthetic showOverflowMenu()Z
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
