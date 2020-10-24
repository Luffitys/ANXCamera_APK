.class public Lmiui/app/Activity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lmiui/app/IActivity;


# instance fields
.field private mDelegate:Lcom/miui/internal/app/ActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/internal/app/ActivityDelegate;

    const-class v1, Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/app/ActivityDelegate;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    iput-object v0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public bridge synthetic getActionBar()Landroid/app/ActionBar;
    .locals 0

    invoke-virtual {p0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getTranslucentStatus()I
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result p0

    return p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->onPostResume()V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestExtraWindowFeature(I)Z
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    move-result p0

    return p0
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setImmersionMenuEnabled(Z)V

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    return-void
.end method

.method public showImmersionMenu()V
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu()V

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lmiui/app/Activity;->mDelegate:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
