.class public Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImmersionMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAvailableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .registers 4

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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->checkMenuItem(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return-void
.end method


# virtual methods
.method protected checkMenuItem(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_2a

    iget-object v1, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/miui/internal/R$layout;->immersion_popup_menu_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;-><init>(Lcom/miui/internal/view/menu/ImmersionMenuAdapter$1;)V

    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2a
    iget-object v1, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2, p1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapterHelper;->calcAndSetPadding(Landroid/content/Context;IILandroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_65

    move-object v2, v1

    check-cast v2, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_55

    iget-object v4, v2, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v2, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5c

    :cond_55
    iget-object v0, v2, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5c
    iget-object v0, v2, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_65
    return-object p2
.end method

.method public update(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method
