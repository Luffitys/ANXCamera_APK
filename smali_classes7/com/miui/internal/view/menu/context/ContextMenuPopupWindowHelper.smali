.class public Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private mContextMenuPopupWindow:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->clearAll()V

    return-void
.end method

.method public setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public show(Landroid/os/IBinder;Landroid/view/View;FF)V
    .locals 2

    new-instance p1, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {p1, v0, v1, p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-interface {p1, p2, p0, p3, p4}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;FF)V

    return-void
.end method
