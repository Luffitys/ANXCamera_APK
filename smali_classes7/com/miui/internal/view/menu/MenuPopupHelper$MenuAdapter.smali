.class Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/MenuPopupHelper;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    iput-object p2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$400(Lcom/miui/internal/view/menu/MenuPopupHelper;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$400(Lcom/miui/internal/view/menu/MenuPopupHelper;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/MenuItemImpl;

    if-ne v4, v0, :cond_0

    iput v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$100(Lcom/miui/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez p0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getItem(I)Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$100(Lcom/miui/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz p0, :cond_1

    if-lt p1, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {p2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$300(Lcom/miui/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->access$200(Lcom/miui/internal/view/menu/MenuPopupHelper;)I

    move-result v1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/miui/internal/view/menu/MenuView$ItemView;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/internal/view/menu/MenuPopupHelper;

    iget-boolean v1, v1, Lcom/miui/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/miui/internal/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p0

    invoke-interface {p3, p0, v0}, Lcom/miui/internal/view/menu/MenuView$ItemView;->initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
