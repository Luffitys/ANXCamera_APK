.class Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;
.super Lmiuix/springback/trigger/DefaultTrigger$TriggerState;
.source ""


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 1

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    return-void
.end method


# virtual methods
.method handleScrollStateChange(II)V
    .locals 1

    if-nez p2, :cond_3

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionStart;

    move-result-object p2

    invoke-static {p1, p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$Action;->notifyTriggered()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$500(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setScaleX(F)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setScaleY(F)V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$Action;->notifyTriggered()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    check-cast p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->isNoData()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3800(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    check-cast p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->getCountNoData()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p0

    check-cast p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p0

    check-cast p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3800(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p0

    check-cast p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method
