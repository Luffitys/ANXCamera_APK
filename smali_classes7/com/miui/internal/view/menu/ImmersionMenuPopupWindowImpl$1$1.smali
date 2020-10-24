.class Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

.field final synthetic val$subMenu:Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iput-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->update(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {v0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$100(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {p0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$200(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lmiui/widget/ImmersionListPopupWindow;->fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
