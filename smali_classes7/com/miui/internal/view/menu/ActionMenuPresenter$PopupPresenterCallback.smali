.class Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    instance-of p0, p1, Lcom/miui/internal/view/menu/SubMenuBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->close(Z)V

    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    check-cast p1, Lcom/miui/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    return v0
.end method
