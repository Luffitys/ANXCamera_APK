.class public interface abstract Lmiui/app/IFragment;
.super Ljava/lang/Object;
.source "IFragment.java"

# interfaces
.implements Lmiui/app/IImmersionMenu;


# virtual methods
.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public abstract onActionModeFinished(Landroid/view/ActionMode;)V
.end method

.method public abstract onActionModeStarted(Landroid/view/ActionMode;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onCreatePanelMenu(ILandroid/view/Menu;)Z
.end method

.method public abstract onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
.end method

.method public abstract setThemeRes(I)V
.end method

.method public abstract startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end method
