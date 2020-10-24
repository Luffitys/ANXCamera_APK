.class Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;


# instance fields
.field private mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method

.method private getListMenuPresenter(Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/ListMenuPresenter;
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v2, v1, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$400(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$500(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/miui/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

    return-object p0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object p0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->hideOverflowMenu()Z

    return-void
.end method

.method public getOverflowMenuView(Lcom/miui/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->getListMenuPresenter(Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/ListMenuPresenter;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object p0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object p0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result p0

    return p0
.end method

.method public tryShow()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object p0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->showOverflowMenu()Z

    move-result p0

    return p0
.end method

.method public update(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->getOverflowMenuView(Lcom/miui/internal/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setOverflowMenuView(Landroid/view/View;)V

    return-void
.end method
