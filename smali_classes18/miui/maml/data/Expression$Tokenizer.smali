.class Lmiui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$Tokenizer$Token;,
        Lmiui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# static fields
.field private static final BRACKET_MODE_NONE:I = 0x0

.field private static final BRACKET_MODE_ROUND:I = 0x1

.field private static final BRACKET_MODE_SQUARE:I = 0x2


# instance fields
.field private mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/data/Expression$OpeInfo$Parser;

    invoke-direct {v0}, Lmiui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/Expression$Tokenizer;->reset()V

    return-void
.end method


# virtual methods
.method public getToken()Lmiui/maml/data/Expression$Tokenizer$Token;
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v7, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    :goto_11
    const-string v9, "Expression"

    const/4 v10, 0x0

    if-ge v8, v7, :cond_1ae

    iget-object v11, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x1

    if-nez v3, :cond_16b

    const/16 v13, 0x23

    if-eq v11, v13, :cond_123

    const/16 v14, 0x40

    if-ne v11, v14, :cond_2b

    move/from16 v16, v2

    goto/16 :goto_125

    :cond_2b
    const/4 v9, 0x0

    const/16 v10, 0x27

    if-ne v11, v10, :cond_6b

    const/4 v13, 0x0

    add-int/lit8 v14, v8, 0x1

    :goto_33
    if-ge v14, v7, :cond_4d

    iget-object v15, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-nez v13, :cond_40

    if-ne v15, v10, :cond_40

    goto :goto_4d

    :cond_40
    const/16 v10, 0x5c

    if-ne v15, v10, :cond_46

    move v10, v12

    goto :goto_47

    :cond_46
    move v10, v9

    :goto_47
    move v13, v10

    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0x27

    goto :goto_33

    :cond_4d
    :goto_4d
    add-int/lit8 v9, v14, 0x1

    iput v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v15, "\\\'"

    move/from16 v16, v2

    const-string v2, "\'"

    invoke-virtual {v12, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v10, v2}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_6b
    move/from16 v16, v2

    const/16 v2, 0x28

    if-ne v11, v2, :cond_75

    const/4 v2, 0x1

    move v3, v2

    goto/16 :goto_16d

    :cond_75
    const/16 v2, 0x5b

    if-ne v11, v2, :cond_7d

    const/4 v2, 0x2

    move v3, v2

    goto/16 :goto_16d

    :cond_7d
    # invokes: Lmiui/maml/data/Expression;->isDigitCharStart(C)Z
    invoke-static {v11}, Lmiui/maml/data/Expression;->access$300(C)Z

    move-result v2

    if-eqz v2, :cond_bf

    add-int/lit8 v2, v8, 0x1

    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_9d

    if-ge v2, v7, :cond_9d

    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x78

    if-ne v9, v10, :cond_9d

    add-int/lit8 v2, v2, 0x1

    :cond_9d
    :goto_9d
    if-ge v2, v7, :cond_af

    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    # invokes: Lmiui/maml/data/Expression;->isDigitCharRest(C)Z
    invoke-static {v9}, Lmiui/maml/data/Expression;->access$400(C)Z

    move-result v9

    if-nez v9, :cond_ac

    goto :goto_af

    :cond_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    :cond_af
    :goto_af
    iput v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_bf
    # invokes: Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z
    invoke-static {v11}, Lmiui/maml/data/Expression;->access$500(C)Z

    move-result v2

    if-eqz v2, :cond_e9

    add-int/lit8 v2, v8, 0x1

    :goto_c7
    if-ge v2, v7, :cond_d9

    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    # invokes: Lmiui/maml/data/Expression;->isFunctionCharRest(C)Z
    invoke-static {v9}, Lmiui/maml/data/Expression;->access$600(C)Z

    move-result v9

    if-nez v9, :cond_d6

    goto :goto_d9

    :cond_d6
    add-int/lit8 v2, v2, 0x1

    goto :goto_c7

    :cond_d9
    :goto_d9
    iput v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_e9
    iget-object v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v2, v11, v12}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v2

    if-eqz v2, :cond_16d

    add-int/lit8 v2, v8, 0x1

    :goto_f3
    if-ge v2, v7, :cond_107

    iget-object v10, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    iget-object v13, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13, v9}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v10

    if-nez v10, :cond_104

    goto :goto_107

    :cond_104
    add-int/lit8 v2, v2, 0x1

    goto :goto_f3

    :cond_107
    :goto_107
    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v9}, Lmiui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lmiui/maml/data/Expression$Ope;

    move-result-object v9

    sget-object v10, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-eq v9, v10, :cond_16d

    iput v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v10, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v12, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v13, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    iget v14, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v12, v13, v9}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lmiui/maml/data/Expression$Ope;)V

    return-object v10

    :cond_123
    move/from16 v16, v2

    :goto_125
    add-int/lit8 v2, v8, 0x1

    :goto_127
    if-ge v2, v7, :cond_139

    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    # invokes: Lmiui/maml/data/Expression;->isVariableChar(C)Z
    invoke-static {v12}, Lmiui/maml/data/Expression;->access$200(C)Z

    move-result v12

    if-nez v12, :cond_136

    goto :goto_139

    :cond_136
    add-int/lit8 v2, v2, 0x1

    goto :goto_127

    :cond_139
    :goto_139
    add-int/lit8 v12, v8, 0x1

    if-ne v2, v12, :cond_154

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid variable name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_154
    iput v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    if-ne v11, v13, :cond_15d

    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_15f

    :cond_15d
    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    :goto_15f
    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v12, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_16b
    move/from16 v16, v2

    :cond_16d
    :goto_16d
    if-eqz v3, :cond_1a8

    if-nez v1, :cond_18b

    if-eq v3, v12, :cond_180

    const/4 v2, 0x2

    if-eq v3, v2, :cond_177

    goto :goto_188

    :cond_177
    const/16 v2, 0x5b

    const/16 v4, 0x5d

    sget-object v6, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move v5, v4

    move v4, v2

    goto :goto_188

    :cond_180
    const/16 v2, 0x28

    const/16 v4, 0x29

    sget-object v6, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move v5, v4

    move v4, v2

    :goto_188
    add-int/lit8 v2, v8, 0x1

    goto :goto_18d

    :cond_18b
    move/from16 v2, v16

    :goto_18d
    if-ne v11, v4, :cond_192

    add-int/lit8 v1, v1, 0x1

    goto :goto_1aa

    :cond_192
    if-ne v11, v5, :cond_1aa

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1aa

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v10, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v6, v10}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_1a8
    move/from16 v2, v16

    :cond_1aa
    :goto_1aa
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_11

    :cond_1ae
    move/from16 v16, v2

    if-eqz v1, :cond_1c8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mismatched bracket:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c8
    return-object v10
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    return-void
.end method
