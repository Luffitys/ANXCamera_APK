.class Lmiui/maml/data/Expression$NumberArrayVariableExpression;
.super Lmiui/maml/data/Expression$ArrayVariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberArrayVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/data/Expression$ArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    return-void
.end method


# virtual methods
.method public evaluate()D
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/Expression$NumberArrayVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/Expression$NumberArrayVariableExpression;->mIndexExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/data/Expression$NumberArrayVariableExpression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/Expression$NumberArrayVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/Expression$NumberArrayVariableExpression;->mIndexExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->isNull(I)Z

    move-result v0

    return v0
.end method
