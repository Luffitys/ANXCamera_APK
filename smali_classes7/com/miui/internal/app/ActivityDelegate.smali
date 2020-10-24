.class public Lcom/miui/internal/app/ActivityDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "miui:ActionBar"

.field private static final ON_CREATE_PANEL_MENU:Lmiui/reflect/Method;

.field private static final ON_MENU_ITEM_SELECTED:Lmiui/reflect/Method;

.field private static final ON_PREPARE_PANEL:Lmiui/reflect/Method;


# instance fields
.field private mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

.field private final mActivityClass:Ljava/lang/Class;

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/app/Activity;

    const-string v1, "onCreatePanelMenu"

    const-string v2, "(ILandroid/view/Menu;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_CREATE_PANEL_MENU:Lmiui/reflect/Method;

    const-class v0, Landroid/app/Activity;

    const-string v1, "onPreparePanel"

    const-string v2, "(ILandroid/view/View;Landroid/view/Menu;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_PREPARE_PANEL:Lmiui/reflect/Method;

    const-class v0, Landroid/app/Activity;

    const-string v1, "onMenuItemSelected"

    const-string v2, "(ILandroid/view/MenuItem;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_MENU_ITEM_SELECTED:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    new-instance p1, Lcom/miui/internal/app/ActivityDelegate$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/app/ActivityDelegate$1;-><init>(Lcom/miui/internal/app/ActivityDelegate;)V

    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/Menu;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public static getDecorViewLayoutRes(Landroid/view/Window;)I
    .locals 5

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->windowActionBar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/miui/internal/R$attr;->windowActionBarMovable:I

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar_movable:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/miui/internal/R$layout;->screen_simple:I

    :goto_0
    sget v3, Lmiui/R$attr;->startingWindowOverlay:I

    invoke-static {v0, v3}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {}, Lcom/miui/internal/app/ActivityDelegate;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/miui/internal/app/ActivityDelegate;->isWindowActionBarEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->isFloating()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Dialog;

    if-eqz v3, :cond_3

    sget v3, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {v0, v3, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    :cond_3
    return v1
.end method

.method private static isSystemProcess()Z
    .locals 2

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isWindowActionBarEnabled(Landroid/content/Context;)Z
    .locals 2

    sget v0, Lmiui/R$attr;->windowActionBar:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method private superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 4

    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_CREATE_PANEL_MENU:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private superOnMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_MENU_ITEM_SELECTED:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 4

    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_PREPARE_PANEL:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public createActionBar()Lmiui/app/ActionBar;
    .locals 1

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method protected installSubDecor()V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    sget-object v3, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lmiui/R$styleable;->Window_windowLayoutMode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    sget v3, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_f

    sget v3, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    :cond_2
    sget v3, Lmiui/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    :cond_3
    sget v3, Lcom/miui/internal/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    :cond_4
    instance-of v5, v6, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_5

    check-cast v6, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_6

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    goto :goto_0

    :cond_6
    const v5, 0x1020002

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v7, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/internal/app/ActivityDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    move-result v1

    invoke-static {v7, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setContentView(Landroid/view/View;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarView;

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    :cond_7
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    :cond_8
    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {v1, v3, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    :cond_9
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v1

    const-string v3, "splitActionBarWhenNarrow"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    goto :goto_1

    :cond_b
    sget v3, Lmiui/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    :goto_1
    iget-object v5, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v6, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_c

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6, v5}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6, v3}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6, v1}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v7, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    invoke-virtual {v6, v5}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {v6, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    invoke-virtual {v6, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    :cond_c
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/internal/app/ActivityDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_d
    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setImmersionMenuEnabled(Z)V

    :cond_e
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_f
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a miui theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActivityDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->collapseActionView()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->installSubDecor()V

    invoke-static {}, Lmiui/extension/ExtensionManager;->getInstance()Lmiui/extension/ExtensionManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "Activity"

    const-string p1, "onCreate"

    invoke-virtual {v0, p0, p1, v1}, Lmiui/extension/ExtensionManager;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    invoke-direct {p0, v3, p1}, Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    invoke-direct {p0, v3, v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->superOnMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x102002c

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onNavigateUp()Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPostResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/app/ActionBarImpl;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    const-string v0, "miui:ActionBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string p0, "miui:ActionBar"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/app/ActionBarImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getActionBarOverlayLayout()Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
