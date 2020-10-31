.class Lmiui/maml/ActionCommand$AnimStateCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimStateCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimStateCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimStateCommand"


# instance fields
.field private mAttrArrayName:Lmiui/maml/data/Expression;

.field private mAttrs:[Ljava/lang/String;

.field private mAttrsExp:[Lmiui/maml/data/Expression;

.field private mCommand:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

.field private mIsAttrsValid:Z

.field private mIsValuesValid:Z

.field private mValueArrayName:Lmiui/maml/data/Expression;

.field private mValues:[D

.field private mValuesExp:[Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimStateCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "valueArrayNameExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lmiui/maml/data/Expression;

    const-string v1, "attrArrayNameExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lmiui/maml/data/Expression;

    const-string v1, "valuesExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lmiui/maml/data/Expression;

    const-string v1, "attrsExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lmiui/maml/data/Expression;

    invoke-virtual {p0, v1}, Lmiui/maml/ActionCommand$AnimStateCommand;->isExpressionsValid([Lmiui/maml/data/Expression;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mIsValuesValid:Z

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lmiui/maml/data/Expression;

    invoke-virtual {p0, v1}, Lmiui/maml/ActionCommand$AnimStateCommand;->isExpressionsValid([Lmiui/maml/data/Expression;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mIsAttrsValid:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lmiui/maml/data/Expression;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    :cond_50
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mIsValuesValid:Z

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lmiui/maml/data/Expression;

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    :cond_5b
    const-string v1, "command"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x37b5077c

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_8c

    const v4, -0x31ffc737    # -5.3780128E8f

    if-eq v3, v4, :cond_82

    const v4, 0x5a5b64d

    if-eq v3, v4, :cond_78

    :cond_77
    goto :goto_95

    :cond_78
    const-string v3, "clear"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    move v2, v5

    goto :goto_95

    :cond_82
    const-string v3, "update"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x0

    goto :goto_95

    :cond_8c
    const-string v3, "remove"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    move v2, v6

    :goto_95
    if-eqz v2, :cond_aa

    if-eq v2, v6, :cond_a5

    if-eq v2, v5, :cond_a0

    sget-object v2, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->INVALID:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mCommand:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    goto :goto_af

    :cond_a0
    sget-object v2, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mCommand:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    goto :goto_af

    :cond_a5
    sget-object v2, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mCommand:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    goto :goto_af

    :cond_aa
    sget-object v2, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mCommand:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    nop

    :goto_af
    return-void
.end method

.method private remove(Lmiui/maml/elements/AnimStateElement;)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    if-eqz v0, :cond_1d

    array-length v0, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lmiui/maml/data/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lmiui/maml/elements/AnimStateElement;->removeAttr([Ljava/lang/String;)V

    goto :goto_3c

    :cond_1d
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimStateCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3d

    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_3d

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Lmiui/maml/elements/AnimStateElement;->removeAttr([Ljava/lang/String;)V

    goto :goto_3d

    :cond_3c
    :goto_3c
    nop

    :cond_3d
    :goto_3d
    return-void
.end method

.method private update(Lmiui/maml/elements/AnimStateElement;)V
    .registers 7

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    if-eqz v1, :cond_33

    array-length v2, v0

    array-length v1, v1

    if-ne v2, v1, :cond_33

    array-length v0, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_2b

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lmiui/maml/data/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    iget-object v3, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lmiui/maml/data/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2b
    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    invoke-virtual {p1, v1, v2}, Lmiui/maml/elements/AnimStateElement;->updateAttr([Ljava/lang/String;[D)V

    goto :goto_6d

    :cond_33
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimStateCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimStateCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_6e

    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_6e

    if-eqz v1, :cond_6e

    instance-of v2, v1, [D

    if-eqz v2, :cond_6e

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    move-object v3, v1

    check-cast v3, [D

    invoke-virtual {p1, v2, v3}, Lmiui/maml/elements/AnimStateElement;->updateAttr([Ljava/lang/String;[D)V

    goto :goto_6e

    :cond_6d
    :goto_6d
    nop

    :cond_6e
    :goto_6e
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimStateCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    instance-of v1, v0, Lmiui/maml/elements/AnimStateElement;

    if-nez v1, :cond_b

    goto :goto_2f

    :cond_b
    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/AnimStateElement;

    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$AnimStateCommand;->mCommand:Lmiui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$AnimStateCommand$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_26

    const/4 v3, 0x3

    if-eq v2, v3, :cond_22

    goto :goto_2e

    :cond_22
    invoke-virtual {v1}, Lmiui/maml/elements/AnimStateElement;->clear()V

    goto :goto_2e

    :cond_26
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$AnimStateCommand;->remove(Lmiui/maml/elements/AnimStateElement;)V

    goto :goto_2e

    :cond_2a
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$AnimStateCommand;->update(Lmiui/maml/elements/AnimStateElement;)V

    nop

    :goto_2e
    return-void

    :cond_2f
    :goto_2f
    return-void
.end method
