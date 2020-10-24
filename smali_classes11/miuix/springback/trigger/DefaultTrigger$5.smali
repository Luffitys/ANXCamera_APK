.class Lmiuix/springback/trigger/DefaultTrigger$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionStart;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$500(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p0

    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)V
    .locals 4

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/DefaultTrigger$Action;

    if-ne v0, p1, :cond_0

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object v2

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    move-result-object v3

    invoke-static {v2, v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2002(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$Action;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$500(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    neg-int v0, v0

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v1}, Landroid/widget/RelativeLayout;->layout(IIII)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$5;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1300(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_0
    return-void
.end method

.method public onUpdateTriggerTextIndex(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;ILjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$500(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[Ljava/lang/String;

    move-result-object p0

    aput-object p3, p0, p2

    return-void
.end method
