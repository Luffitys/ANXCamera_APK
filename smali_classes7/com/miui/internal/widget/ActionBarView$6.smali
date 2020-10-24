.class Lcom/miui/internal/widget/ActionBarView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarView;

.field final synthetic val$actionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

.field final synthetic val$moreButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$6;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView$6;->val$actionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    iput-object p3, p0, Lcom/miui/internal/widget/ActionBarView$6;->val$moreButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$6;->val$actionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$6;->val$moreButton:Landroid/view/View;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$6;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
