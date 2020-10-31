.class Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;
.super Ljava/lang/Object;
.source "ContextMenuPopupWindowImpl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    # getter for: Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;
    invoke-static {v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$000(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    # getter for: Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$100(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    new-instance v3, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;-><init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_28
    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->dismiss()V

    return-void
.end method
