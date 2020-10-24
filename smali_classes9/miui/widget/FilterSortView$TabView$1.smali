.class Lmiui/widget/FilterSortView$TabView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/FilterSortView$TabView;

.field final synthetic val$l:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/FilterSortView$TabView$1;->this$0:Lmiui/widget/FilterSortView$TabView;

    iput-object p2, p0, Lmiui/widget/FilterSortView$TabView$1;->val$l:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->this$0:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiui/widget/FilterSortView$TabView;->access$600(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->this$0:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiui/widget/FilterSortView$TabView;->access$700(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->access$800(Lmiui/widget/FilterSortView$TabView;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->this$0:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->access$400(Lmiui/widget/FilterSortView$TabView;Z)V

    :goto_0
    iget-object p0, p0, Lmiui/widget/FilterSortView$TabView$1;->val$l:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const p0, 0x10000005

    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method
