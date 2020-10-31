.class public Lmiui/maml/data/FormatFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "FormatFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/FormatFunctions$Fun;
    }
.end annotation


# instance fields
.field private final mFun:Lmiui/maml/data/FormatFunctions$Fun;


# direct methods
.method private constructor <init>(Lmiui/maml/data/FormatFunctions$Fun;I)V
    .registers 3

    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    iput-object p1, p0, Lmiui/maml/data/FormatFunctions;->mFun:Lmiui/maml/data/FormatFunctions$Fun;

    return-void
.end method

.method public static load()V
    .registers 3

    new-instance v0, Lmiui/maml/data/FormatFunctions;

    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lmiui/maml/data/FormatFunctions$Fun;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/FormatFunctions;-><init>(Lmiui/maml/data/FormatFunctions$Fun;I)V

    const-string v1, "formatDate"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/FormatFunctions;

    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/FormatFunctions;-><init>(Lmiui/maml/data/FormatFunctions$Fun;I)V

    const-string v1, "formatFloat"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/FormatFunctions;

    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/FormatFunctions;-><init>(Lmiui/maml/data/FormatFunctions$Fun;I)V

    const-string v1, "formatInt"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .registers 5

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return-object v2

    :cond_b
    sget-object v3, Lmiui/maml/data/FormatFunctions$1;->$SwitchMap$miui$maml$data$FormatFunctions$Fun:[I

    iget-object v4, p0, Lmiui/maml/data/FormatFunctions;->mFun:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v4}, Lmiui/maml/data/FormatFunctions$Fun;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4b

    const/4 v5, 0x2

    if-eq v3, v5, :cond_35

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1f

    goto :goto_4a

    :cond_1f
    :try_start_1f
    new-array v3, v4, [Ljava/lang/Object;

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catch Ljava/util/IllegalFormatException; {:try_start_1f .. :try_end_32} :catch_33

    return-object v0

    :catch_33
    move-exception v0

    goto :goto_4a

    :cond_35
    :try_start_35
    new-array v3, v4, [Ljava/lang/Object;

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catch Ljava/util/IllegalFormatException; {:try_start_35 .. :try_end_47} :catch_48

    return-object v0

    :catch_48
    move-exception v0

    nop

    :goto_4a
    return-object v2

    :cond_4b
    aget-object v0, p1, v4

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v1, v2, v3}, Lmiui/maml/data/DateTimeVariableUpdater;->formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 1

    return-void
.end method
