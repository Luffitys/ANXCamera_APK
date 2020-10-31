.class Lmiui/maml/ActionCommand$IfCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfCommand"
.end annotation


# static fields
.field private static final ALTERNATE:Ljava/lang/String; = "Alternate"

.field private static final CONSEQUENT:Ljava/lang/String; = "Consequent"

.field public static final TAG_NAME:Ljava/lang/String; = "IfCommand"


# instance fields
.field private mAlternateCommand:Lmiui/maml/ActionCommand$MultiCommand;

.field private mCondition:Lmiui/maml/data/Expression;

.field private mConsequentCommand:Lmiui/maml/ActionCommand$MultiCommand;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 8

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "ifCondition"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mCondition:Lmiui/maml/data/Expression;

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_18
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_5d

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5a

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Consequent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    iget-object v4, p0, Lmiui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-nez v4, :cond_47

    new-instance v4, Lmiui/maml/ActionCommand$MultiCommand;

    invoke-direct {v4, p1, v2}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    iput-object v4, p0, Lmiui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lmiui/maml/ActionCommand$MultiCommand;

    goto :goto_5a

    :cond_47
    const-string v4, "Alternate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-object v4, p0, Lmiui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-nez v4, :cond_5a

    new-instance v4, Lmiui/maml/ActionCommand$MultiCommand;

    invoke-direct {v4, p1, v2}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    iput-object v4, p0, Lmiui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lmiui/maml/ActionCommand$MultiCommand;

    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_5d
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mCondition:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->perform()V

    goto :goto_1d

    :cond_16
    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->perform()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public finish()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->finish()V

    :cond_7
    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->finish()V

    :cond_e
    return-void
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->init()V

    :cond_7
    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->init()V

    :cond_e
    return-void
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->pause()V

    :cond_7
    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->pause()V

    :cond_e
    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->resume()V

    :cond_7
    iget-object v0, p0, Lmiui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lmiui/maml/ActionCommand$MultiCommand;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$MultiCommand;->resume()V

    :cond_e
    return-void
.end method
