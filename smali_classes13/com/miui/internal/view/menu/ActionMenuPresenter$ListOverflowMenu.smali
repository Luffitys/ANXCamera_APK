.class Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListOverflowMenu"
.end annotation


# instance fields
.field private mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method

.method private getListMenuPresenter(Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/ListMenuPresenter;
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mListLayoutRes:I
    invoke-static {v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$400(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mListItemLayoutRes:I
    invoke-static {v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$500(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

    :cond_1b
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lcom/miui/internal/view/menu/ListMenuPresenter;

    return-object v0
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->hideOverflowMenu()Z

    return-void
.end method

.method public getOverflowMenuView(Lcom/miui/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .registers 4

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->getListMenuPresenter(Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/ListMenuPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return-object v0
.end method

.method public isShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public tryShow()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public update(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->getOverflowMenuView(Lcom/miui/internal/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setOverflowMenuView(Landroid/view/View;)V

    return-void
.end method
