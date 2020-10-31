.class Lmiui/maml/ActionCommand$ConditionCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionCommand"
.end annotation


# instance fields
.field private mCommand:Lmiui/maml/ActionCommand;

.field private mCondition:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V
    .registers 4

    invoke-virtual {p1}, Lmiui/maml/ActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    iput-object p1, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCommand:Lmiui/maml/ActionCommand;

    iput-object p2, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCondition:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCondition:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11

    iget-object v0, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    :cond_11
    return-void
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    return-void
.end method
