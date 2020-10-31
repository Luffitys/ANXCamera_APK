.class Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuCallback"
.end annotation


# instance fields
.field private mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/util/ContextHelper;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .registers 5

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eq v0, p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->onCloseSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    :cond_9
    if-eqz p2, :cond_28

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_19
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    :cond_28
    return-void
.end method

.method public onCloseSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_12
    return-void
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    new-instance v0, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0
.end method
