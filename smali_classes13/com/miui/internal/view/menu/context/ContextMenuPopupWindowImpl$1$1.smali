.class Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;
.super Ljava/lang/Object;
.source "ContextMenuPopupWindowImpl.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

.field final synthetic val$subMenu:Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iput-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->update(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v1, v1, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    # getter for: Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$200(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v2, v2, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    # getter for: Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F
    invoke-static {v2}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$300(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    iget-object v3, v3, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    # getter for: Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F
    invoke-static {v3}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$400(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)F

    move-result v3

    # invokes: Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->fastShowAsContextMenu(Landroid/view/View;FF)V
    invoke-static {v0, v1, v2, v3}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->access$500(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;Landroid/view/View;FF)V

    return-void
.end method
