.class public Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;
.super Ljava/lang/Object;
.source "ContextMenuPopupWindowHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private mContextMenuPopupWindow:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;->dismiss()V

    :cond_7
    return-void
.end method

.method public onDismiss()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    :cond_a
    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->clearAll()V

    return-void
.end method

.method public setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public show(Landroid/os/IBinder;Landroid/view/View;FF)V
    .registers 8

    new-instance v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, v1, v2, p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;FF)V

    return-void
.end method
