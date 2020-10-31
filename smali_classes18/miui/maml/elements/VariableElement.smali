.class public Lmiui/maml/elements/VariableElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field public static final LENGTH_SUFFIX:Ljava/lang/String; = ".length"

.field private static final LOG_TAG:Ljava/lang/String; = "VariableElement"

.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/maml/animation/VariableAnimation;

.field private mArraySize:I

.field private mArrayValues:[Lmiui/maml/data/Expression;

.field private mConst:Z

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mInited:Z

.field private mLengthVar:Lmiui/maml/data/IndexedVariable;

.field private mOldValue:D

.field private mOldVar:Lmiui/maml/data/IndexedVariable;

.field private mThreshold:D

.field private mTrigger:Lmiui/maml/CommandTrigger;

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    if-eqz p1, :cond_110

    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "expression"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "index"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "threshold"

    invoke-static {p1, v1, v0}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    const-string v0, "const"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    const-string v0, "size"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v4}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "old_value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v4}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-static {p1, p2}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v2}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v2

    if-eqz v2, :cond_110

    const-string v2, "values"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v3, :cond_ac

    array-length v3, v3

    iput v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    :cond_ac
    iget v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    const-string v4, "VariableElement"

    if-lez v3, :cond_d9

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget v5, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    iget-object v6, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    iget-object v6, v6, Lmiui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v0, v3, v5, v6}, Lmiui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_d8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to create array:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    :cond_d8
    goto :goto_ef

    :cond_d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array size is 0:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ef
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/VariableElement;->mLengthVar:Lmiui/maml/data/IndexedVariable;

    iget v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    int-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_110
    return-void
.end method

.method private getDouble(ZI)D
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->getValue()D

    move-result-wide v0

    return-wide v0

    :cond_9
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0

    :cond_12
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    if-eqz p1, :cond_1b

    invoke-virtual {v0, p2}, Lmiui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide v0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    :goto_1f
    return-wide v0
.end method

.method private onValueChange(D)V
    .registers 7

    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    if-nez v0, :cond_6

    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    :cond_6
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_26

    iget-wide v0, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_26

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    iget-wide v1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    :cond_26
    return-void
.end method

.method private update()V
    .registers 7

    sget-object v0, Lmiui/maml/elements/VariableElement$1;->$SwitchMap$miui$maml$data$VariableType:[I

    iget-object v1, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_cf

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5b

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v0}, Lmiui/maml/data/VariableType;->isNumberArray()Z

    move-result v0

    if-eqz v0, :cond_f4

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-direct {p0, v1, v0}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v1

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    invoke-direct {p0, v1, v2}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    goto :goto_59

    :cond_31
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v0, :cond_59

    array-length v0, v0

    iget-object v1, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v0, :cond_52

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v3, v3, v2

    if-nez v3, :cond_48

    const-wide/16 v4, 0x0

    goto :goto_4c

    :cond_48
    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    :goto_4c
    invoke-static {v1, v2, v4, v5}, Lmiui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_52
    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto/16 :goto_f4

    :cond_59
    :goto_59
    goto/16 :goto_f4

    :cond_5b
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-direct {p0, v0, v1}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    goto/16 :goto_f4

    :cond_6a
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lmiui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v1, v0}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v3, :cond_ce

    invoke-virtual {v3}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_ce

    :cond_9b
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_cd

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v2, v2

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_b5
    if-ge v3, v2, :cond_c8

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v3

    if-nez v4, :cond_bf

    const/4 v5, 0x0

    goto :goto_c3

    :cond_bf
    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    :goto_c3
    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    :cond_c8
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_cd
    goto :goto_f4

    :cond_ce
    :goto_ce
    goto :goto_f4

    :cond_cf
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_f4

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f4

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v0}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v2, :cond_f4

    invoke-virtual {v2}, Lmiui/maml/CommandTrigger;->perform()V

    :cond_f4
    :goto_f4
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected doTick(J)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method public finish()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    return-void
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    :cond_a
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .registers 4

    const-string v0, "VariableAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lmiui/maml/animation/VariableAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    return-object v0

    :cond_10
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    return-object v0
.end method

.method protected onSetAnimBefore()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .registers 3

    instance-of v0, p1, Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/VariableAnimation;

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    :cond_9
    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    :cond_a
    return-void
.end method

.method protected pauseAnim(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .registers 9

    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method public reset(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    :cond_a
    return-void
.end method

.method protected resumeAnim(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method
