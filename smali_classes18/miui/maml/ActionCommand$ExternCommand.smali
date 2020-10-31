.class Lmiui/maml/ActionCommand$ExternCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ExternCommand"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mNumParaExp:Lmiui/maml/data/Expression;

.field private mStrParaExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ExternCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "numPara"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ExternCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "strPara"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 7

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ExternCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lmiui/maml/data/Expression;

    const/4 v3, 0x0

    if-nez v2, :cond_d

    move-object v2, v3

    goto :goto_15

    :cond_d
    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_15
    iget-object v4, p0, Lmiui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lmiui/maml/data/Expression;

    if-nez v4, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    :goto_1e
    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/ScreenElementRoot;->issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method
