.class public Lmiui/app/Fragment;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Lmiui/app/IFragment;


# instance fields
.field private mDelegate:Lcom/miui/internal/app/FragmentDelegate;

.field private mHasMenu:Z

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/Fragment;->mHasMenu:Z

    iput-boolean v0, p0, Lmiui/app/Fragment;->mMenuVisible:Z

    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    iget-object v0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiui/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiui/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lmiui/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p2, p3}, Lcom/miui/internal/app/FragmentDelegate;->onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/app/Fragment;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiui/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiui/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onPostResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onStop()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    move-result p0

    return p0
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    iget-boolean v0, p0, Lmiui/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiui/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setImmersionMenuEnabled(Z)V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    iget-boolean v0, p0, Lmiui/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiui/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/FragmentDelegate;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    return-void
.end method

.method public setThemeRes(I)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method

.method public showImmersionMenu()V
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu()V

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public updateOptionsMenuContent()V
    .locals 1

    iget-object v0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/app/Fragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
