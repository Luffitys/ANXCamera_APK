.class abstract Lmiuix/springback/trigger/DefaultTrigger$TriggerState;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    return-void
.end method


# virtual methods
.method handleScrollStateChange(II)V
    .locals 0

    return-void
.end method

.method handleScrolled(II)V
    .locals 0

    return-void
.end method

.method handleSpringBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
