.class Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p0}, Lcom/miui/internal/util/ContextHelper;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->onCloseSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    :cond_2
    return-void
.end method

.method public onCloseSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    new-instance v0, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0
.end method
