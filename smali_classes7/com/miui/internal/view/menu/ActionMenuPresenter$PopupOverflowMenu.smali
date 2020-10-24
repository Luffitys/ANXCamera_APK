.class Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;
.super Lcom/miui/internal/view/menu/MenuPopupHelper;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    iget-object p1, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    sget p1, Lcom/miui/internal/R$layout;->overflow_popup_menu_item_layout:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->setMenuItemLayout(I)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$700(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$700(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    invoke-super {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->onDismiss()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$602(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    return-void
.end method

.method public update(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
