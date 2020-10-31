.class abstract Lmiui/maml/ActionCommand$BaseMethodCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseMethodCommand"
.end annotation


# static fields
.field protected static final ERROR_EXCEPTION:I = -0x2

.field protected static final ERROR_NO_METHOD:I = -0x1

.field protected static final ERROR_SUCCESS:I = 0x1


# instance fields
.field protected mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

.field private mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

.field protected mParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mParamValues:[Ljava/lang/Object;

.field private mParams:[Lmiui/maml/data/Expression;

.field protected mReturnVar:Lmiui/maml/data/IndexedVariable;

.field protected mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mTargetClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 11

    const-string v0, "ActionCommand"

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string v1, "class"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iput-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    :cond_16
    const-string v1, "params"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-static {v3, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    const-string v3, "paramTypes"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    if-eqz v4, :cond_85

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_85

    const-string v4, ","

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :try_start_3c
    invoke-static {v4}, Lmiui/maml/util/ReflectionHelper;->strTypesToClass([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    iget-object v6, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v6, v6

    array-length v5, v5

    if-eq v6, v5, :cond_62

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "different length of params and paramTypes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    iput-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;
    :try_end_62
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_62} :catch_63

    :cond_62
    goto :goto_85

    :catch_63
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "invalid method paramTypes. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    iput-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    :cond_85
    :goto_85
    const-string v0, "return"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_aa

    const-string v2, "returnType"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v2

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v2}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v6

    invoke-direct {v4, v0, v5, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    :cond_aa
    const-string v2, "errorVar"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c2

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v2, v5, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    :cond_c2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/ActionCommand$TargetCommand;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    return-void
.end method

.method public init()V
    .registers 8

    invoke-super {p0}, Lmiui/maml/ActionCommand$TargetCommand;->init()V

    iget-object v0, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    if-nez v1, :cond_10

    array-length v0, v0

    new-array v0, v0, [Lmiui/maml/ActionCommand$ObjVar;

    iput-object v0, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_4e

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_29
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2e

    goto :goto_4b

    :cond_2e
    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    new-instance v5, Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lmiui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    aput-object v5, v4, v0

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_4e
    iget-object v0, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    if-eqz v0, :cond_7e

    :try_start_52
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_59

    goto :goto_7e

    :catch_59
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target class not found, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActionCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_7e
    return-void
.end method

.method protected prepareParams()V
    .registers 10

    iget-object v0, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    if-eqz v0, :cond_e1

    iget-object v1, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    if-nez v1, :cond_d

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v2, v1

    if-ge v0, v2, :cond_e1

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    aget-object v4, v4, v0

    aget-object v1, v1, v0

    if-nez v1, :cond_22

    goto/16 :goto_dd

    :cond_22
    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_2e

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_dd

    :cond_2e
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v2, :cond_42

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-long v5, v5

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_dd

    :cond_42
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v2, :cond_55

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_dd

    :cond_55
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v2, :cond_70

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-lez v3, :cond_67

    const/4 v3, 0x1

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    :goto_68
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_dd

    :cond_70
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v2, :cond_81

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_dd

    :cond_81
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v2, :cond_93

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_dd

    :cond_93
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v2, :cond_a7

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-long v5, v5

    long-to-int v3, v5

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_dd

    :cond_a7
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v2, :cond_bb

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-long v5, v5

    long-to-int v3, v5

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_dd

    :cond_bb
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v2, :cond_cf

    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-long v5, v5

    long-to-int v3, v5

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_dd

    :cond_cf
    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    aget-object v2, v2, v0

    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    if-eqz v2, :cond_db

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    move-result-object v3

    :cond_db
    aput-object v3, v5, v0

    :goto_dd
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_e1
    return-void
.end method
