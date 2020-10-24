.class Lmiuix/springback/trigger/DefaultTrigger$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p4

    neg-int p4, p4

    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p4}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p4}, Lmiuix/springback/trigger/DefaultTrigger;->access$1900(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4, p5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1900(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object p3, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p3}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getBottom()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p6, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p6}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getBottom()I

    move-result p6

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    add-int/2addr p6, p1

    invoke-virtual {p2, p5, p3, p4, p6}, Landroid/widget/RelativeLayout;->layout(IIII)V

    move p1, p5

    :goto_0
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/springback/trigger/DefaultTrigger$Action;

    instance-of p3, p2, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    if-eqz p3, :cond_0

    check-cast p2, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    invoke-static {}, Lmiuix/springback/trigger/DefaultTrigger;->access$3400()I

    move-result p3

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    if-lt p3, p4, :cond_0

    iget-object p3, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p3}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p3

    iget p4, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    sub-int/2addr p4, p5

    invoke-virtual {p3, p4}, Landroid/widget/ProgressBar;->offsetTopAndBottom(I)V

    iget-object p3, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p3}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p3

    iget p4, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    sub-int/2addr p4, p5

    invoke-virtual {p3, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p3, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p3}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p3

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    sub-int/2addr p2, p5

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2800(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-static {p1, p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2802(Lmiuix/springback/trigger/DefaultTrigger;I)I

    :cond_2
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2900(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3000(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-gtz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getTop()I

    move-result p2

    invoke-static {p1, p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2902(Lmiuix/springback/trigger/DefaultTrigger;I)I

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getBottom()I

    move-result p2

    invoke-static {p1, p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$3002(Lmiuix/springback/trigger/DefaultTrigger;I)I

    :cond_4
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    :cond_5
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    move-result-object p2

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    if-le p1, p2, :cond_6

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2800(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p2

    iget-object p3, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p3}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p4

    iget p4, p4, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    sub-int/2addr p3, p4

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBottom(I)V

    :cond_6
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p2

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$3;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    :cond_7
    return-void
.end method
