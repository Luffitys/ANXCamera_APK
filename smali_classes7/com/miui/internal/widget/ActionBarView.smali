.class public Lcom/miui/internal/widget/ActionBarView;
.super Lcom/miui/internal/widget/AbsActionBarView;
.source ""


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
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleShowable:Z

    new-instance v1, Lcom/miui/internal/widget/ActionBarView$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarView$1;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v1, Lcom/miui/internal/widget/ActionBarView$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarView$2;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/miui/internal/widget/ActionBarView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarView$3;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/miui/internal/widget/ActionBarView$4;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarView$4;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/miui/internal/widget/ActionBarView$5;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarView$5;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    new-instance v1, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    new-instance v1, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    new-instance v1, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-direct {v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTouchScrolling:Z

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiui/animation/IStateStyle;

    new-instance v2, Lcom/miui/internal/widget/ActionBarView$8;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ActionBarView$8;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$dimen;->action_bar_title_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_collapse_container:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_movable_container:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$dimen;->action_bar_title_top_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget v5, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/internal/R$dimen;->action_bar_title_bottom_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v2, Lmiui/view/springback/SpringBackLayout;

    invoke-direct {v2, p1}, Lmiui/view/springback/SpringBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_secondary_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiui/view/springback/SpringBackLayout;->setScrollOrientation(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    sget-object v0, Lmiui/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lmiui/R$styleable;->ActionBar_android_navigationMode:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    sget v2, Lmiui/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    sget v2, Lmiui/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    sget v2, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleCenter:Z

    sget v2, Lmiui/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    sget v2, Lmiui/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lmiui/R$styleable;->ActionBar_android_homeLayout:I

    sget v4, Lcom/miui/internal/R$layout;->action_bar_home:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeResId:I

    sget v3, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleStyleRes:I

    sget v3, Lmiui/R$styleable;->ActionBar_android_subtitleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    sget v3, Lmiui/R$styleable;->ActionBar_miui_expandTitleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleStyleRes:I

    sget v3, Lmiui/R$styleable;->ActionBar_miui_expandSubtitleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleStyleRes:I

    sget v3, Lmiui/R$styleable;->ActionBar_android_progressBarPadding:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    sget v3, Lmiui/R$styleable;->ActionBar_android_itemPadding:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    sget v3, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    sget v3, Lmiui/R$styleable;->ActionBar_android_customNavigationLayout:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    iput v1, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    :cond_0
    sget v2, Lmiui/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v7, Lcom/miui/internal/view/menu/ActionMenuItem;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    new-instance v7, Lcom/miui/internal/view/menu/ActionMenuItem;

    const v3, 0x1020016

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/internal/widget/ActionBarView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/internal/widget/ActionBarView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/internal/widget/ActionBarView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/miui/internal/widget/ActionBarView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/internal/widget/ActionBarView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    return p0
.end method

.method static synthetic access$2400(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/internal/widget/ActionBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarView;->mTempResizable:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/miui/internal/widget/ActionBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTempResizable:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/internal/widget/ActionBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initExpandedHomeLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method private addTabsContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object p3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result p1

    if-nez p1, :cond_2

    instance-of p1, p2, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Lmiui/view/springback/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    const/4 p3, -0x2

    if-eqz p1, :cond_4

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_5

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_6

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateTightTitle()V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateSandwichView()V

    return-void
.end method

.method private addTitleView(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->freeCollapseContainer(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private addedCustomView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    sget v1, Lcom/miui/internal/R$id;->action_bar_expand_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->freeCollapseContainer(Z)Z

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .locals 8

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    iget v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    const/16 v3, 0x14

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v2, v4, :cond_3

    cmpl-float v2, v0, v5

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v7, p0, Lcom/miui/internal/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v3, p0, Lcom/miui/internal/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v2, v1, v6, v6, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    :goto_0
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    if-eqz v2, :cond_1

    move v0, v5

    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v3, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMovableAnimConfig:Lmiui/animation/base/AnimConfig;

    invoke-virtual {v2, v0, v6, v6, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->animTo(FIILmiui/animation/base/AnimConfig;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v5, v6, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    if-eqz v0, :cond_4

    move v1, v5

    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v6, v6}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v6, v6}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v5, v6, v6}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, v4

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    neg-int p1, p1

    if-gtz p1, :cond_8

    goto :goto_3

    :cond_7
    if-ltz p1, :cond_8

    :goto_3
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, p1, v6}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setTransparent(II)V

    :cond_8
    return-void
.end method

.method private canTitleBeShown()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
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

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getExpandState()I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    cmpg-float p0, v0, v2

    if-gtz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private computeTitleCenterLayoutStart(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p1

    add-int/2addr v1, p1

    :cond_0
    sub-int/2addr p0, v1

    return p0
.end method

.method private configPresenters(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method private freeCollapseContainer(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Lmiui/view/springback/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return v1
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method private getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x1020016

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 1

    const/4 p0, 0x4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initExpandedHomeLayout()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_0

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

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initHomeLayout()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_2

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

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private initTitle()V
    .locals 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$layout;->action_bar_title_up:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

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

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/miui/internal/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/miui/internal/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleStyleRes:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleStyleRes:I

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_4
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleStyleRes:I

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_0

    :cond_7
    move v0, v1

    :goto_0
    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_1

    :cond_8
    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_9

    if-eqz v0, :cond_a

    move v2, v1

    goto :goto_2

    :cond_9
    const/16 v2, 0x8

    :cond_a
    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_b

    if-nez v4, :cond_b

    move v5, v3

    goto :goto_3

    :cond_b
    move v5, v1

    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    if-nez v4, :cond_c

    move v5, v3

    goto :goto_4

    :cond_c
    move v5, v1

    :goto_4
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    if-nez v4, :cond_d

    goto :goto_5

    :cond_d
    move v3, v1

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateTightTitle()V

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lcom/miui/internal/widget/ActionBarView;->addTitleView(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Lcom/miui/internal/widget/ActionBarView$7;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$7;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V

    :cond_10
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateSandwichView()V

    return-void
.end method

.method private isShowTitle()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private isSimpleCustomNavView()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/ActionBar$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/miui/internal/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result p0

    const v0, 0x800005

    if-ne p0, v0, :cond_1

    :cond_3
    :goto_1
    return v1
.end method

.method private isTitleCenter()Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleCenter:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->isSimpleCustomNavView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private normalizeHorizontalGravity(IZ)I
    .locals 2

    const p0, 0x800007

    and-int/2addr p0, p1

    const/high16 p1, 0x800000

    and-int/2addr p1, p0

    if-nez p1, :cond_3

    const/4 p1, 0x3

    const v0, 0x800005

    const v1, 0x800003

    if-ne p0, p1, :cond_2

    if-eqz p2, :cond_1

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    if-ne p0, p1, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_3
    :goto_1
    return p0
.end method

.method private onLayoutCollapseViews(ZIIII)V
    .locals 17

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-static/range {p0 .. p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    if-gtz v9, :cond_0

    return-void

    :cond_0
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    goto :goto_0

    :cond_1
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    :goto_0
    const/16 v10, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_2

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v2

    add-int v3, v0, v2

    invoke-virtual {v6, v1, v3, v7, v9}, Lcom/miui/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/miui/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    :cond_3
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-nez v1, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isShowTitle()Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/miui/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    move v5, v0

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_5

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {v6, v0}, Lcom/miui/internal/widget/ActionBarView;->computeTitleCenterLayoutStart(Landroid/view/View;)I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->canTitleBeShown()Z

    move-result v0

    iput-boolean v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleShowable:Z

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->updateTightTitle()V

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v1, v9, v0

    div-int/2addr v1, v14

    add-int v3, v7, v1

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int v16, v3, v0

    move-object/from16 v0, p0

    move v11, v5

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    move v0, v11

    goto :goto_3

    :cond_6
    move v11, v5

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0, v11, v7, v9}, Lcom/miui/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v0, v11

    :cond_7
    :goto_3
    iget v1, v6, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    if-eq v1, v12, :cond_d

    if-eq v1, v14, :cond_8

    goto :goto_7

    :cond_8
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v1, v12, :cond_9

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_9

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    div-int/2addr v3, v14

    if-eqz v15, :cond_a

    iget v0, v6, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v2, v0

    sub-int/2addr v3, v0

    :cond_a
    move v0, v3

    if-eqz v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    if-eqz v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    goto :goto_6

    :cond_c
    move v4, v0

    :goto_6
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int/2addr v1, v7

    invoke-virtual {v2, v3, v7, v4, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_7

    :cond_d
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_f

    if-eqz v15, :cond_e

    iget v1, v6, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/miui/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    iget v2, v6, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_f
    :goto_7
    sub-int v1, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v6, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v6, :cond_10

    iget-object v2, v6, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v6, v2, v1, v7, v9}, Lcom/miui/internal/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    iget-object v2, v6, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_10
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v2, :cond_11

    invoke-virtual {v6, v2, v1, v7, v9}, Lcom/miui/internal/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_11
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_12

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v3, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    sub-int v3, v1, v3

    invoke-virtual {v6, v2, v3, v7, v9}, Lcom/miui/internal/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    iget v3, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v3, v14

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    :cond_12
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_13

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v6, v2, v1, v7, v9}, Lcom/miui/internal/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_13
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v3, 0x10

    if-eqz v2, :cond_14

    goto :goto_8

    :cond_14
    iget v2, v6, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_25

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/app/ActionBar$LayoutParams;

    if-eqz v5, :cond_16

    move-object v11, v4

    check-cast v11, Landroid/app/ActionBar$LayoutParams;

    goto :goto_9

    :cond_16
    const/4 v11, 0x0

    :goto_9
    if-eqz v11, :cond_17

    iget v4, v11, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_a

    :cond_17
    const v4, 0x800013

    :goto_a
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-eqz v11, :cond_18

    invoke-virtual {v11}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v11}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v7

    sub-int/2addr v1, v7

    iget v7, v11, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    iget v9, v11, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    goto :goto_b

    :cond_18
    move v7, v13

    move v9, v7

    :goto_b
    const v10, 0x800007

    and-int/2addr v10, v4

    const v11, 0x800005

    const/4 v15, -0x1

    const v13, 0x800003

    if-ne v10, v12, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    sub-int v16, v16, v5

    div-int/lit8 v3, v16, 0x2

    if-ge v3, v0, :cond_19

    goto :goto_c

    :cond_19
    add-int/2addr v3, v5

    if-le v3, v1, :cond_1b

    move v10, v11

    goto :goto_d

    :cond_1a
    if-ne v4, v15, :cond_1b

    :goto_c
    move v10, v13

    :cond_1b
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    invoke-direct {v6, v10, v8}, Lcom/miui/internal/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v10

    if-eq v10, v12, :cond_1d

    if-eq v10, v13, :cond_1e

    if-eq v10, v11, :cond_1c

    move v0, v3

    goto :goto_e

    :cond_1c
    sub-int v0, v1, v5

    goto :goto_e

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/2addr v0, v14

    :cond_1e
    :goto_e
    and-int/lit8 v1, v4, 0x70

    if-ne v4, v15, :cond_1f

    const/16 v1, 0x10

    :cond_1f
    const/16 v3, 0x10

    if-eq v1, v3, :cond_22

    const/16 v3, 0x30

    if-eq v1, v3, :cond_21

    const/16 v3, 0x50

    if-eq v1, v3, :cond_20

    const/4 v13, 0x0

    goto :goto_f

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v13, v1, v9

    goto :goto_f

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int v13, v1, v7

    goto :goto_f

    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v13, v3, 0x2

    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v8, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    goto :goto_10

    :cond_23
    move v3, v0

    :goto_10
    if-eqz v8, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_11

    :cond_24
    add-int/2addr v1, v0

    :goto_11
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v13

    invoke-virtual {v2, v3, v13, v1, v0}, Landroid/view/View;->layout(IIII)V

    :cond_25
    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v14

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v6, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v3, v0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    :cond_26
    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_4
    return-void
.end method

.method private setTitleVisibility(Z)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v3, :cond_7

    if-eqz p1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v0

    :cond_7
    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_5
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateSandwichView()V

    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-nez p1, :cond_1

    if-ge p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v3

    :goto_1
    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_9

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x2

    if-ne p1, v4, :cond_5

    const/16 p0, 0x8

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v4, -0x3

    if-ne p1, v4, :cond_6

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_6
    const/4 v4, -0x4

    if-ne p1, v4, :cond_7

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_7
    if-ltz p1, :cond_9

    if-gt p1, v2, :cond_9

    add-int/lit8 v3, p1, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge p1, v2, :cond_8

    invoke-direct {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarView;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarView;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateSandwichView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateSingleContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateSingleContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateSingleContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private updateSingleContainer(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateTightTitle()V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v1, 0x8

    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v0, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private updateTitleCenter()V
    .locals 5

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x800003

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    instance-of v4, v1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    or-int/lit8 v0, v2, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public collapseActionView()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method protected createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;
    .locals 7

    new-instance v6, Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$layout;->action_menu_layout:I

    sget v3, Lcom/miui/internal/R$layout;->action_menu_item_layout:I

    sget v4, Lcom/miui/internal/R$layout;->action_bar_expanded_menu_layout:I

    sget v5, Lcom/miui/internal/R$layout;->action_bar_list_menu_item_layout:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {v6, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    sget p0, Lcom/miui/internal/R$id;->action_menu_presenter:I

    invoke-virtual {v6, p0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->setId(I)V

    return-object v6
.end method

.method protected createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 2

    new-instance v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/widget/ActionBarView$1;)V

    return-object v0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Landroid/app/ActionBar$LayoutParams;

    const v0, 0x800013

    invoke-direct {p0, v0}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
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

.method public bridge synthetic getContentHeight()I
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result p0

    return p0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method public getDisplayOptions()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object p0
.end method

.method public getDropdownSelectedPosition()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    return p0
.end method

.method public getEndView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    return-object p0
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

.method public getNavigationMode()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    return p0
.end method

.method public getSplitActionBarHeight(Z)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hasExpandedActionView()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hideImmersionMore()Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result p0

    return p0
.end method

.method public initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V
    .locals 3

    const-string v0, "ActionBarView"

    if-gtz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Try to initialize invalid layout for immersion more button: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    const-string p0, "Don\'t show immersion menu button for custom action bar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v1, :cond_2

    const-string p0, "Don\'t show immersion menu button for null display option"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    sget v0, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/miui/internal/widget/ActionBarView$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/internal/widget/ActionBarView$6;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public initIndeterminateProgress()V
    .locals 4

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

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initProgress()V
    .locals 4

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

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isCollapsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarView;->mIsCollapsed:Z

    return p0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result p0

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

.method public isSplitActionBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return p0
.end method

.method public isTightTitleWithEmbeddedTabs()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActionModeEnd(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getExpandState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getExpandState()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method public onActionModeStart(ZZ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mInActionMode:Z

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_3
    return-void
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiui/animation/IStateStyle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/animation/ICancelableStyle;->cancel()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iput v1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    :cond_2
    :goto_0
    new-instance p1, Lmiui/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v2, v0, [Lmiui/animation/listener/TransitionListener;

    new-instance v3, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;

    invoke-direct {v3, p0, p2}, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;-><init>(Lcom/miui/internal/widget/ActionBarView;I)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    move-result-object p1

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lmiui/animation/Folme;->useValue([Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v2

    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Lmiui/animation/base/AnimConfig;

    aput-object p1, v0, v1

    invoke-interface {v2, p2, v0}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiui/animation/IStateStyle;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_2

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
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

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    if-eq p2, v1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    if-ne p2, v1, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    move-object v6, p0

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, v6, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    :goto_0
    move v7, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    sub-int v8, p5, p3

    sub-int v9, v8, v0

    sub-int v10, v9, v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView;->onLayoutCollapseViews(ZIIII)V

    move v3, v10

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView;->onLayoutExpandViews(ZIIII)V

    move v3, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView;->onLayoutSecondaryViews(ZIIII)V

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v7

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
    .locals 4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v0, p4, v0

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    :cond_2
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int p2, p4, p1

    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandBounds:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p5, p3

    sub-int/2addr p4, p5

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p5, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method protected onLayoutSecondaryViews(ZIIII)V
    .locals 4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p5, v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v2, p4, v2

    invoke-virtual {p1, v0, v1, v2, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p4, v0

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p4, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p5, p3

    sub-int/2addr v0, p5

    iget p3, p0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int/2addr p4, p3

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p2, v0, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_1

    iget-object v5, v0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-ne v6, v5, :cond_0

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-nez v4, :cond_3

    invoke-virtual {v0, v2, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iput-boolean v3, v0, Lcom/miui/internal/widget/ActionBarView;->mIsCollapsed:Z

    return-void

    :cond_3
    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarView;->mIsCollapsed:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget v6, v0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v9

    sub-int v10, v6, v7

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/high16 v13, -0x80000000

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    sub-int v15, v4, v8

    sub-int/2addr v15, v9

    div-int/lit8 v16, v15, 0x2

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3, v15, v14, v2}, Lcom/miui/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v8, v3

    :cond_5
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v0, v3, v15, v14, v2}, Lcom/miui/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v9, v3

    :cond_6
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    :goto_2
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_8
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_a

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_9

    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_3

    :cond_9
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_3
    invoke-virtual {v3, v2, v12}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v15, v2

    const/4 v3, 0x0

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int v13, v15, v2

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/2addr v8, v2

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    move/from16 v13, v16

    :goto_4
    iget-object v2, v0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_b

    iget-object v2, v0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2, v15, v14, v3}, Lcom/miui/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    iget-object v2, v0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v16, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    iget-object v2, v0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    :cond_b
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_c

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v11, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v11, v3

    invoke-virtual {v0, v2, v15, v14, v11}, Lcom/miui/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int v16, v16, v2

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v2, v3

    sub-int v2, v16, v2

    const/4 v11, 0x0

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    :cond_c
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_d

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v15, v14, v11}, Lcom/miui/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v16, v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    :cond_d
    move/from16 v2, v16

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isShowTitle()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->updateTitleCenter()V

    :cond_e
    iget-object v14, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    if-eqz v14, :cond_f

    goto :goto_5

    :cond_f
    iget v14, v0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v14, v14, 0x10

    if-eqz v14, :cond_10

    iget-object v14, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v14, :cond_10

    goto :goto_5

    :cond_10
    move-object/from16 v14, v16

    :goto_5
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v3, :cond_12

    :cond_11
    if-eqz v14, :cond_12

    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    if-eqz v14, :cond_1c

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_1c

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/app/ActionBar$LayoutParams;

    if-eqz v5, :cond_13

    move-object/from16 v16, v3

    check-cast v16, Landroid/app/ActionBar$LayoutParams;

    :cond_13
    move-object/from16 v5, v16

    move/from16 v16, v6

    if-eqz v5, :cond_14

    iget v6, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v17, v7

    iget v7, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v18, v6

    iget v6, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    goto :goto_6

    :cond_14
    move/from16 v17, v7

    const/4 v6, 0x0

    const/16 v18, 0x0

    :goto_6
    iget v7, v0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v19, v1

    const/4 v1, -0x2

    if-gtz v7, :cond_16

    :cond_15
    const/high16 v7, -0x80000000

    goto :goto_7

    :cond_16
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v1, :cond_15

    const/high16 v7, 0x40000000    # 2.0f

    :goto_7
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_17

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_17
    sub-int/2addr v10, v6

    const/4 v1, 0x0

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-eq v10, v1, :cond_18

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_8

    :cond_18
    const/high16 v1, -0x80000000

    :goto_8
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_19

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_9

    :cond_19
    move v10, v15

    :goto_9
    sub-int v10, v10, v18

    move/from16 v20, v12

    const/4 v12, 0x0

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v5, :cond_1a

    iget v5, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_a

    :cond_1a
    const v5, 0x800013

    :goto_a
    const v12, 0x800007

    and-int/2addr v5, v12

    const/4 v12, 0x1

    if-ne v5, v12, :cond_1b

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1b

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x2

    mul-int/lit8 v10, v2, 0x2

    :cond_1b
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v18, v18, v1

    sub-int v15, v15, v18

    goto :goto_b

    :cond_1c
    move/from16 v19, v1

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v12

    :goto_b
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_1f

    if-eqz v11, :cond_1f

    iget v1, v0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v2, :cond_1d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v15, v1, v3}, Lcom/miui/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v8, v2

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isTitleCenter()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    sub-int v2, v4, v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v6, -0x80000000

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v2, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v15, v1

    goto :goto_c

    :cond_1e
    const/4 v5, 0x0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v15, v1, v5}, Lcom/miui/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    goto :goto_c

    :cond_1f
    const/4 v5, 0x0

    :goto_c
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v2, v4, v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryContainer:Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    move v3, v2

    goto :goto_d

    :cond_20
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_d
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_28

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_26

    const/4 v5, 0x2

    if-eq v2, v5, :cond_21

    goto/16 :goto_10

    :cond_21
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$integer;->action_bar_tab_layout_weight:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v6, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-nez v5, :cond_22

    const/high16 v5, -0x80000000

    goto :goto_e

    :cond_22
    const/high16 v5, 0x40000000    # 2.0f

    :goto_e
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v5, v20

    invoke-virtual {v6, v2, v5}, Landroid/widget/HorizontalScrollView;->measure(II)V

    :cond_23
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget v5, v0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int/2addr v2, v5

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v6, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v2, v7}, Landroid/widget/HorizontalScrollView;->measure(II)V

    goto :goto_f

    :cond_24
    const/4 v5, 0x0

    :goto_f
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_25

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->mUncollapsePaddingH:I

    const/4 v6, 0x2

    mul-int/2addr v2, v6

    sub-int v2, v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/high16 v6, -0x80000000

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/widget/HorizontalScrollView;->measure(II)V

    goto :goto_10

    :cond_25
    move v1, v5

    goto :goto_11

    :cond_26
    move/from16 v5, v20

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_28

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    if-eqz v11, :cond_27

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    :cond_27
    sub-int/2addr v15, v1

    const/4 v1, 0x0

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v6, v0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    const/high16 v7, -0x80000000

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v2, v5}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_11

    :cond_28
    :goto_10
    const/4 v1, 0x0

    :goto_11
    iget v2, v0, Lcom/miui/internal/widget/AbsActionBarView;->mContentHeight:I

    if-gtz v2, :cond_2b

    move v2, v1

    move/from16 v3, v19

    :goto_12
    if-ge v2, v3, :cond_2a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v5, v17

    if-le v5, v1, :cond_29

    move v1, v5

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2a
    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_14

    :cond_2b
    add-int v6, v16, v3

    iput v6, v0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget v1, v0, Lcom/miui/internal/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    :goto_13
    add-int v6, v16, v1

    add-int/2addr v6, v3

    :cond_2c
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_14

    :cond_2d
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    goto :goto_13

    :goto_14
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2e

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ProgressBar;->measure(II)V

    :cond_2e
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 1

    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    iget p2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    iget p5, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    const/4 v0, 0x1

    if-lt p1, p5, :cond_0

    sub-int p1, p2, p3

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    aget p1, p4, v0

    add-int/2addr p1, p3

    aput p1, p4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr p5, p1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    aget p1, p4, v0

    neg-int p3, p5

    add-int/2addr p1, p3

    aput p1, p4, v0

    :goto_0
    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

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

    iget p2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_1

    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    sub-int/2addr p2, p5

    iget p3, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object p4, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    const/4 p4, 0x1

    if-gt p2, p3, :cond_0

    iget p2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    sub-int/2addr p2, p5

    iput p2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    aget p2, p7, p4

    add-int/2addr p2, p5

    aput p2, p7, p4

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iput p3, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    aget p3, p7, p4

    neg-int p2, p2

    add-int/2addr p3, p2

    aput p3, p7, p4

    :goto_0
    iget p2, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

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

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTouchScrolling:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    :goto_0
    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/miui/internal/widget/ActionBarView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/miui/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_0
    iget-boolean p1, p1, Lcom/miui/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->postShowOverflowMenu()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result p0

    iput-boolean p0, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    return-object v1
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

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->isShowTitle()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isResizable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 3

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTouchScrolling:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTouchScrolling:Z

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNonTouchScrolling:Z

    :goto_0
    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-eq p1, v1, :cond_5

    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    if-le p1, p2, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseHeight:I

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public onWindowHide()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowHide()V

    return-void
.end method

.method public onWindowShow()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowShow()V

    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->addedCustomView()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->attach(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 10

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    xor-int v1, p1, v0

    :goto_0
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_14

    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    const/16 v6, 0x8

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initHomeLayout()V

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v8, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_4

    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v8, v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    if-eqz v7, :cond_4

    invoke-virtual {p0, v5}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    :cond_4
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_8

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_5

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v4

    :goto_4
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_5
    invoke-virtual {v9, v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_7
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v7, :cond_8

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_6
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_a

    and-int/lit8 v7, p1, 0x8

    if-eqz v7, :cond_9

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    goto :goto_7

    :cond_9
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateSandwichView()V

    :cond_a
    :goto_7
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_11

    and-int/lit8 v7, v1, 0x6

    if-eqz v7, :cond_11

    iget v7, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_b

    move v7, v5

    goto :goto_8

    :cond_b
    move v7, v4

    :goto_8
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v0, :cond_d

    if-eqz v7, :cond_c

    move v6, v4

    goto :goto_9

    :cond_c
    move v6, v3

    :cond_d
    :goto_9
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_f

    if-eqz v7, :cond_f

    move v8, v5

    goto :goto_a

    :cond_f
    move v8, v4

    :goto_a
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_10

    if-eqz v7, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_11
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_13

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_12

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->addedCustomView()V

    goto :goto_b

    :cond_12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13
    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_c

    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_15
    and-int/2addr p1, v3

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    goto :goto_d

    :cond_16
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    :goto_d
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_e
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/ActionBarView;->addTabsContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    :cond_1
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setExpandState(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ActionBarContainer;

    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExpandState(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/internal/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    :cond_1
    check-cast p1, Lcom/miui/internal/view/menu/MenuBuilder;

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarView;->createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    :cond_3
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-boolean v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->configPresenters(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    iget-object v2, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x11

    goto :goto_0

    :cond_6
    const/16 v0, 0x50

    :goto_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->configPresenters(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eq v0, v1, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1, v4, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/miui/internal/R$id;->expanded_menu:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_8
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_1
    iput-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    if-eq p1, v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/internal/widget/ActionBarView;->addTabsContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v2, 0x10102d7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->action_bar_view_list_nav_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    :goto_1
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x3

    goto :goto_0

    :cond_0
    const/4 p1, -0x4

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_8
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

.method public setStartView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCollapseSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez p1, :cond_3

    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V

    :cond_4
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUserTitle:Z

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showImmersionMore()Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 0

    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result p0

    return p0
.end method
