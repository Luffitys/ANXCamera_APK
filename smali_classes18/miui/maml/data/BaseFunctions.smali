.class public Lmiui/maml/data/BaseFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/BaseFunctions$NullObjFunction;,
        Lmiui/maml/data/BaseFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lmiui/maml/data/BaseFunctions$Fun;

.field private mEvalExp:Lmiui/maml/data/Expression;

.field private mEvalExpStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lmiui/maml/data/BaseFunctions$Fun;I)V
    .registers 3

    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    iput-object p1, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    return-void
.end method

.method private digit(II)I
    .registers 6

    const/4 v0, -0x1

    if-gtz p2, :cond_4

    return v0

    :cond_4
    if-nez p1, :cond_b

    const/4 v1, 0x1

    if-ne p2, v1, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-lez p1, :cond_17

    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_17

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    if-lez p1, :cond_1b

    rem-int/lit8 v0, p1, 0xa

    :cond_1b
    return v0
.end method

.method public static load()V
    .registers 5

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "rand"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "sin"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "cos"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "tan"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "asin"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "acos"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "atan"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "sinh"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "cosh"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "sqrt"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "abs"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "len"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "eval"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "preciseeval"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "round"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "int"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "num"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "isnull"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "not"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "min"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "max"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "pow"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "log"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG10:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "log10"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "digit"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "eq"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "ne"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "ge"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "gt"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "le"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "lt"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "ifelse"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "and"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "or"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "eqs"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "substr"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "hash"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions$NullObjFunction;

    invoke-direct {v0}, Lmiui/maml/data/BaseFunctions$NullObjFunction;-><init>()V

    const-string v1, "nullobj"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->FLOOR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "floor"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/BaseFunctions;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->CEIL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    const-string v1, "ceil"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .registers 13

    sget-object v0, Lmiui/maml/data/BaseFunctions$1;->$SwitchMap$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v1, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_221

    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    sget-object v4, Lmiui/maml/data/BaseFunctions$1;->$SwitchMap$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v5, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v5}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "Expression"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    packed-switch v4, :pswitch_data_226

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    :pswitch_42
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_47
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_4c
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/BaseFunctions;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0

    :pswitch_55
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    goto :goto_69

    :cond_68
    move-wide v6, v8

    :goto_69
    return-wide v6

    :pswitch_6a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6c
    if-ge v1, v0, :cond_7c

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_79

    return-wide v6

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_7c
    return-wide v8

    :pswitch_7d
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7f
    if-ge v1, v0, :cond_8f

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gtz v4, :cond_8c

    return-wide v8

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_8f
    return-wide v6

    :pswitch_90
    array-length v0, p1

    rem-int/lit8 v4, v0, 0x2

    if-eq v4, v1, :cond_b0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "function parameter number should be 2*n+1: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v4}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    :cond_b0
    const/4 v4, 0x0

    :goto_b1
    add-int/lit8 v5, v0, -0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_d0

    mul-int/lit8 v5, v4, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double v5, v5, v8

    if-lez v5, :cond_cd

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v1

    aget-object v1, p1, v5

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    return-wide v5

    :cond_cd
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    :cond_d0
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    return-wide v4

    :pswitch_d9
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_e4

    goto :goto_e5

    :cond_e4
    move-wide v6, v8

    :goto_e5
    return-wide v6

    :pswitch_e6
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_f1

    goto :goto_f2

    :cond_f1
    move-wide v6, v8

    :goto_f2
    return-wide v6

    :pswitch_f3
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_fe

    goto :goto_ff

    :cond_fe
    move-wide v6, v8

    :goto_ff
    return-wide v6

    :pswitch_100
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_10b

    goto :goto_10c

    :cond_10b
    move-wide v6, v8

    :goto_10c
    return-wide v6

    :pswitch_10d
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_118

    goto :goto_119

    :cond_118
    move-wide v6, v8

    :goto_119
    return-wide v6

    :pswitch_11a
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_125

    goto :goto_126

    :cond_125
    move-wide v6, v8

    :goto_126
    return-wide v6

    :pswitch_127
    double-to-int v0, v2

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v1, v4

    invoke-direct {p0, v0, v1}, Lmiui/maml/data/BaseFunctions;->digit(II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    :pswitch_135
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_13a
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_13f
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0

    :pswitch_14a
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    :pswitch_155
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0

    :pswitch_160
    cmpl-double v0, v2, v8

    if-lez v0, :cond_165

    move-wide v6, v8

    :cond_165
    return-wide v6

    :pswitch_166
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    if-eqz v0, :cond_16f

    goto :goto_170

    :cond_16f
    move-wide v6, v8

    :goto_170
    return-wide v6

    :pswitch_171
    return-wide v2

    :pswitch_172
    double-to-long v0, v2

    long-to-int v0, v0

    int-to-double v0, v0

    return-wide v0

    :pswitch_176
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    :pswitch_17c
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_185

    return-wide v8

    :cond_185
    iget-object v4, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_195

    iput-object v0, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    :cond_195
    iget-object v4, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_19e

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_19f

    :cond_19e
    const/4 v4, 0x0

    :goto_19f
    if-eqz v4, :cond_1ba

    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v1, v6

    if-lez v1, :cond_1b5

    if-le v5, v1, :cond_1b5

    const/4 v6, 0x4

    invoke-virtual {v4, v1, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    :cond_1b5
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    return-wide v6

    :cond_1ba
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    return-wide v5

    :pswitch_1bd
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c6

    return-wide v8

    :cond_1c6
    iget-object v1, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d6

    iput-object v0, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    :cond_1d6
    iget-object v1, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-nez v1, :cond_1db

    goto :goto_1df

    :cond_1db
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    :goto_1df
    return-wide v8

    :pswitch_1e0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e9

    return-wide v8

    :cond_1e9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v4, v1

    return-wide v4

    :pswitch_1ef
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_1f4
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_1f9
    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_1fe
    invoke-static {v2, v3}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_203
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_208
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_20d
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_212
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_217
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_21c
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0

    :cond_221
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0

    :pswitch_data_226
    .packed-switch 0x2
        :pswitch_21c
        :pswitch_217
        :pswitch_212
        :pswitch_20d
        :pswitch_208
        :pswitch_203
        :pswitch_1fe
        :pswitch_1f9
        :pswitch_1f4
        :pswitch_1ef
        :pswitch_1e0
        :pswitch_1bd
        :pswitch_17c
        :pswitch_176
        :pswitch_172
        :pswitch_171
        :pswitch_166
        :pswitch_160
        :pswitch_155
        :pswitch_14a
        :pswitch_13f
        :pswitch_13a
        :pswitch_135
        :pswitch_127
        :pswitch_11a
        :pswitch_10d
        :pswitch_100
        :pswitch_f3
        :pswitch_e6
        :pswitch_d9
        :pswitch_90
        :pswitch_7d
        :pswitch_6a
        :pswitch_55
        :pswitch_4c
        :pswitch_47
        :pswitch_42
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .registers 11

    sget-object v0, Lmiui/maml/data/BaseFunctions$1;->$SwitchMap$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v1, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_ba

    const/16 v1, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_6e

    const/16 v1, 0x24

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x27

    if-eq v0, v1, :cond_27

    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/BaseFunctions;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    aget-object v1, p1, v5

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3d

    if-nez v1, :cond_38

    goto :goto_3d

    :cond_38
    invoke-static {v0, v1}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3d
    :goto_3d
    return-object v3

    :cond_3e
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    return-object v3

    :cond_47
    array-length v1, p1

    aget-object v2, p1, v5

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-int v2, v5

    const/4 v5, 0x3

    if-lt v1, v5, :cond_67

    :try_start_52
    aget-object v4, p1, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_60

    move v4, v5

    :cond_60
    add-int v6, v2, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_67
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_6b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_52 .. :try_end_6b} :catch_6c

    return-object v3

    :catch_6c
    move-exception v4

    return-object v3

    :cond_6e
    array-length v0, p1

    rem-int/lit8 v1, v0, 0x2

    if-eq v1, v5, :cond_90

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "function parameter number should be 2*n+1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v2}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expression"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_90
    const/4 v1, 0x0

    :goto_91
    add-int/lit8 v2, v0, -0x1

    div-int/2addr v2, v4

    if-ge v1, v2, :cond_b1

    mul-int/lit8 v2, v1, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_ae

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v5

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_ae
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    :cond_b1
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_ba
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c3

    return-object v3

    :cond_c3
    iget-object v1, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    iput-object v0, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    :cond_d3
    iget-object v1, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-nez v1, :cond_d8

    goto :goto_dc

    :cond_d8
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    :goto_dc
    return-object v3
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    return-void
.end method
