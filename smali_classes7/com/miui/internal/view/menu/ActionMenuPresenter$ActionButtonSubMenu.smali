.class Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
.super Lcom/miui/internal/view/menu/MenuDialogHelper;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/SubMenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0, p2}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object p0, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$802(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    return-void
.end method
