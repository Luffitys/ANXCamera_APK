.class Lmiui/maml/ActionCommand$AnimConfigCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimConfigCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimConfigCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimConfigCommand"


# instance fields
.field private mAttr:Lmiui/maml/data/Expression;

.field private mCommand:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

.field private mSubName:Lmiui/maml/data/Expression;

.field private mValuesExp:[Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimConfigCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "subNameExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimConfigCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "attrExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mAttr:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimConfigCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "valuesExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mValuesExp:[Lmiui/maml/data/Expression;

    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x37b5077c

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_63

    const v2, -0x31ffc737    # -5.3780128E8f

    if-eq v1, v2, :cond_59

    const v2, 0x5a5b64d

    if-eq v1, v2, :cond_4f

    :cond_4e
    goto :goto_6d

    :cond_4f
    const-string v1, "clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    move v1, v3

    goto :goto_6e

    :cond_59
    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x0

    goto :goto_6e

    :cond_63
    const-string v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    move v1, v4

    goto :goto_6e

    :goto_6d
    const/4 v1, -0x1

    :goto_6e
    if-eqz v1, :cond_83

    if-eq v1, v4, :cond_7e

    if-eq v1, v3, :cond_79

    sget-object v1, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->INVALID:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    goto :goto_88

    :cond_79
    sget-object v1, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    goto :goto_88

    :cond_7e
    sget-object v1, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    goto :goto_88

    :cond_83
    sget-object v1, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    nop

    :goto_88
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 7

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimConfigCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6b

    instance-of v1, v0, Lmiui/maml/elements/AnimConfigElement;

    if-nez v1, :cond_b

    goto :goto_6b

    :cond_b
    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/AnimConfigElement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lmiui/maml/data/Expression;

    const-string v4, ""

    if-eqz v3, :cond_36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_36
    move-object v3, v4

    :goto_37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mAttr:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    :cond_46
    move-object v3, v4

    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    iget-object v5, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_63

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5f

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5b

    goto :goto_6a

    :cond_5b
    invoke-virtual {v1}, Lmiui/maml/elements/AnimConfigElement;->clearConfigData()V

    goto :goto_6a

    :cond_5f
    invoke-virtual {v1, v2, v3}, Lmiui/maml/elements/AnimConfigElement;->removeConfigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :cond_63
    iget-object v4, p0, Lmiui/maml/ActionCommand$AnimConfigCommand;->mValuesExp:[Lmiui/maml/data/Expression;

    if-eqz v4, :cond_6a

    invoke-virtual {v1, v2, v3, v4}, Lmiui/maml/elements/AnimConfigElement;->updateConfigData(Ljava/lang/String;Ljava/lang/String;[Lmiui/maml/data/Expression;)V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    :goto_6b
    return-void
.end method
