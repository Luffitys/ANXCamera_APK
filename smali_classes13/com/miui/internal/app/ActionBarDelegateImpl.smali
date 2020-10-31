.class public abstract Lcom/miui/internal/app/ActionBarDelegateImpl;
.super Ljava/lang/Object;
.source "ActionBarDelegateImpl.java"

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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 3

    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    return-object v0
.end method

.method public dismissImmersionMenu(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->dismiss(Z)V

    :cond_7
    return-void
.end method

.method public final getActionBar()Lmiui/app/ActionBar;
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    goto :goto_17

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    return-object v0
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lmiui/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_1f

    :cond_16
    new-instance v1, Landroid/view/MenuInflater;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public getTranslucentStatus()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    return v0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_20

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.support.UI_OPTIONS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1f} :catch_21

    move-object v2, v3

    :cond_20
    return-object v2

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' not in manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActionBarDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public isImmersionMenuEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected abstract onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onPostResume()V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_14
    return-void
.end method

.method protected abstract onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
.end method

.method public onStop()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_17
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p2, :cond_15

    goto :goto_1b

    :cond_15
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_28

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->showOverflowMenu()Z

    :cond_28
    :goto_28
    return-void

    :cond_29
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    return-void
.end method

.method public requestWindowFeature(I)Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_19

    const/16 v0, 0x9

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result v0

    return v0

    :cond_16
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    return v1

    :cond_19
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    return v1

    :cond_1c
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    return v1

    :cond_1f
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    return v1
.end method

.method public setImmersionMenuEnabled(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_24

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->showImmersionMore()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {v0, v1, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    goto :goto_21

    :cond_1c
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hideImmersionMore()Z

    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->invalidateOptionsMenu()V

    :cond_24
    return-void
.end method

.method protected setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    :cond_e
    return-void
.end method

.method public setTranslucentStatus(I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ltz v0, :cond_12

    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    move p1, v0

    :cond_12
    iget v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    if-eq v1, p1, :cond_2c

    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    iput p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    :cond_2c
    return-void
.end method

.method public showImmersionMenu()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_12

    sget v1, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find anchor view in actionbar. Do you use default actionbar and immersion menu is enabled?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    if-nez v0, :cond_c

    const-string v0, "ActionBarDelegate"

    const-string v1, "Try to show immersion menu when immersion menu disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-eqz p1, :cond_4c

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    :cond_1b
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-nez v0, :cond_39

    new-instance v0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    goto :goto_3e

    :cond_39
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->update(Landroid/view/Menu;)V

    :goto_3e
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_4b
    return-void

    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a valid anchor view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
