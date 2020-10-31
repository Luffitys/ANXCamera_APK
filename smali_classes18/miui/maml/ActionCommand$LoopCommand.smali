.class Lmiui/maml/ActionCommand$LoopCommand;
.super Lmiui/maml/ActionCommand$MultiCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoopCommand"
.end annotation


# static fields
.field private static final COUNT_WARNING:J = 0x2710L

.field public static final TAG_NAME:Ljava/lang/String; = "LoopCommand"


# instance fields
.field private mBeginExp:Lmiui/maml/data/Expression;

.field private mConditionExp:Lmiui/maml/data/Expression;

.field private mCountExp:Lmiui/maml/data/Expression;

.field private mEndExp:Lmiui/maml/data/Expression;

.field private mIndexVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string v0, "indexName"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$LoopCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    :cond_1b
    const-string v2, "begin"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    const-string v2, "count"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-nez v2, :cond_41

    const-string v2, "end"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    :cond_41
    const-string v2, "loopCondition"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 8

    iget-object v0, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_c

    :cond_7
    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    :goto_c
    iget-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    :cond_19
    iget-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    if-nez v2, :cond_1e

    goto :goto_23

    :cond_1e
    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    :goto_23
    nop

    sub-int v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", exceeds WARNING "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionCommand"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    move v2, v0

    :goto_4e
    if-gt v2, v1, :cond_81

    iget-object v3, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_5f

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_5f

    goto :goto_81

    :cond_5f
    iget-object v3, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_67

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_67
    iget-object v3, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_6e
    if-ge v4, v3, :cond_7e

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/ActionCommand;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand;->perform()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_81
    :goto_81
    return-void
.end method
