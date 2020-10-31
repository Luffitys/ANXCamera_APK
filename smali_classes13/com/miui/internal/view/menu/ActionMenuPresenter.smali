.class public Lcom/miui/internal/view/menu/ActionMenuPresenter;
.super Lcom/miui/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mListItemLayoutRes:I

.field private mListLayoutRes:I

.field private mListOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

.field private mOverflowMenuAttrs:I

.field private mOverflowMenuItem:Lcom/miui/internal/view/menu/MenuItemImpl;

.field final mPopupPresenterCallback:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    const v0, 0x10102f6

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenuAttrs:I

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    iput p4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mListLayoutRes:I

    iput p5, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mListItemLayoutRes:I

    return-void
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenuAttrs:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Lcom/miui/internal/view/menu/MenuItemImpl;
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getOverflowMenuItem()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mListLayoutRes:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mListItemLayoutRes:I

    return v0
.end method

.method static synthetic access$602(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_24

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/miui/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_21

    move-object v5, v4

    check-cast v5, Lcom/miui/internal/view/menu/MenuView$ItemView;

    invoke-interface {v5}, Lcom/miui/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_21

    return-object v4

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_24
    return-object v1
.end method

.method private getOverflowMenu()Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;
    .registers 8

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_13

    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mListOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mListOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    :cond_1f
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mListOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    return-object v0
.end method

.method private getOverflowMenuItem()Lcom/miui/internal/view/menu/MenuItemImpl;
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenuItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/miui/internal/view/menu/MenuItemImpl;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    sget v4, Lcom/miui/internal/R$id;->more:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    sget v7, Lcom/miui/internal/R$string;->more:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/miui/internal/view/menu/MenuItemImpl;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenuItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    :cond_1c
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenuItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method


# virtual methods
.method public bindItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Lcom/miui/internal/view/menu/MenuView$ItemView;)V
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/miui/internal/view/menu/MenuView$ItemView;->initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;

    invoke-interface {p2, v0}, Lcom/miui/internal/view/menu/MenuView$ItemView;->setItemInvoker(Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;)V

    return-void
.end method

.method protected createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    return-object v0
.end method

.method public dismissPopupMenus(Z)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    return v0
.end method

.method public flagActionItems()Z
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    if-ge v2, v1, :cond_10

    add-int/lit8 v2, v2, -0x1

    :cond_10
    const/4 v3, 0x0

    :goto_11
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v1, :cond_35

    if-lez v2, :cond_35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Lcom/miui/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v7

    if-nez v7, :cond_29

    invoke-virtual {v6}, Lcom/miui/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v7

    if-eqz v7, :cond_2a

    :cond_29
    move v4, v5

    :cond_2a
    invoke-virtual {v6, v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    if-eqz v4, :cond_31

    add-int/lit8 v2, v2, -0x1

    :cond_31
    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_35
    :goto_35
    if-ge v3, v1, :cond_44

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v6, v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_44
    return v5
.end method

.method public getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_c
    instance-of v1, p2, Lcom/miui/internal/view/menu/ActionMenuItemView;

    if-nez v1, :cond_11

    const/4 p2, 0x0

    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_15
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0x8

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object v1, p3

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_36
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .registers 4

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p0}, Lcom/miui/internal/view/menu/ActionMenuView;->setPresenter(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V

    return-object v0
.end method

.method public hideOverflowMenu(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v0, 0x1

    return v0

    :cond_1c
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2b
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v1, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->dismiss(Z)V

    return v0

    :cond_31
    return v1
.end method

.method public hideSubMenus()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 9

    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_15

    invoke-virtual {v1}, Lcom/miui/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    :cond_15
    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Lcom/miui/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    :cond_1f
    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_29

    invoke-virtual {v1}, Lcom/miui/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    :cond_29
    iget v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    iget-boolean v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v5, v3, v3}, Landroid/view/View;->measure(II)V

    :cond_46
    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_50

    :cond_4e
    iput-object v4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    :goto_50
    iput v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    iput-object v4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    return-void
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    :cond_12
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    iget v1, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_1a

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget v2, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    :cond_1a
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    iget v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move-object v0, p1

    :goto_9
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_19

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/miui/internal/view/menu/SubMenuBuilder;

    goto :goto_9

    :cond_19
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2a

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v3, :cond_28

    return v1

    :cond_28
    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    :cond_2a
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    new-instance v1, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    invoke-direct {v1, p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/SubMenuBuilder;)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->show(Landroid/os/IBinder;)V

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .registers 4

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->close(Z)V

    :goto_d
    return-void
.end method

.method public setActionEditMode(Z)V
    .registers 3

    if-eqz p1, :cond_6

    sget v0, Lcom/miui/internal/R$attr;->actionModeOverflowButtonStyle:I

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenuAttrs:I

    :cond_6
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setItemLimit(I)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    return-void
.end method

.method public setReserveOverflow(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public setWidthLimit(IZ)V
    .registers 4

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    iput-boolean p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 4

    invoke-virtual {p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_35

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getOverflowMenu()Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    return v2

    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .registers 8

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_34

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    xor-int/2addr v3, v4

    move v1, v3

    goto :goto_34

    :cond_30
    if-lez v2, :cond_33

    move v3, v4

    :cond_33
    move v1, v3

    :cond_34
    :goto_34
    if-eqz v1, :cond_68

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_47

    :cond_43
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_47
    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-eq v2, v3, :cond_7e

    if-eqz v2, :cond_5a

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5a
    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v3, Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7e

    :cond_68
    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-ne v2, v3, :cond_7e

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7f

    :cond_7e
    :goto_7e
    nop

    :goto_7f
    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v2, Lcom/miui/internal/view/menu/ActionMenuView;

    iget-boolean v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v2, :cond_95

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getOverflowMenu()Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->update(Lcom/miui/internal/view/menu/MenuBuilder;)V

    :cond_95
    return-void
.end method
