.class Lcom/miui/internal/widget/ActionBarView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$2;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$2;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarView;->access$100(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_0
    return-void
.end method
