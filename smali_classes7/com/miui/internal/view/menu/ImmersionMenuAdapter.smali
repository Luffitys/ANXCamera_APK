.class public Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private mAvailableItems:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->checkMenuItem(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkMenuItem(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result p0

    return p0
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/miui/internal/R$layout;->immersion_popup_menu_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;-><init>(Lcom/miui/internal/view/menu/ImmersionMenuAdapter$1;)V

    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object p3, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getCount()I

    move-result v1

    invoke-static {p3, v1, p1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapterHelper;->calcAndSetPadding(Landroid/content/Context;IILandroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    check-cast p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
