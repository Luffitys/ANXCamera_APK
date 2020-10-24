.class Lcom/miui/internal/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarContextView;->access$000(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarContextView;->access$100(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarContextView;->access$200(Lcom/miui/internal/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/view/EditActionModeImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/view/ActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/view/ActionModeImpl;->onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    :cond_1
    const/high16 p0, 0x10000000

    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    return-void
.end method
