.class Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
.super Lcom/miui/internal/view/menu/MenuDialogHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/SubMenuBuilder;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0, p2}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iget-object v0, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$802(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    return-void
.end method
