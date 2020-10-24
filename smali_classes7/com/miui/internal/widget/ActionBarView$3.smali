.class Lcom/miui/internal/widget/ActionBarView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$3;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$3;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarView;->access$200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    return-void
.end method
