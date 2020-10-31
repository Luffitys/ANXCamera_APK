.class Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;
.super Ljava/lang/Object;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

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

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    # getter for: Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
    invoke-static {v0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$000(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    new-instance v3, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;-><init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_29

    :cond_1f
    iget-object v1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    # getter for: Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;
    invoke-static {v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$300(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/app/ActionBarDelegateImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :goto_29
    iget-object v1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->dismiss(Z)V

    return-void
.end method
