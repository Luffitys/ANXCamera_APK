.class Lmiui/widget/FilterSortView$TabView$1;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/FilterSortView$TabView;

.field final synthetic val$l:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lmiui/widget/FilterSortView$TabView$1;->this$0:Lmiui/widget/FilterSortView$TabView;

    iput-object p2, p0, Lmiui/widget/FilterSortView$TabView$1;->val$l:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->this$0:Lmiui/widget/FilterSortView$TabView;

    # getter for: Lmiui/widget/FilterSortView$TabView;->mFiltered:Z
    invoke-static {v0}, Lmiui/widget/FilterSortView$TabView;->access$600(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->this$0:Lmiui/widget/FilterSortView$TabView;

    # getter for: Lmiui/widget/FilterSortView$TabView;->mDescending:Z
    invoke-static {v0}, Lmiui/widget/FilterSortView$TabView;->access$700(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v2

    xor-int/2addr v1, v2

    # invokes: Lmiui/widget/FilterSortView$TabView;->setDescending(Z)V
    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->access$800(Lmiui/widget/FilterSortView$TabView;Z)V

    goto :goto_19

    :cond_14
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->this$0:Lmiui/widget/FilterSortView$TabView;

    # invokes: Lmiui/widget/FilterSortView$TabView;->setFiltered(Z)V
    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->access$400(Lmiui/widget/FilterSortView$TabView;Z)V

    :goto_19
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->val$l:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const v0, 0x10000005

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2a
    return-void
.end method
