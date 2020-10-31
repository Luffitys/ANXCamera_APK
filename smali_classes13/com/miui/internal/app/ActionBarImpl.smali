.class public Lcom/miui/internal/app/ActionBarImpl;
.super Lmiui/app/ActionBar;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/ActionBarImpl$ViewHideTransitionListener;,
        Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static sTabListenerWrapper:Landroid/app/ActionBar$TabListener;


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

.field private mActionModeView:Lcom/miui/internal/widget/ActionModeView;

.field private mActionView:Lcom/miui/internal/widget/ActionBarView;

.field private mContainerAnim:Lmiui/animation/IStateStyle;

.field private mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

.field private mContentMask:Landroid/view/View;

.field private mContentMaskOnClickListenr:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/miui/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentAccessibilityImportant:I

.field private mCurrentExpandState:I

.field private mCurrentResizable:Z

.field private mDisplayHomeAsUpSet:Z

.field private mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

.field private mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field private mShowingForMode:Z

.field private mSplitMenuView:Lcom/miui/internal/view/menu/PhoneActionMenuView;

.field private mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

.field private mSpliterAnim:Lmiui/animation/IStateStyle;

.field private mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field private mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$1;

    invoke-direct {v0}, Lcom/miui/internal/app/ActionBarImpl$1;-><init>()V

    sput-object v0, Lcom/miui/internal/app/ActionBarImpl;->sTabListenerWrapper:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 4

    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 4

    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    move-object v0, p1

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0}, Lmiui/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitMenuView:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    return-object v0
.end method

.method static synthetic access$300()Landroid/app/ActionBar$TabListener;
    .registers 1

    sget-object v0, Lcom/miui/internal/app/ActionBarImpl;->sTabListenerWrapper:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_a

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    return v0

    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method private cleanupTabs()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_8
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_14
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_1b
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_22
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .registers 8

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0, p2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    :goto_19
    if-ge v3, v2, :cond_29

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v3}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_29
    return-void

    :cond_2a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Action Bar Tab must have a Callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/miui/internal/view/SearchActionModeImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/SearchActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    goto :goto_13

    :cond_c
    new-instance v0, Lcom/miui/internal/view/EditActionModeImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/EditActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    :goto_13
    return-object v0
.end method

.method private ensureTabsExist()V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v5, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, v0, v1, v3}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {v0, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-void
.end method

.method public static getActionBar(Landroid/view/View;)Lcom/miui/internal/app/ActionBarImpl;
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_24

    instance-of v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_12

    move-object v1, p0

    check-cast v1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    goto :goto_24

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object p0, v1

    check-cast p0, Landroid/view/View;

    goto :goto_1

    :cond_22
    const/4 p0, 0x0

    goto :goto_1

    :cond_24
    :goto_24
    return-object v0
.end method

.method private getBlurOptioons()I
    .registers 7

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getDisplayOptions()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    :goto_f
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getDisplayOptions()I

    move-result v4

    const/16 v5, 0x4000

    and-int/2addr v4, v5

    if-eqz v4, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v3

    :goto_1e
    if-eqz v2, :cond_21

    move v3, v5

    :cond_21
    or-int/2addr v1, v3

    return v1
.end method

.method private getSplitHeight()I
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_28

    instance-of v2, v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v2, :cond_28

    move-object v2, v1

    check-cast v2, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getCollapsedHeight()I

    move-result v0

    :cond_28
    return v0
.end method

.method private setHasEmbeddedTabs(Z)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    if-eqz v3, :cond_31

    if-eqz v0, :cond_29

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :goto_2c
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    :cond_31
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_43

    if-eqz v0, :cond_3b

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_3e

    :cond_3b
    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :goto_3e
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    :cond_43
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_55

    if-eqz v0, :cond_4d

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_50

    :cond_4d
    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :goto_50
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    :cond_55
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void
.end method

.method private startContainerViewAnimation(ZLjava/lang/String;Lmiui/animation/controller/AnimState;)Lmiui/animation/IStateStyle;
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_54

    new-instance v5, Lmiui/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_ae

    invoke-static {v2, v1}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v5, v1}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    new-instance v1, Lmiui/animation/controller/AnimState;

    invoke-direct {v1, p2}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    new-array v6, v4, [J

    invoke-virtual {v1, v2, v4, v6}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v7, v4, [J

    invoke-virtual {v1, v2, v6, v7}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v1

    new-array v2, v3, [Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    aput-object v6, v2, v4

    invoke-static {v2}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v2

    if-eqz p3, :cond_4b

    invoke-virtual {p3, p2}, Lmiui/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    invoke-interface {v2, p3}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v2

    :cond_4b
    new-array v3, v3, [Lmiui/animation/base/AnimConfig;

    aput-object v5, v3, v4

    invoke-interface {v2, v1, v3}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v1

    goto :goto_ac

    :cond_54
    new-instance v5, Lmiui/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_b6

    invoke-static {v2, v1}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v5, v1}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    new-array v1, v3, [Lmiui/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/internal/app/ActionBarImpl$ViewHideTransitionListener;

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {v2, v6}, Lcom/miui/internal/app/ActionBarImpl$ViewHideTransitionListener;-><init>(Landroid/view/View;)V

    aput-object v2, v1, v4

    invoke-virtual {v5, v1}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    new-instance v1, Lmiui/animation/controller/AnimState;

    invoke-direct {v1, p2}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    neg-int v6, v0

    add-int/lit8 v6, v6, -0x64

    new-array v7, v4, [J

    invoke-virtual {v1, v2, v6, v7}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    const/4 v6, 0x0

    new-array v7, v4, [J

    invoke-virtual {v1, v2, v6, v7}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v1

    new-array v2, v3, [Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    aput-object v6, v2, v4

    invoke-static {v2}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v2

    if-eqz p3, :cond_a3

    invoke-virtual {p3, p2}, Lmiui/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    invoke-interface {v2, p3}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v2

    :cond_a3
    new-array v3, v3, [Lmiui/animation/base/AnimConfig;

    aput-object v5, v3, v4

    invoke-interface {v2, v1, v3}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v2

    move-object v1, v2

    :goto_ac
    return-object v1

    nop

    :array_ae
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    :array_b6
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private startSplitViewAnimation(ZLjava/lang/String;Lmiui/animation/controller/AnimState;)Lmiui/animation/IStateStyle;
    .registers 12

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getSplitHeight()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_50

    new-instance v5, Lmiui/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_a8

    invoke-static {v2, v1}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v5, v1}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    new-instance v1, Lmiui/animation/controller/AnimState;

    invoke-direct {v1, p2}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    new-array v6, v4, [J

    invoke-virtual {v1, v2, v4, v6}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    new-array v6, v4, [J

    invoke-virtual {v1, v2, v3, v6}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v1

    new-array v2, v3, [Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    aput-object v6, v2, v4

    invoke-static {v2}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v2

    if-eqz p3, :cond_47

    invoke-virtual {p3, p2}, Lmiui/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    invoke-interface {v2, p3}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v2

    :cond_47
    new-array v3, v3, [Lmiui/animation/base/AnimConfig;

    aput-object v5, v3, v4

    invoke-interface {v2, v1, v3}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v1

    goto :goto_a6

    :cond_50
    new-instance v5, Lmiui/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiui/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_b0

    invoke-static {v2, v1}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v5, v1}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    new-array v1, v3, [Lmiui/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/internal/app/ActionBarImpl$ViewHideTransitionListener;

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {v2, v6}, Lcom/miui/internal/app/ActionBarImpl$ViewHideTransitionListener;-><init>(Landroid/view/View;)V

    aput-object v2, v1, v4

    invoke-virtual {v5, v1}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    new-instance v1, Lmiui/animation/controller/AnimState;

    invoke-direct {v1, p2}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    add-int/lit8 v6, v0, 0x64

    new-array v7, v4, [J

    invoke-virtual {v1, v2, v6, v7}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    new-array v6, v4, [J

    invoke-virtual {v1, v2, v4, v6}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v1

    new-array v2, v3, [Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    aput-object v6, v2, v4

    invoke-static {v2}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v2

    if-eqz p3, :cond_9d

    invoke-virtual {p3, p2}, Lmiui/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    invoke-interface {v2, p3}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    move-result-object v2

    :cond_9d
    new-array v3, v3, [Lmiui/animation/base/AnimConfig;

    aput-object v5, v3, v4

    invoke-interface {v2, v1, v3}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    move-result-object v2

    move-object v1, v2

    :goto_a6
    return-object v1

    nop

    :array_a8
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    :array_b0
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private updateContentMaskVisibility(Z)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitMenuView:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContentMask:Landroid/view/View;

    if-eqz v1, :cond_49

    if-eqz p1, :cond_3b

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContentMaskOnClickListenr:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_49

    :cond_3b
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :cond_49
    :goto_49
    return-void
.end method

.method private updateVisibility(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Lcom/miui/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    if-nez v1, :cond_21

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doShow(Z)V

    goto :goto_21

    :cond_17
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doHide(Z)V

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;IZ)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;Z)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method animateToMode(Z)V
    .registers 4

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->showForActionMode()V

    goto :goto_9

    :cond_6
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->hideForActionMode()V

    :goto_9
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/ActionModeView;->animateToVisibility(Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEnabled(Z)V

    :cond_37
    return-void
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;
    .registers 5

    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getPendingInsets()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setStatusBarPaddingTop(I)V

    :cond_1d
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v1, v2, :cond_2e

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->addView(Landroid/view/View;)V

    :cond_2e
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    goto :goto_33

    :cond_31
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextView:Lcom/miui/internal/widget/ActionBarContextView;

    :goto_33
    return-object v0
.end method

.method public createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->search_action_mode_view:I

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/SearchActionModeView;

    new-instance v2, Lcom/miui/internal/app/ActionBarImpl$4;

    invoke-direct {v2, p0}, Lcom/miui/internal/app/ActionBarImpl$4;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public doHide(Z)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerAnim:Lmiui/animation/IStateStyle;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lmiui/animation/IStateStyle;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerAnim:Lmiui/animation/IStateStyle;

    invoke-interface {v1}, Lmiui/animation/IStateStyle;->cancel()V

    :cond_e
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    if-eqz p1, :cond_18

    goto :goto_1a

    :cond_18
    move v1, v2

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_29

    const-string v5, "HideActionBar"

    invoke-direct {p0, v2, v5, v0}, Lcom/miui/internal/app/ActionBarImpl;->startContainerViewAnimation(ZLjava/lang/String;Lmiui/animation/controller/AnimState;)Lmiui/animation/IStateStyle;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerAnim:Lmiui/animation/IStateStyle;

    goto :goto_3e

    :cond_29
    iget-object v5, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v5, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v5, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :goto_3e
    iget-object v5, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_72

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mSpliterAnim:Lmiui/animation/IStateStyle;

    if-eqz v6, :cond_50

    invoke-interface {v6}, Lmiui/animation/IStateStyle;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mSpliterAnim:Lmiui/animation/IStateStyle;

    invoke-interface {v6}, Lmiui/animation/IStateStyle;->cancel()V

    :cond_50
    if-eqz v1, :cond_5b

    const-string v3, "SpliterHide"

    invoke-direct {p0, v2, v3, v5}, Lcom/miui/internal/app/ActionBarImpl;->startSplitViewAnimation(ZLjava/lang/String;Lmiui/animation/controller/AnimState;)Lmiui/animation/IStateStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSpliterAnim:Lmiui/animation/IStateStyle;

    goto :goto_6f

    :cond_5b
    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getSplitHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v6, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :goto_6f
    invoke-direct {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->updateContentMaskVisibility(Z)V

    :cond_72
    return-void
.end method

.method public doShow(Z)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerAnim:Lmiui/animation/IStateStyle;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lmiui/animation/IStateStyle;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerAnim:Lmiui/animation/IStateStyle;

    invoke-interface {v1}, Lmiui/animation/IStateStyle;->cancel()V

    :cond_e
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    move v1, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v1, v3

    :goto_1c
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_2f

    const-string v6, "ShowActionBar"

    invoke-direct {p0, v3, v6, v0}, Lcom/miui/internal/app/ActionBarImpl;->startContainerViewAnimation(ZLjava/lang/String;Lmiui/animation/controller/AnimState;)Lmiui/animation/IStateStyle;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerAnim:Lmiui/animation/IStateStyle;

    goto :goto_39

    :cond_2f
    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v6, v5}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v6, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setAlpha(F)V

    :goto_39
    iget-object v6, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v6, :cond_94

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/internal/app/ActionBarImpl;->mSpliterAnim:Lmiui/animation/IStateStyle;

    if-eqz v7, :cond_4b

    invoke-interface {v7}, Lmiui/animation/IStateStyle;->getCurrentState()Lmiui/animation/controller/AnimState;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/internal/app/ActionBarImpl;->mSpliterAnim:Lmiui/animation/IStateStyle;

    invoke-interface {v7}, Lmiui/animation/IStateStyle;->cancel()V

    :cond_4b
    iget-object v7, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v7, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    if-eqz v1, :cond_87

    const-string v2, "SpliterShow"

    invoke-direct {p0, v3, v2, v6}, Lcom/miui/internal/app/ActionBarImpl;->startSplitViewAnimation(ZLjava/lang/String;Lmiui/animation/controller/AnimState;)Lmiui/animation/IStateStyle;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSpliterAnim:Lmiui/animation/IStateStyle;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    if-lez v2, :cond_91

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_86

    instance-of v4, v2, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v4, :cond_86

    move-object v4, v2

    check-cast v4, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_86

    move-object v5, v2

    check-cast v5, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v5}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    :cond_86
    goto :goto_91

    :cond_87
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v5}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setAlpha(F)V

    :cond_91
    :goto_91
    invoke-direct {p0, v3}, Lcom/miui/internal/app/ActionBarImpl;->updateContentMaskVisibility(Z)V

    :cond_94
    return-void
.end method

.method getActionBarOverlayLayout()Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getEndView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getEndView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getExpandState()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public getFragmentAt(I)Landroid/app/Fragment;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentTabCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentTabCount()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    return v2

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_15
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    :cond_21
    return v2
.end method

.method public getNavigationMode()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_e

    return v2

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v2

    :cond_16
    return v2

    :cond_17
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getStartView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_28

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010397

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_24

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_28

    :cond_24
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getViewPagerOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method public hasNonEmbeddedTabs()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method hideForActionMode()V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_54

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getDisplayOptions()I

    move-result v2

    const v3, 0x8000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    move v2, v0

    :goto_17
    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->onActionModeEnd(Z)V

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->updateVisibility(Z)V

    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActionBarImpl;->setResizable(Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v1, v0, Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz v1, :cond_31

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentExpandState:I

    invoke-virtual {p0, v0, v3}, Lcom/miui/internal/app/ActionBarImpl;->setExpandState(IZ)V

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentResizable:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setResizable(Z)V

    goto :goto_4d

    :cond_31
    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->getExpandState()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentExpandState:I

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentResizable:Z

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentExpandState:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setExpandState(I)V

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentResizable:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setResizable(Z)V

    :goto_4d
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentAccessibilityImportant:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    :cond_54
    return-void
.end method

.method protected init(Landroid/view/ViewGroup;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setActionBar(Lmiui/app/ActionBar;)V

    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextView:Lcom/miui/internal/widget/ActionBarContextView;

    sget v0, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContentMask:Landroid/view/View;

    if-eqz v0, :cond_41

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$3;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContentMaskOnClickListenr:Landroid/view/View$OnClickListener;

    :cond_41
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_85

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_85

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    move v0, v2

    goto :goto_58

    :cond_57
    move v0, v1

    :goto_58
    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextDisplayMode:I

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_66

    move v3, v2

    goto :goto_67

    :cond_66
    move v3, v1

    :goto_67
    if-eqz v3, :cond_6b

    iput-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    :cond_6b
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_79

    if-eqz v3, :cond_7a

    :cond_79
    move v1, v2

    :cond_7a
    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    invoke-virtual {v4}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    return-void

    :cond_85
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method internalAddTab(Landroid/app/ActionBar$Tab;)V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;Z)V

    return-void
.end method

.method internalAddTab(Landroid/app/ActionBar$Tab;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-ne p2, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method internalAddTab(Landroid/app/ActionBar$Tab;IZ)V
    .registers 5

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->ensureTabsExist()V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    if-eqz p3, :cond_1a

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_1a
    return-void
.end method

.method internalAddTab(Landroid/app/ActionBar$Tab;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->ensureTabsExist()V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    if-eqz p2, :cond_20

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_20
    return-void
.end method

.method internalRemoveAllTabs()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->cleanupTabs()V

    return-void
.end method

.method internalRemoveTab(Landroid/app/ActionBar$Tab;)V
    .registers 3

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTabAt(I)V

    return-void
.end method

.method internalRemoveTabAt(I)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_10

    :cond_e
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    :goto_10
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_2d

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    :cond_2d
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_34
    if-ge v3, v2, :cond_44

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v3}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_44
    if-ne v0, p1, :cond_62

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v3, 0x0

    goto :goto_5f

    :cond_50
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActionBar$Tab;

    :goto_5f
    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_62
    return-void
.end method

.method public isFragmentViewPagerMode()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isResizable()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method isShowHideAnimationEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    return v0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .registers 2

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public removeAllFragmentTab()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeAllFragmentTab()V

    return-void
.end method

.method public removeAllTabs()V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveAllTabs()V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method public removeFragmentTab(Landroid/app/Fragment;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Ljava/lang/String;)V

    return-void
.end method

.method public removeFragmentTabAt(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentAt(I)V

    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTab(Landroid/app/ActionBar$Tab;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTabAt(I)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    goto :goto_10

    :cond_f
    nop

    :goto_10
    iput v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_48

    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_8a

    :cond_48
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    goto :goto_52

    :cond_51
    move v3, v1

    :goto_52
    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    goto :goto_5f

    :cond_5e
    move v3, v1

    :goto_5f
    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_6a
    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_7a
    move-object v1, p1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_8a
    :goto_8a
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_93

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_93
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getDisplayOptions()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_13

    const/4 v3, 0x0

    goto :goto_14

    :cond_13
    move-object v3, p1

    :goto_14
    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 7

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1f

    move v4, v1

    goto :goto_20

    :cond_1f
    move v4, v3

    :goto_20
    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setBlurBackground(Z)Z

    :cond_23
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_30

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v3

    :goto_2d
    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setBlurBackground(Z)Z

    :cond_30
    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    iput-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    :cond_d
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    and-int v3, p1, p2

    not-int v4, p2

    and-int/2addr v4, v0

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    const v5, 0x8000

    and-int/2addr v5, v1

    if-eqz v5, :cond_2a

    move v5, v2

    goto :goto_2b

    :cond_2a
    move v5, v4

    :goto_2b
    invoke-virtual {v3, v5}, Lcom/miui/internal/widget/ActionBarContainer;->setBlurBackground(Z)Z

    :cond_2e
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_3b

    and-int/lit16 v5, v1, 0x4000

    if-eqz v5, :cond_37

    goto :goto_38

    :cond_37
    move v2, v4

    :goto_38
    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setBlurBackground(Z)Z

    :cond_3b
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->getBlurOptioons()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method public setExpandState(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public setExpandState(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public setExpandTabTextAppearance(II)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTextAppearance(II)V

    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController;->setFragmentActionMenuAt(IZ)V

    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->removeAllTabs()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setNavigationMode(I)V

    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/internal/app/ActionBarViewPagerController;-><init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setFragmentViewPagerMode(Z)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ActionBarView;->setCallback(Landroid/app/ActionBar$OnNavigationListener;)V

    return-void
.end method

.method public setLogo(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_28

    :cond_a
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->ensureTabsExist()V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :goto_28
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ActionBarView;->setNavigationMode(I)V

    const/4 v2, 0x0

    if-eq p1, v1, :cond_31

    goto :goto_4d

    :cond_31
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->ensureTabsExist()V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4d

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    iput v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgress(I)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminate(Z)V

    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarVisibility(Z)V

    return-void
.end method

.method public setResizable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSecondaryTabTextAppearance(II)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTextAppearance(II)V

    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_26

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    nop

    :goto_26
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->doShow(Z)V

    goto :goto_12

    :cond_f
    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->doHide(Z)V

    :cond_12
    :goto_12
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getDisplayOptions()I

    move-result v0

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_33

    const/4 v2, 0x0

    :goto_10
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_33

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_2c

    const/4 v4, 0x0

    goto :goto_2d

    :cond_2c
    move-object v4, p1

    :goto_2d
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_33
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setStartView(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTabBadgeVisibility(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    return-void
.end method

.method public setTabIconWithPosition(IIIIII)V
    .registers 16

    nop

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v5, v1

    goto :goto_d

    :cond_c
    move-object v5, v0

    :goto_d
    if-eqz p4, :cond_17

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v6, v1

    goto :goto_18

    :cond_17
    move-object v6, v0

    :goto_18
    if-eqz p5, :cond_22

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v7, v1

    goto :goto_23

    :cond_22
    move-object v7, v0

    :goto_23
    if-eqz p6, :cond_2b

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2b
    move-object v8, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/miui/internal/app/ActionBarImpl;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 16

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mExpanedTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSecondaryTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTabTextAppearance(II)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTextAppearance(II)V

    return-void
.end method

.method public setTabsMode(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewPagerDecor(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->setViewPagerDecor(Landroid/view/View;)V

    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->setViewPagerOffscreenPageLimit(I)V

    return-void
.end method

.method public show()V
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method public showActionBarShadow(Z)V
    .registers 2

    return-void
.end method

.method showForActionMode()V
    .registers 7

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-nez v0, :cond_57

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->updateVisibility(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getExpandState()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentExpandState:I

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isResizable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentResizable:Z

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v3, v2, Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz v3, :cond_24

    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setExpandState(IZ)V

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setResizable(Z)V

    goto :goto_34

    :cond_24
    check-cast v2, Lcom/miui/internal/widget/ActionBarContextView;

    iget v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentExpandState:I

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    check-cast v2, Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentResizable:Z

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setResizable(Z)V

    :goto_34
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurrentAccessibilityImportant:I

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v3, v3, Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getDisplayOptions()I

    move-result v4

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_53

    goto :goto_54

    :cond_53
    move v0, v1

    :goto_54
    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/widget/ActionBarView;->onActionModeStart(ZZ)V

    :cond_57
    return-void
.end method

.method public showSplitActionBar(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ActionBarContainer;->show(Z)V

    goto :goto_15

    :cond_10
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ActionBarContainer;->hide(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_7
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v1, v1, Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz v1, :cond_15

    instance-of v1, v0, Lcom/miui/internal/view/SearchActionModeImpl;

    if-nez v1, :cond_1f

    :cond_15
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v1, v1, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_29

    instance-of v1, v0, Lcom/miui/internal/view/EditActionModeImpl;

    if-eqz v1, :cond_29

    :cond_1f
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v1}, Lcom/miui/internal/widget/ActionModeView;->closeMode()V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v1}, Lcom/miui/internal/widget/ActionModeView;->killMode()V

    :cond_29
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v2, v0, Lcom/miui/internal/view/ActionModeImpl;

    if-eqz v2, :cond_74

    move-object v2, v0

    check-cast v2, Lcom/miui/internal/view/ActionModeImpl;

    invoke-virtual {v2, v1}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeView(Lcom/miui/internal/widget/ActionModeView;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-virtual {v2, v1}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeCallback(Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;)V

    invoke-virtual {v2}, Lcom/miui/internal/view/ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v1, v0}, Lcom/miui/internal/widget/ActionModeView;->initForMode(Landroid/view/ActionMode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->animateToMode(Z)V

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_64

    iget v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v4, v1, :cond_64

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_64
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v3, v1, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_71

    check-cast v1, Lcom/miui/internal/widget/ActionBarContextView;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    :cond_71
    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    return-object v0

    :cond_74
    const/4 v1, 0x0

    return-object v1
.end method
