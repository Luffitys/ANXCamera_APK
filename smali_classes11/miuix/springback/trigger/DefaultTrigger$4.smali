.class Lmiuix/springback/trigger/DefaultTrigger$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionStart;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionStart;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3800(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;I)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionStart;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3800(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    move-result-object p2

    invoke-static {p1, p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)V
    .locals 5

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2002(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$Action;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1900(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    invoke-virtual {p1, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1900(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v4

    iget v4, v4, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/RelativeLayout;->layout(IIII)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$4;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1300(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_0
    return-void
.end method

.method public onUpdateTriggerTextIndex(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;ILjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object p0

    aput-object p3, p0, p2

    return-void
.end method
