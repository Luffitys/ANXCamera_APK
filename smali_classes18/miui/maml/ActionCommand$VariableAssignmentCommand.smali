.class Lmiui/maml/ActionCommand$VariableAssignmentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mArrayValues:[Lmiui/maml/data/Expression;

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mLengthVar:Lmiui/maml/data/IndexedVariable;

.field private mName:Ljava/lang/String;

.field private mNameExp:Lmiui/maml/data/Expression;

.field private mPersist:Z

.field private mRequestUpdate:Z

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 7

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "nameExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    goto :goto_24

    :cond_1c
    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    :goto_24
    const-string v1, "persist"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    const-string v1, "requestUpdate"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    const-string v1, "type"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_83

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v3}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8a

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_8a

    :cond_83
    const-string v1, "ActionCommand"

    const-string v2, "empty name in VariableAssignmentCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    const-string v1, "expression"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string v1, "index"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    const-string v1, "values"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    :cond_b6
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-wide/16 v3, 0x0

    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lmiui/maml/data/Expression;

    const-string v6, ".length"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_58

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_21

    iput-object v7, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    return-void

    :cond_21
    iget-object v9, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_58

    iput-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    new-instance v9, Lmiui/maml/data/IndexedVariable;

    iget-object v10, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v10}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v10

    invoke-direct {v9, v5, v2, v10}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v9, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v9, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v9}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v9

    if-eqz v9, :cond_58

    new-instance v9, Lmiui/maml/data/IndexedVariable;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2, v8}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v9, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lmiui/maml/data/IndexedVariable;

    :cond_58
    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_5d

    return-void

    :cond_5d
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    iget-object v9, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v9}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v9

    aget v5, v5, v9

    const/4 v9, 0x2

    if-eq v5, v8, :cond_1bb

    if-eq v5, v9, :cond_1a0

    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v5}, Lmiui/maml/data/VariableType;->isNumberOrStringArray()Z

    move-result v5

    if-eqz v5, :cond_121

    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_ac

    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_ac

    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v5}, Lmiui/maml/data/VariableType;->isNumberArray()Z

    move-result v5

    if-eqz v5, :cond_98

    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v6, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v7, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v7}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    goto/16 :goto_1db

    :cond_98
    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v6, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v7, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v7}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto/16 :goto_1db

    :cond_ac
    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v5, :cond_121

    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v6, v6

    if-eqz v5, :cond_cf

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v6, :cond_cf

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    iget-object v11, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    iget-object v11, v11, Lmiui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    if-eq v8, v11, :cond_e4

    :cond_cf
    iget-object v8, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    iget-object v11, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    iget-object v11, v11, Lmiui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v2, v8, v6, v11}, Lmiui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    iget-object v8, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v11, v6

    invoke-virtual {v8, v11, v12}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v5

    :cond_e4
    iget-object v8, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v8}, Lmiui/maml/data/VariableType;->isNumberArray()Z

    move-result v8

    if-eqz v8, :cond_103

    const/4 v7, 0x0

    :goto_ed
    if-ge v7, v6, :cond_102

    iget-object v8, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v7

    if-nez v8, :cond_f8

    const-wide/16 v11, 0x0

    goto :goto_fc

    :cond_f8
    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v11

    :goto_fc
    invoke-static {v5, v7, v11, v12}, Lmiui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_ed

    :cond_102
    goto :goto_11a

    :cond_103
    const/4 v8, 0x0

    :goto_104
    if-ge v8, v6, :cond_11a

    iget-object v9, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v9, v9, v8

    move-object v10, v5

    check-cast v10, [Ljava/lang/String;

    if-nez v9, :cond_111

    move-object v11, v7

    goto :goto_115

    :cond_111
    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v11

    :goto_115
    aput-object v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_104

    :cond_11a
    :goto_11a
    iget-object v7, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v7, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1db

    :cond_121
    const/4 v5, 0x0

    iget-object v11, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v11, :cond_12a

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v7

    :cond_12a
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v11

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13e

    invoke-virtual {v11, v7}, Lmiui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13e

    invoke-virtual {v11, v7}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    :cond_13e
    iget-object v12, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v12, :cond_195

    iget-object v12, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v12}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v13, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    if-eqz v12, :cond_153

    instance-of v13, v12, Ljava/lang/reflect/Array;

    if-nez v13, :cond_159

    :cond_153
    if-eqz v5, :cond_15b

    instance-of v13, v5, Ljava/lang/reflect/Array;

    if-eqz v13, :cond_15b

    :cond_159
    move v13, v8

    goto :goto_15c

    :cond_15b
    const/4 v13, 0x0

    :goto_15c
    iget-object v14, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lmiui/maml/data/IndexedVariable;

    if-nez v14, :cond_17a

    if-eqz v13, :cond_17a

    new-instance v14, Lmiui/maml/data/IndexedVariable;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6, v2, v8}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v14, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lmiui/maml/data/IndexedVariable;

    :cond_17a
    if-eqz v5, :cond_18b

    instance-of v6, v5, Ljava/lang/reflect/Array;

    if-eqz v6, :cond_18b

    iget-object v6, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lmiui/maml/data/IndexedVariable;

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v6, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_194

    :cond_18b
    iget-object v6, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v6, :cond_194

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_194
    :goto_194
    goto :goto_1db

    :cond_195
    iget-object v6, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v6, v8, v5}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_1db

    :cond_1a0
    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-boolean v6, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v6, :cond_1ba

    invoke-virtual {v1, v9}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v6

    if-eqz v6, :cond_1ba

    iget-object v6, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ba
    goto :goto_1db

    :cond_1bb
    iget-object v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_1db

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object v7, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v7, v5, v6}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-boolean v7, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v7, :cond_1db

    invoke-virtual {v1, v9}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v7

    if-eqz v7, :cond_1db

    iget-object v7, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1db
    :goto_1db
    iget-boolean v5, v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    if-eqz v5, :cond_1e2

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_1e2
    return-void
.end method
