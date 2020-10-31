.class Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;
.super Lcom/miui/internal/view/menu/MenuBuilder;
.source "ContextMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/menu/ContextMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextMenuBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setHeaderIcon(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 3

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 3

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderTitle(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 3

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 3

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;
    .registers 3

    invoke-virtual {p0}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    new-instance v0, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
