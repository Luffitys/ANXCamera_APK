.class Lmiuix/springback/trigger/DefaultTrigger$Tracking;
.super Lmiuix/springback/trigger/DefaultTrigger$TriggerState;
.source ""


# instance fields
.field private mLockActivated:Z

.field private mTriggerable:Z

.field private mUpTriggerable:Z

.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 1

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger$Tracking;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    return-void
.end method


# virtual methods
.method handleScrollStateChange(II)V
    .locals 0

    if-nez p2, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;

    move-result-object p2

    invoke-static {p1, p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$3102(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    :cond_1
    return-void
.end method

.method handleScrolled(II)V
    .locals 9

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-gez p1, :cond_6

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$4500(Lmiuix/springback/trigger/DefaultTrigger;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    :cond_1
    iget-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v4

    invoke-static {v3, v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2002(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$Action;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v4

    iget v4, v4, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$4500(Lmiuix/springback/trigger/DefaultTrigger;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$4502(Lmiuix/springback/trigger/DefaultTrigger;Z)Z

    iput-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1900(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->isNoData()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3800(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->getCountNoData()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v3

    check-cast v3, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3800(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onEntered()V

    :cond_4
    iget-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    if-eq p1, v0, :cond_5

    if-eqz v0, :cond_5

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$Action;->notifyActivated()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    invoke-virtual {p1, v2, p2}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1300(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_5
    return-void

    :cond_6
    iput-boolean v2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$4600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    iget-boolean p2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v3

    move v4, v2

    :goto_1
    iget-object v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v5

    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/springback/trigger/DefaultTrigger$Action;

    iget v6, v6, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    if-le v5, v6, :cond_7

    iget-object v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v5, v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$4602(Lmiuix/springback/trigger/DefaultTrigger;I)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$4600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_d

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$4600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/springback/trigger/DefaultTrigger$Action;

    if-eqz v4, :cond_8

    instance-of v6, v4, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz v6, :cond_8

    move v6, v0

    goto :goto_2

    :cond_8
    move v6, v2

    :goto_2
    if-eqz v6, :cond_9

    iget-object v7, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v7}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)F

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    iget-object v7, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v7}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v7

    if-eq v7, v0, :cond_a

    :cond_9
    if-nez v6, :cond_c

    :cond_a
    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6, v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2002(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$Action;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v4

    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v6

    iget v6, v6, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    if-lt v4, v6, :cond_b

    move v4, v0

    goto :goto_3

    :cond_b
    move v4, v2

    :goto_3
    iput-boolean v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$4602(Lmiuix/springback/trigger/DefaultTrigger;I)I

    goto :goto_4

    :cond_d
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4, v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$2002(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$Action;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    iput-boolean v2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    :goto_4
    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$4600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v4

    if-eq p1, v4, :cond_13

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onExit()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1, v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$3102(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)Landroid/view/View;

    :cond_e
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    check-cast p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$4700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3102(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)Landroid/view/View;

    :cond_f
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p2

    iget-object v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$3100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v3

    invoke-static {p1, p2, v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$3200(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_10
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1, v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$3102(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_5
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onEntered()V

    iput-boolean v2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    iget-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz p1, :cond_11

    iput-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    :cond_11
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onActivated()V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p0

    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    goto :goto_6

    :cond_12
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    :cond_13
    if-eqz v3, :cond_16

    iget-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    if-eq p2, p1, :cond_16

    if-eqz p2, :cond_14

    invoke-virtual {v3}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onEntered()V

    iput-boolean v2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    goto :goto_6

    :cond_14
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz p1, :cond_15

    iput-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    :cond_15
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    sget p2, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p1, p2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    invoke-virtual {v3}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onActivated()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    if-eqz p1, :cond_16

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_16
    :goto_6
    return-void
.end method

.method handleSpringBack()Z
    .locals 5

    iget-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    instance-of v0, v0, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3102(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    instance-of v0, v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1300(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object v0

    invoke-static {p0, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onExit()V

    :cond_4
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    :goto_0
    return v4

    :cond_5
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    instance-of v0, v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    invoke-virtual {v0, v3, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1300(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object v0

    invoke-static {p0, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    return v4

    :cond_6
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$4400(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;

    move-result-object v4

    invoke-static {v0, v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->notifyTriggered()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onExit()V

    :goto_1
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0, v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$3102(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)Landroid/view/View;

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return v3
.end method
