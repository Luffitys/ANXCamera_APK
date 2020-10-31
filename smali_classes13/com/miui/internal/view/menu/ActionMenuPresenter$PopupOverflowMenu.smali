.class Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;
.super Lcom/miui/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupOverflowMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .registers 6

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    iget-object p1, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    sget p1, Lcom/miui/internal/R$layout;->overflow_popup_menu_item_layout:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->setMenuItemLayout(I)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$700(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$700(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_15
    return-void
.end method

.method public onDismiss()V
    .registers 3

    invoke-super {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->onDismiss()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;
    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$602(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    return-void
.end method

.method public update(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method
