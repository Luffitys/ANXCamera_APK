.class public Lcom/miui/internal/app/FragmentDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source "FragmentDelegate.java"


# static fields
.field private static final INVALIDATE_MENU_POSTED:I = 0x10

.field public static final MENU_INVALIDATE:I = 0x1


# instance fields
.field private mExtraThemeRes:I

.field private mFragment:Landroid/app/Fragment;

.field private mInvalidateMenuFlags:B

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mSubDecor:Landroid/view/View;

.field private mThemedContext:Landroid/content/Context;

.field private final mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$1;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$2;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/FragmentDelegate;)B
    .registers 2

    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return v0
.end method

.method static synthetic access$072(Lcom/miui/internal/app/FragmentDelegate;I)B
    .registers 3

    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public createActionBar()Lmiui/app/ActionBar;
    .registers 3

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    iget v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz v0, :cond_17

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    :cond_17
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object v0
.end method

.method final installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .registers 10

    iget-boolean v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    if-nez v0, :cond_be

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    iget-boolean v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mOverlayActionBar:Z

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getTranslucentStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    iget v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz v3, :cond_32

    const v3, 0x1010054

    invoke-static {p1, v3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_32
    sget v3, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ActionBarView;

    iput-object v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/miui/internal/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureProgress:Z

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    :cond_4c
    iget-boolean v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    :cond_55
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v4, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {v3, v4, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    :cond_62
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v3

    const-string v4, "splitActionBarWhenNarrow"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    goto :goto_88

    :cond_79
    sget-object v4, Lmiui/R$styleable;->Window:[I

    invoke-virtual {p1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v5, Lmiui/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_88
    sget v4, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_b5

    iget-object v5, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v5, v4}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    iget-object v5, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v5, v2}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    iget-object v5, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v5, v3}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    sget v5, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v1, v5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v5}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    invoke-virtual {v5, v4}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {v5, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    invoke-virtual {v5, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    :cond_b5
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    iput-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    goto :goto_e4

    :cond_be
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_e5

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_e5

    :cond_e4
    :goto_e4
    nop

    :cond_e5
    :goto_e5
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-byte v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_20

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method protected onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    instance-of v1, v0, Lmiui/app/IFragment;

    if-eqz v1, :cond_d

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1}, Lmiui/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1, p2}, Lmiui/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9b

    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    :cond_20
    sget v1, Lmiui/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    :cond_2d
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setTranslucentStatus(I)V

    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mHasActionBar:Z

    if-eqz v2, :cond_8e

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/miui/internal/app/FragmentDelegate;->installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v3, Lmiui/app/IFragment;

    invoke-interface {v3, v1, v2, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, v2, :cond_8d

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_87

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_87
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8d
    goto :goto_98

    :cond_8e
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lmiui/app/IFragment;

    invoke-interface {v2, v1, p1, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    :goto_98
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object v2

    :cond_9b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to use a miui theme (or descendant) with this fragment."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p2}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/miui/internal/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    instance-of v1, v0, Lmiui/app/IFragment;

    if-eqz v1, :cond_b

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6

    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lmiui/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public setExtraThemeRes(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    :cond_d
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public updateOptionsMenu(I)V
    .registers 4

    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return-void
.end method
