.class public Lmiui/preference/PreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferenceFragment.java"

# interfaces
.implements Lmiui/app/IFragment;


# instance fields
.field private mDelegate:Lcom/miui/internal/app/FragmentDelegate;

.field private mHasMenu:Z

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mHasMenu:Z

    iput-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mMenuVisible:Z

    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .registers 2

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mHasMenu:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mMenuVisible:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_21
    return-void
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 5

    if-nez p1, :cond_1c

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/preference/PreferenceFragment;->mHasMenu:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lmiui/preference/PreferenceFragment;->mMenuVisible:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p2}, Lmiui/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :cond_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/app/FragmentDelegate;->onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v1, :cond_23

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$attr;->preferenceScreenPaddingBottom:I

    invoke-static {v3, v4}, Lmiui/util/AttributeResolver;->resolveDimension(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_23
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_c

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_c
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lmiui/preference/PreferenceFragment;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .registers 5

    if-nez p1, :cond_19

    iget-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mHasMenu:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mMenuVisible:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p3}, Lmiui/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_19
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->onPostResume()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->onStop()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public requestWindowFeature(I)Z
    .registers 3

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    iget-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mHasMenu:Z

    if-eq v0, p1, :cond_1c

    iput-boolean p1, p0, Lmiui/preference/PreferenceFragment;->mHasMenu:Z

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_1c
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->setMenuVisibility(Z)V

    iget-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_1c

    iput-boolean p1, p0, Lmiui/preference/PreferenceFragment;->mMenuVisible:Z

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_1c
    return-void
.end method

.method public setThemeRes(I)V
    .registers 3

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method

.method public showImmersionMenu()V
    .registers 2

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->showImmersionMenu()V

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/FragmentDelegate;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public updateOptionsMenuContent()V
    .registers 2

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mHasMenu:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lmiui/preference/PreferenceFragment;->mMenuVisible:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lmiui/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/preference/PreferenceFragment;->mDelegate:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_1d
    return-void
.end method
