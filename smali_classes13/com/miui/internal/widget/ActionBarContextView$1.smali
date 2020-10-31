.class Lcom/miui/internal/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # getter for: Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarContextView;->access$000(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object v0

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # getter for: Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarContextView;->access$100(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object v0

    :goto_16
    nop

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # getter for: Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/miui/internal/widget/ActionBarContextView;->access$200(Lcom/miui/internal/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/EditActionModeImpl;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/miui/internal/view/EditActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/view/EditActionModeImpl;->onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    :cond_2e
    const/high16 v2, 0x10000000

    invoke-static {v2}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_39
    return-void
.end method
