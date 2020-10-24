.class Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

.field final synthetic val$subMenu:Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iput-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->update(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-static {v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$200(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v2, v2, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-static {v2}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$300(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)F

    move-result v2

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-static {p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$400(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)F

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$500(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;Landroid/view/View;FF)V

    return-void
.end method
