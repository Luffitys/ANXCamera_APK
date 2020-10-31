.class public Lmiui/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/PopupMenu$OnMenuItemClickListener;,
        Lmiui/widget/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Lmiui/widget/PopupMenu$OnDismissListener;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Lmiui/widget/PopupMenu$OnMenuItemClickListener;

.field private mPopup:Lcom/miui/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/widget/PopupMenu;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/PopupMenu;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    new-instance v1, Lmiui/widget/PopupMenu$1;

    invoke-direct {v1, p0}, Lmiui/widget/PopupMenu$1;-><init>(Lmiui/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    iput-object p2, p0, Lmiui/widget/PopupMenu;->mAnchor:Landroid/view/View;

    new-instance v0, Lcom/miui/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lmiui/widget/PopupMenu;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1, v1, p2}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Lmiui/widget/PopupMenu;->mPopup:Lcom/miui/internal/view/menu/MenuPopupHelper;

    new-instance v1, Lmiui/widget/PopupMenu$2;

    invoke-direct {v1, p0}, Lmiui/widget/PopupMenu$2;-><init>(Lmiui/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/PopupMenu;->mPopup:Lcom/miui/internal/view/menu/MenuPopupHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lmiui/widget/PopupMenu;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lmiui/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PopupMenu;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/PopupMenu;->mDismissListener:Lmiui/widget/PopupMenu$OnDismissListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lmiui/widget/PopupMenu$OnDismissListener;->onDismiss(Lmiui/widget/PopupMenu;)V

    :cond_7
    return-void
.end method

.method public onCloseSubMenu(Lcom/miui/internal/view/menu/SubMenuBuilder;)V
    .registers 2

    return-void
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lmiui/widget/PopupMenu;->mMenuItemClickListener:Lmiui/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_9

    invoke-interface {v0, p2}, Lmiui/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    :cond_c
    new-instance v0, Lcom/miui/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lmiui/widget/PopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, v2, p1, v3}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->show()V

    return v1
.end method

.method public setOnDismissListener(Lmiui/widget/PopupMenu$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/PopupMenu;->mDismissListener:Lmiui/widget/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Lmiui/widget/PopupMenu$OnMenuItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/PopupMenu;->mMenuItemClickListener:Lmiui/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/PopupMenu;->mPopup:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->show()V

    return-void
.end method
