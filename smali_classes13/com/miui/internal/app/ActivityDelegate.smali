.class public Lcom/miui/internal/app/ActivityDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source "ActivityDelegate.java"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/miui/internal/app/ActivityDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActivityDelegate$1;-><init>(Lcom/miui/internal/app/ActivityDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/Menu;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public static getDecorViewLayoutRes(Landroid/view/Window;)I
    .registers 6

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->windowActionBar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget v1, Lcom/miui/internal/R$attr;->windowActionBarMovable:I

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar_movable:I

    goto :goto_1d

    :cond_18
    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    goto :goto_1d

    :cond_1b
    sget v1, Lcom/miui/internal/R$layout;->screen_simple:I

    :goto_1d
    sget v3, Lmiui/R$attr;->startingWindowOverlay:I

    invoke-static {v0, v3}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_32

    invoke-static {}, Lcom/miui/internal/app/ActivityDelegate;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {v0}, Lcom/miui/internal/app/ActivityDelegate;->isWindowActionBarEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_32

    move v1, v3

    :cond_32
    invoke-virtual {p0}, Landroid/view/Window;->isFloating()Z

    move-result v4

    if-nez v4, :cond_51

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Dialog;

    if-eqz v4, :cond_51

    sget v4, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {v0, v4, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v2

    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v4

    invoke-virtual {v4, p0, v2}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    :cond_51
    return v1
.end method

.method private static isSystemProcess()Z
    .registers 2

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
    .registers 3

    sget v0, Lmiui/R$attr;->windowActionBar:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 9

    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_CREATE_PANEL_MENU:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private superOnMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 9

    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_MENU_ITEM_SELECTED:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 10

    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_PREPARE_PANEL:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createActionBar()Lmiui/app/ActionBar;
    .registers 3

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected installSubDecor()V
    .registers 13

    iget-boolean v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecorInstalled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecorInstalled:Z

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    sget-object v3, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lmiui/R$styleable;->Window_windowLayoutMode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v0, :cond_2a

    iget-object v3, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    :cond_2a
    sget v3, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1ac

    sget v3, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3f

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    :cond_3f
    sget v3, Lmiui/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_4c

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    :cond_4c
    sget v3, Lcom/miui/internal/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActivityDelegate;->setTranslucentStatus(I)V

    iget-object v3, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6d

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    :cond_6d
    instance-of v7, v6, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v7, :cond_77

    move-object v7, v6

    check-cast v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    goto :goto_c7

    :cond_77
    if-eqz v6, :cond_8a

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v7, :cond_8a

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    goto :goto_c7

    :cond_8a
    const v7, 0x1020002

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v9, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/internal/app/ActivityDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    move-result v10

    invoke-static {v9, v10, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v9, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v9, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v9, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v10, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->removeView(Landroid/view/View;)V

    iget-object v10, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v10, v8, v9}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->addView(Landroid/view/View;I)V

    iget-object v10, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v10, v8}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setContentView(Landroid/view/View;)V

    :goto_c7
    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v8, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getTranslucentStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    iget-boolean v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mHasActionBar:Z

    if-eqz v7, :cond_19d

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v8, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {v7, v8}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-boolean v8, p0, Lcom/miui/internal/app/ActivityDelegate;->mOverlayActionBar:Z

    invoke-virtual {v7, v8}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v8, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v7, v8}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/internal/widget/ActionBarView;

    iput-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v8, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mFeatureProgress:Z

    if-eqz v7, :cond_10a

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    :cond_10a
    iget-boolean v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz v7, :cond_113

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    :cond_113
    sget v7, Lcom/miui/internal/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v2, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v7

    if-eqz v7, :cond_128

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v8, p0, Lcom/miui/internal/app/ActivityDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {v7, v8, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    :cond_128
    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/miui/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_13d

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v8, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v8

    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v7, v8}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    :cond_13d
    nop

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v7

    const-string v8, "splitActionBarWhenNarrow"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_157

    iget-object v8, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    goto :goto_15d

    :cond_157
    sget v8, Lmiui/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {v2, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    :goto_15d
    iget-object v9, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v10, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v9, v10}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v9, :cond_18e

    iget-object v10, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v10, v9}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    iget-object v10, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v10, v8}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    iget-object v10, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v10, v7}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    iget-object v10, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v11, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v10, v11}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v9, v10}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    invoke-virtual {v10, v9}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {v10, v8}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    invoke-virtual {v10, v7}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    :cond_18e
    iget-object v10, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/internal/app/ActivityDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_19d
    sget v7, Lcom/miui/internal/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v2, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a8

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->setImmersionMenuEnabled(Z)V

    :cond_1a8
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1ac
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "You need to use a miui theme (or descendant) with this activity."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return v1

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->collapseActionView()V

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->installSubDecor()V

    invoke-static {}, Lmiui/extension/ExtensionManager;->getInstance()Lmiui/extension/ExtensionManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "Activity"

    const-string v3, "onCreate"

    invoke-virtual {v0, v2, v3, v1}, Lmiui/extension/ExtensionManager;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    if-eqz p1, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    const/4 v4, 0x0

    if-nez v3, :cond_2b

    if-nez v2, :cond_21

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    invoke-direct {p0, v4, v2}, Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    :cond_21
    if-eqz v1, :cond_2f

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    invoke-direct {p0, v4, v0, v2}, Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    goto :goto_2f

    :cond_2b
    if-eqz v2, :cond_2e

    const/4 v4, 0x1

    :cond_2e
    move v1, v4

    :cond_2f
    :goto_2f
    if-eqz v1, :cond_35

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_38

    :cond_35
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    :cond_38
    :goto_38
    return-object v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->superOnMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_45

    if-nez p1, :cond_45

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_45

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    goto :goto_3e

    :cond_32
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v0

    :goto_3e
    if-nez v0, :cond_45

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_45
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPostResume()V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_c
    return-void
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    if-eqz p1, :cond_a

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_11

    const-string v0, "miui:ActionBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_11
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_13

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v1, "miui:ActionBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_13
    return-void
.end method

.method public onStop()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->dismissImmersionMenu(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl;->getActionBarOverlayLayout()Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    :cond_18
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    :cond_7
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
