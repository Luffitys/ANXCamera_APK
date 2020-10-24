.class Lmiuix/springback/trigger/DefaultTrigger$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/springback/view/SpringBackLayout$OnSpringListener;


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringBack()Z
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$2;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$TriggerState;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;->handleSpringBack()Z

    move-result p0

    return p0
.end method
