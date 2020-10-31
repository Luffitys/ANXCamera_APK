.class Lmiui/maml/data/Expression$UnaryExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnaryExpression"
.end annotation


# instance fields
.field private mExp:Lmiui/maml/data/Expression;

.field private mOpe:Lmiui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V
    .registers 5

    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    iput-object p1, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    iput-object p2, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-ne p2, v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnaryExpression: invalid operator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expression"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .registers 3

    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    return-void
.end method

.method public evaluate()D
    .registers 5

    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    iget-object v1, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const-string v0, "Expression"

    const-string v1, "fail to evalute UnaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0

    :cond_23
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    not-int v0, v0

    int-to-double v0, v0

    return-wide v0

    :cond_2d
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_39

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :cond_39
    return-wide v2

    :cond_3a
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/data/Expression$UnaryExpression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    return v0
.end method
