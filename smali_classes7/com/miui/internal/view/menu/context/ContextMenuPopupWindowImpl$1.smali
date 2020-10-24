.class Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-static {p1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$000(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-static {p2}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$100(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    new-instance p3, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;

    invoke-direct {p3, p0, p1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;-><init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V

    invoke-virtual {p2, p3}, Lmiui/widget/ImmersionListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
