.class Lmiuix/springback/trigger/DefaultTrigger$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/springback/view/SpringBackLayout$OnScrollListener;


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lmiuix/springback/view/SpringBackLayout;II)V
    .locals 9

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v0

    invoke-static {p2, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1402(Lmiuix/springback/trigger/DefaultTrigger;I)I

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    neg-int v0, v0

    invoke-static {p2, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1502(Lmiuix/springback/trigger/DefaultTrigger;I)I

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1600(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/animation/utils/VelocityMonitor;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [F

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p2, v1}, Lmiuix/animation/utils/VelocityMonitor;->update([F)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1600(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/animation/utils/VelocityMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v1

    invoke-static {p2, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1702(Lmiuix/springback/trigger/DefaultTrigger;F)F

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setTop(I)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1900(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setBottom(I)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p2

    const/high16 v1, 0x3e800000    # 0.25f

    if-gez p2, :cond_2

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v2

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v2

    iget v2, v2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v2

    iget v2, v2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    int-to-float v2, v2

    add-float/2addr p2, v2

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1400(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float p2, v2, p2

    if-gez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p2

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    move-result-object v2

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    move-result-object v2

    invoke-static {p2, v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_1
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1900(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v2

    iget v2, v2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    sub-int/2addr p2, v2

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    :cond_2
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    const/16 v2, 0x8

    if-eqz p2, :cond_d

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    instance-of p2, p2, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v4

    iget v4, v4, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    sub-int/2addr p2, v4

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v1

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1400(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float p2, v1, p2

    if-gez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    move-result-object v1

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    move-result-object v1

    invoke-static {p2, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$500(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p2

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1300(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object v1

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1400(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    if-le p2, v1, :cond_5

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    move-result-object v1

    invoke-static {p2, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_5
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    invoke-static {p2, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2802(Lmiuix/springback/trigger/DefaultTrigger;I)I

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    invoke-static {p2, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2902(Lmiuix/springback/trigger/DefaultTrigger;I)I

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    invoke-static {p2, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3002(Lmiuix/springback/trigger/DefaultTrigger;I)I

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, p2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    move v6, v5

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v7

    div-float/2addr v6, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v8, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v8}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v8, v7

    if-gez v7, :cond_7

    move p2, v5

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v7}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v8, p2

    sub-float/2addr v7, v8

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v8

    div-float/2addr v7, p2

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_1
    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v7, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v7}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v4, v1

    mul-float/2addr v7, v4

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v8, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v8}, Lmiuix/springback/trigger/DefaultTrigger;->access$2900(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTop(I)V

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v8, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v8}, Lmiuix/springback/trigger/DefaultTrigger;->access$3000(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBottom(I)V

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setAlpha(F)V

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setScaleX(F)V

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setScaleY(F)V

    :cond_8
    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v4

    iget v4, v4, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    if-ge v1, v4, :cond_b

    cmpl-float p2, p2, v5

    if-lez p2, :cond_9

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_9
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    move-result-object v0

    if-ne p2, v0, :cond_a

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$500(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2800(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBottom(I)V

    goto/16 :goto_3

    :cond_b
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    if-lt p2, v1, :cond_d

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2800(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v4

    iget v4, v4, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    sub-int/2addr v1, v4

    add-int/2addr p2, v1

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object v1

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionComplete;

    move-result-object v4

    if-eq v1, v4, :cond_c

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setBottom(I)V

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v4

    iget v4, v4, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2

    :cond_c
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_2
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    move-result-object v1

    if-ne p2, v1, :cond_d

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->access$500(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_3
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;->handleScrolled(II)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    if-ge p1, p2, :cond_e

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    if-lt p1, p2, :cond_f

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_f

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3200(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_f
    :goto_4
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p0

    neg-int p1, p3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    :cond_10
    return-void
.end method

.method public onStateChanged(IIZ)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0, p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$602(Lmiuix/springback/trigger/DefaultTrigger;I)I

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0, p3}, Lmiuix/springback/trigger/DefaultTrigger;->access$702(Lmiuix/springback/trigger/DefaultTrigger;Z)Z

    iget-object p3, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p3}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;->handleScrollStateChange(II)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;

    move-result-object p2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1300(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
