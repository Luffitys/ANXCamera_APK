.class Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/MenuPopupHelper;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    iput-object p2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$400(Lcom/miui/internal/view/menu/MenuPopupHelper;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$400(Lcom/miui/internal/view/menu/MenuPopupHelper;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2b

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/MenuItemImpl;

    if-ne v4, v0, :cond_28

    iput v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getCount()I
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/miui/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$100(Lcom/miui/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_15
    iget v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getItem(I)Lcom/miui/internal/view/menu/MenuItemImpl;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/miui/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$100(Lcom/miui/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_15
    iget v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_1d

    if-lt p1, v1, :cond_1d

    add-int/lit8 p1, p1, 0x1

    :cond_1d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_13

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/miui/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$300(Lcom/miui/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I
    invoke-static {v2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$200(Lcom/miui/internal/view/menu/MenuPopupHelper;)I

    move-result v2

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_13
    move-object v1, p2

    check-cast v1, Lcom/miui/internal/view/menu/MenuView$ItemView;

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    iget-boolean v2, v2, Lcom/miui/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v2, :cond_23

    move-object v2, p2

    check-cast v2, Lcom/miui/internal/view/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_23
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/miui/internal/view/menu/MenuView$ItemView;->initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
