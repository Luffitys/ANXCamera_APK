.class public Lcom/miui/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field mMenuLayout:I

.field mMenuView:Lcom/miui/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    sget v0, Lcom/miui/internal/R$layout;->expanded_menu_layout:I

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/internal/view/menu/ListMenuPresenter;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    iput p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuLayout:I

    iput p3, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/miui/internal/view/menu/ListMenuPresenter;-><init>(III)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/menu/ListMenuPresenter;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_b

    new-instance v0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/miui/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_b

    new-instance v0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/miui/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2e
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/ExpandedMenuView;

    return-object v0

    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 5

    iget v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_14

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_24

    :cond_14
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_24

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    :cond_2b
    iput-object p2, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    :cond_34
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    :cond_7
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    new-instance v0, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ExpandedMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_d
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ExpandedMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_c
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setId(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mId:I

    return-void
.end method

.method public setItemIndexOffset(I)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/ExpandedMenuView;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    :cond_a
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method
