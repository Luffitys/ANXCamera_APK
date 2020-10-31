.class public abstract Lmiui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$FunctionExpression;,
        Lmiui/maml/data/Expression$FunctionImpl;,
        Lmiui/maml/data/Expression$BinaryExpression;,
        Lmiui/maml/data/Expression$UnaryExpression;,
        Lmiui/maml/data/Expression$StringExpression;,
        Lmiui/maml/data/Expression$NumberExpression;,
        Lmiui/maml/data/Expression$StringArrayVariableExpression;,
        Lmiui/maml/data/Expression$NumberArrayVariableExpression;,
        Lmiui/maml/data/Expression$ArrayVariableExpression;,
        Lmiui/maml/data/Expression$StringVariableExpression;,
        Lmiui/maml/data/Expression$NumberVariableExpression;,
        Lmiui/maml/data/Expression$VariableExpression;,
        Lmiui/maml/data/Expression$Tokenizer;,
        Lmiui/maml/data/Expression$Ope;,
        Lmiui/maml/data/Expression$OpeInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitCharStart(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitCharRest(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharRest(C)Z

    move-result v0

    return v0
.end method

.method public static build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .registers 4

    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Lmiui/maml/data/RootExpression;

    invoke-direct {v1, p0, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    :goto_d
    return-object v1
.end method

.method private static buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/Variables;",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack<",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/maml/data/Expression;"
        }
    .end annotation

    iget-object v0, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {p0, v0}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->checkParams([Lmiui/maml/data/Expression;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Expression"

    if-nez v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid expressions: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_26
    :try_start_26
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v1, v1, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v4, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v1, v4, :cond_46

    new-instance v1, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v4, v4, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v4}, Lmiui/maml/data/Expression$FunctionExpression;-><init>(Lmiui/maml/data/Variables;[Lmiui/maml/data/Expression;Ljava/lang/String;)V

    return-object v1

    :cond_46
    array-length v1, v0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4e

    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4d} :catch_4f

    return-object v1

    :cond_4e
    goto :goto_5a

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .registers 14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    new-instance v0, Lmiui/maml/data/Expression$Tokenizer;

    invoke-direct {v0, p1}, Lmiui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    :goto_1d
    invoke-virtual {v0}, Lmiui/maml/data/Expression$Tokenizer;->getToken()Lmiui/maml/data/Expression$Tokenizer$Token;

    move-result-object v6

    move-object v2, v6

    const-string v7, "Expression"

    const/4 v8, 0x1

    if-eqz v6, :cond_1d2

    sget-object v6, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v9, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v9}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_214

    goto/16 :goto_1cf

    :pswitch_36
    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1cf

    :pswitch_3b
    iget-object v6, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    iget v6, v6, Lmiui/maml/data/Expression$OpeInfo;->participants:I

    if-ne v6, v8, :cond_52

    if-eqz v3, :cond_49

    iget-object v6, v3, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v9, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v6, v9, :cond_52

    :cond_49
    iget-object v6, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    iput-boolean v8, v6, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1cf

    :cond_52
    :goto_52
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_ae

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v6, v6, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v8, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v6, v8, :cond_ae

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v6, v6, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    iget v6, v6, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    iget-object v8, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    iget v8, v8, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    sub-int/2addr v6, v8

    if-gtz v6, :cond_ae

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_91

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to buid: invalid operator position:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_91
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/data/Expression;

    new-instance v9, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v10, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    invoke-direct {v9, v8, v6, v10}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    invoke-virtual {v5, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_ae
    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1cf

    :pswitch_b3
    const/4 v6, 0x0

    sget-object v9, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v10, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v10}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_228

    goto/16 :goto_1a0

    :pswitch_c3
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v9

    if-ge v9, v8, :cond_de

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to buid: no array name before []:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_de
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/data/Expression;

    instance-of v9, v8, Lmiui/maml/data/Expression$VariableExpression;

    if-eqz v9, :cond_122

    iget-object v9, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {p0, v9}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v9

    if-nez v9, :cond_105

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to buid: no index expression in []:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_105
    move-object v7, v8

    check-cast v7, Lmiui/maml/data/Expression$VariableExpression;

    invoke-virtual {v7}, Lmiui/maml/data/Expression$VariableExpression;->getName()Ljava/lang/String;

    move-result-object v7

    instance-of v10, v8, Lmiui/maml/data/Expression$NumberVariableExpression;

    if-eqz v10, :cond_117

    new-instance v10, Lmiui/maml/data/Expression$NumberArrayVariableExpression;

    invoke-direct {v10, p0, v7, v9}, Lmiui/maml/data/Expression$NumberArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    move-object v6, v10

    goto :goto_121

    :cond_117
    instance-of v10, v8, Lmiui/maml/data/Expression$StringVariableExpression;

    if-eqz v10, :cond_121

    new-instance v10, Lmiui/maml/data/Expression$StringArrayVariableExpression;

    invoke-direct {v10, p0, v7, v9}, Lmiui/maml/data/Expression$StringArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    move-object v6, v10

    :cond_121
    :goto_121
    goto :goto_136

    :cond_122
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to buid: the expression before [] is not a variable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_136
    if-nez v6, :cond_1a0

    return-object v1

    :pswitch_139
    invoke-static {p0, v2, v4}, Lmiui/maml/data/Expression;->buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;

    move-result-object v6

    if-nez v6, :cond_1a0

    return-object v1

    :pswitch_140
    new-instance v7, Lmiui/maml/data/Expression$StringExpression;

    iget-object v8, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v7, v8}, Lmiui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_1a0

    :pswitch_149
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_168

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v7, v7, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    sget-object v9, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    if-ne v7, v9, :cond_168

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v7, v7, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    iget-boolean v7, v7, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    if-eqz v7, :cond_168

    goto :goto_169

    :cond_168
    const/4 v8, 0x0

    :goto_169
    move v7, v8

    new-instance v8, Lmiui/maml/data/Expression$NumberExpression;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_176

    const-string v10, "-"

    goto :goto_178

    :cond_176
    const-string v10, ""

    :goto_178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    if-eqz v7, :cond_18d

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_18d
    goto :goto_1a0

    :pswitch_18e
    new-instance v7, Lmiui/maml/data/Expression$StringVariableExpression;

    iget-object v8, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v7, p0, v8}, Lmiui/maml/data/Expression$StringVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_1a0

    :pswitch_197
    new-instance v7, Lmiui/maml/data/Expression$NumberVariableExpression;

    iget-object v8, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v7, p0, v8}, Lmiui/maml/data/Expression$NumberVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    move-object v6, v7

    nop

    :cond_1a0
    :goto_1a0
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_1cb

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v7, v7, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    if-eqz v7, :cond_1cb

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v7, v7, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    iget-boolean v7, v7, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    if-eqz v7, :cond_1cb

    new-instance v7, Lmiui/maml/data/Expression$UnaryExpression;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v8, v8, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    invoke-direct {v7, v6, v8}, Lmiui/maml/data/Expression$UnaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    move-object v6, v7

    goto :goto_1a0

    :cond_1cb
    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_1cf
    move-object v3, v2

    goto/16 :goto_1d

    :cond_1d2
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v9

    add-int/2addr v9, v8

    if-eq v6, v9, :cond_1f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to buid: invalid expression:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1f2
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Expression;

    :goto_1f8
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_213

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/Expression;

    new-instance v7, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v8, v8, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    invoke-direct {v7, v6, v1, v8}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    move-object v1, v7

    goto :goto_1f8

    :cond_213
    return-object v1

    :pswitch_data_214
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_b3
        :pswitch_b3
        :pswitch_b3
        :pswitch_b3
        :pswitch_b3
        :pswitch_3b
        :pswitch_36
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0x1
        :pswitch_197
        :pswitch_18e
        :pswitch_149
        :pswitch_140
        :pswitch_139
        :pswitch_c3
    .end packed-switch
.end method

.method public static buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lmiui/maml/data/Expression;

    const/4 v2, 0x0

    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_2d

    aget-object v3, v0, v2

    if-eqz v3, :cond_28

    instance-of v4, v3, Lmiui/maml/data/Expression$NumberExpression;

    if-nez v4, :cond_28

    instance-of v4, v3, Lmiui/maml/data/Expression$StringExpression;

    if-eqz v4, :cond_20

    goto :goto_28

    :cond_20
    new-instance v4, Lmiui/maml/data/RootExpression;

    invoke-direct {v4, p0, v3}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    aput-object v4, v1, v2

    goto :goto_2a

    :cond_28
    :goto_28
    aput-object v3, v1, v2

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2d
    return-object v1
.end method

.method private static buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_43

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v1, :cond_36

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_29

    if-nez v0, :cond_29

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    goto :goto_36

    :cond_29
    const/16 v6, 0x28

    if-ne v5, v6, :cond_30

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_30
    const/16 v6, 0x29

    if-ne v5, v6, :cond_36

    add-int/lit8 v0, v0, -0x1

    :cond_36
    :goto_36
    const/16 v6, 0x27

    if-ne v5, v6, :cond_40

    if-nez v1, :cond_3e

    const/4 v6, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v6, 0x0

    :goto_3f
    move v1, v6

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_54

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/Expression;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lmiui/maml/data/Expression;

    return-object v5
.end method

.method private static checkParams([Lmiui/maml/data/Expression;)Z
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    aget-object v1, p0, v0

    if-nez v1, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private static isDigitCharRest(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_1c

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_1c

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-le p0, v0, :cond_1c

    :cond_18
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private static isDigitCharStart(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isFunctionCharRest(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_15

    const/16 v0, 0x30

    if-lt p0, v0, :cond_13

    const/16 v0, 0x39

    if-gt p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private static isFunctionCharStart(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static isVariableChar(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_23

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_10

    const/16 v0, 0x5a

    if-le p0, v0, :cond_23

    :cond_10
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x30

    if-lt p0, v0, :cond_21

    const/16 v0, 0x39

    if-gt p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .registers 2

    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    return-void
.end method

.method public abstract evaluate()D
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :try_start_4
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v2

    :catch_9
    move-exception v2

    const/4 v3, 0x0

    return-object v3
.end method
