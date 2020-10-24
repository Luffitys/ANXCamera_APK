.class public Lcom/miui/internal/app/FragmentDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source ""


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
    .locals 1

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
    .locals 0

    iget-byte p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return p0
.end method

.method static synthetic access$072(Lcom/miui/internal/app/FragmentDelegate;I)B
    .locals 1

    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return p1
.end method

.method static synthetic access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    return-object p0
.end method


# virtual methods
.method public createActionBar()Lmiui/app/ActionBar;
    .locals 1

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    iget v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object p0
.end method

.method final installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {p2, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    iget-boolean p3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    iget p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz p3, :cond_0

    const p3, 0x1010054

    invoke-static {p1, p3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget p3, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/miui/internal/widget/ActionBarView;

    iput-object p3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p3, v1}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean p3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p3}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    :cond_1
    iget-boolean p3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p3}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {p3, v1, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object p3

    const-string v1, "splitActionBarWhenNarrow"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    goto :goto_0

    :cond_4
    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, Lmiui/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v1

    :goto_0
    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, p3}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    sget v2, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    invoke-virtual {v2, p3}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    iput-object p2, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_7

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-byte v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_0

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    instance-of v0, p0, Lmiui/app/IFragment;

    if-eqz v0, :cond_0

    check-cast p0, Lmiui/app/IFragment;

    invoke-interface {p0, p1}, Lmiui/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast p0, Lmiui/app/IFragment;

    invoke-interface {p0, p1, p2}, Lmiui/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    :cond_0
    sget v1, Lmiui/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    :cond_1
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setImmersionMenuEnabled(Z)V

    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/internal/app/FragmentDelegate;->installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lmiui/app/IFragment;

    invoke-interface {v1, v0, p1, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lmiui/app/IFragment;

    invoke-interface {v1, v0, p1, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object p0

    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You need to use a miui theme (or descendant) with this fragment."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p0, p2}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    instance-of v0, p0, Lmiui/app/IFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast p0, Lmiui/app/IFragment;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3}, Lmiui/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

.method public setExtraThemeRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public updateOptionsMenu(I)V
    .locals 1

    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return-void
.end method
