.class Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$000(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    new-instance p3, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;

    invoke-direct {p3, p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;-><init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V

    invoke-virtual {p2, p3}, Lmiui/widget/ImmersionListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {p2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$300(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/app/ActionBarDelegateImpl;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :goto_0
    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->dismiss(Z)V

    return-void
.end method
