.class Lmiuix/springback/trigger/DefaultTrigger$ActionStart;
.super Lmiuix/springback/trigger/DefaultTrigger$TriggerState;
.source ""


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 1

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$ActionStart;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger$ActionStart;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    return-void
.end method


# virtual methods
.method handleScrollStateChange(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;->handleScrollStateChange(II)V

    return-void
.end method

.method handleScrolled(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;->handleScrolled(II)V

    return-void
.end method

.method handleSpringBack()Z
    .locals 0

    invoke-super {p0}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;->handleSpringBack()Z

    move-result p0

    return p0
.end method
