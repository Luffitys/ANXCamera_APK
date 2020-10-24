.class public Lcom/miui/internal/view/ActionModeImpl;
.super Landroid/view/ActionMode;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lmiui/view/ActionModeAnimationListener;


# static fields
.field public static final TYPE_FLOATING:I = 0x1

.field public static final TYPE_PRIMARY:I


# instance fields
.field private mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

.field protected mActionModeView:Ljava/lang/ref/WeakReference;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field protected mContext:Landroid/content/Context;

.field mFinishing:Z

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mFinishing:Z

    iput-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    new-instance p2, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {p2, p1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mFinishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mFinishing:Z

    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0}, Lcom/miui/internal/widget/ActionModeView;->closeMode()V

    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;->onActionModeFinish(Landroid/view/ActionMode;)V

    :cond_1
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getCustomView not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Landroid/view/MenuInflater;

    iget-object p0, p0, Lcom/miui/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getSubtitle not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getTitle not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/miui/internal/view/ActionModeImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/ActionModeImpl;->invalidate()V

    return-void
.end method

.method public onStart(Z)V
    .locals 0

    return-void
.end method

.method public onStop(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {p1, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    return-void
.end method

.method public setActionModeCallback(Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/ActionModeImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    return-void
.end method

.method public setActionModeView(Lcom/miui/internal/widget/ActionModeView;)V
    .locals 1

    invoke-interface {p1, p0}, Lcom/miui/internal/widget/ActionModeView;->addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setCustomView not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSubtitle(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setSubTitle not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setSubTitle not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTitle(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setTitle not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setTitle not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
