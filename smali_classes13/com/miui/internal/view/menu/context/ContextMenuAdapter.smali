.class public Lcom/miui/internal/view/menu/context/ContextMenuAdapter;
.super Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
.source "ContextMenuAdapter.java"


# instance fields
.field private mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    return-void
.end method


# virtual methods
.method protected checkMenuItem(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->checkMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;->mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;

    if-nez v1, :cond_16

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;->mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    return v1

    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only one menu item is allowed to have CATEGORY_SYSTEM order!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    return v0
.end method

.method getLastCategorySystemOrderMenuItem()Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;->mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method
