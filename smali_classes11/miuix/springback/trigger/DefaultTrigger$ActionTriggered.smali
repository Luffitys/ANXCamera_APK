.class Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;
.super Lmiuix/springback/trigger/DefaultTrigger$TriggerState;
.source ""


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 1

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    return-void
.end method


# virtual methods
.method handleScrollStateChange(II)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_0
    return-void
.end method

.method handleScrolled(II)V
    .locals 0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$4602(Lmiuix/springback/trigger/DefaultTrigger;I)I

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_0
    return-void
.end method
