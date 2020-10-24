.class public abstract Lcom/miui/internal/app/ActionBarDelegateImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/app/ActionBarDelegate;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# static fields
.field static final METADATA_UI_OPTIONS:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field private static final TAG:Ljava/lang/String; = "ActionBarDelegate"

.field static final UI_OPTION_SPLIT_ACTION_BAR_WHEN_NARROW:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field private mActionBar:Lmiui/app/ActionBar;

.field protected mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field protected mActionMode:Landroid/view/ActionMode;

.field final mActivity:Landroid/app/Activity;

.field protected mFeatureIndeterminateProgress:Z

.field protected mFeatureProgress:Z

.field mHasActionBar:Z

.field protected mImmersionLayoutResourceId:I

.field private mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mImmersionMenuEnabled:Z

.field protected mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

.field mOverlayActionBar:Z

.field protected mSubDecorInstalled:Z

.field private mTranslucentStatus:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 2

    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    return-object v0
.end method

.method public dismissImmersionMenu(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method public final getActionBar()Lmiui/app/ActionBar;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/miui/internal/app/ActionBarDelegate;->createActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    return-object p0
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public getTranslucentStatus()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    return p0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.support.UI_OPTIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' not in manifest"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ActionBarDelegate"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isImmersionMenuEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    return p0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected abstract onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
.end method

.method public abstract synthetic onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPostResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/app/ActionBarImpl;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected abstract onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
.end method

.method public onStop()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/app/ActionBarImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->showOverflowMenu()Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result p0

    return p0

    :cond_0
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    return v1

    :cond_2
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    return v1

    :cond_3
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    return v1
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->showImmersionMore()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->hideImmersionMore()Z

    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/miui/internal/app/ActionBarDelegate;->invalidateOptionsMenu()V

    :cond_2
    return-void
.end method

.method protected setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    :cond_1
    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    :cond_1
    return-void
.end method

.method public showImmersionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t find anchor view in actionbar. Do you use default actionbar and immersion menu is enabled?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "ActionBarDelegate"

    const-string p1, "Try to show immersion menu when immersion menu disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->update(Landroid/view/Menu;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {p0, p1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must specify a valid anchor view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
