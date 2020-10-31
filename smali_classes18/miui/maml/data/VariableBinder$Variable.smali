.class public Lmiui/maml/data/VariableBinder$Variable;
.super Lmiui/maml/data/VariableBinder$TypedValue;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field private mArrayIndex:Lmiui/maml/data/Expression;

.field protected mDefNumberValue:D

.field protected mDefStringValue:Ljava/lang/String;

.field protected mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v2

    invoke-direct {v0, v1, p3, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .registers 9

    invoke-direct {p0, p1}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Lorg/w3c/dom/Element;)V

    const-string v0, "arrIndex"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    invoke-direct {v0, v1, p2, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    const-string v0, "default"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_43

    iput-object v3, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    iput-wide v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    goto :goto_51

    :cond_43
    :try_start_43
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_4b} :catch_4c

    goto :goto_51

    :catch_4c
    move-exception v0

    iput-object v3, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    iput-wide v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    :cond_51
    :goto_51
    return-void
.end method


# virtual methods
.method public getNumber()D
    .registers 7

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Lmiui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_16
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    return-wide v0

    :cond_1d
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_33

    iget-object v3, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {v3, v0}, Lmiui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0

    :cond_33
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public set(D)V
    .registers 7

    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1, v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_14

    :cond_f
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :goto_14
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_40

    const-wide/16 v0, 0x0

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_20

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    :try_start_15
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1c} :catch_1e

    move-wide v0, v2

    :goto_1d
    goto :goto_2b

    :catch_1e
    move-exception v2

    goto :goto_1d

    :cond_20
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_2b

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :cond_2b
    :goto_2b
    iget-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_3a

    iget-object v3, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v2, v4

    invoke-virtual {v3, v2, v0, v1}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_3f

    :cond_3a
    iget-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :goto_3f
    goto :goto_5f

    :cond_40
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4b

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lmiui/maml/util/Utils;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    :cond_4b
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_5a

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1, v0, p1}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_5f

    :cond_5a
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :goto_5f
    return-void
.end method
