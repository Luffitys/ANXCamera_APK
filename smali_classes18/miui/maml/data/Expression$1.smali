.class synthetic Lmiui/maml/data/Expression$1;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$maml$data$Expression$Ope:[I

.field static final synthetic $SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    invoke-static {}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->values()[Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v2}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    sget-object v3, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v3}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    sget-object v4, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v4}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    const/4 v3, 0x4

    :try_start_2f
    sget-object v4, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    sget-object v5, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v5}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    :goto_3b
    const/4 v4, 0x5

    :try_start_3c
    sget-object v5, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    sget-object v6, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v6}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v5

    :goto_48
    const/4 v5, 0x6

    :try_start_49
    sget-object v6, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    sget-object v7, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v7}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v6

    :goto_55
    const/4 v6, 0x7

    :try_start_56
    sget-object v7, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    sget-object v8, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v8}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v7

    :goto_62
    const/16 v7, 0x8

    :try_start_64
    sget-object v8, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    sget-object v9, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v9}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v8

    :goto_70
    invoke-static {}, Lmiui/maml/data/Expression$Ope;->values()[Lmiui/maml/data/Expression$Ope;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    :try_start_79
    sget-object v9, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v9}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v1

    :goto_83
    :try_start_83
    sget-object v1, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v8, Lmiui/maml/data/Expression$Ope;->NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v8}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v8

    aput v0, v1, v8
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    move-exception v0

    :goto_8f
    :try_start_8f
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_99} :catch_9a

    goto :goto_9b

    :catch_9a
    move-exception v0

    :goto_9b
    :try_start_9b
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->ADD:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a5} :catch_a6

    goto :goto_a7

    :catch_a6
    move-exception v0

    :goto_a7
    :try_start_a7
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_b2

    goto :goto_b3

    :catch_b2
    move-exception v0

    :goto_b3
    :try_start_b3
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bd} :catch_be

    goto :goto_bf

    :catch_be
    move-exception v0

    :goto_bf
    :try_start_bf
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_c9} :catch_ca

    goto :goto_cb

    :catch_ca
    move-exception v0

    :goto_cb
    :try_start_cb
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d5} :catch_d6

    goto :goto_d7

    :catch_d6
    move-exception v0

    :goto_d7
    :try_start_d7
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e3} :catch_e4

    goto :goto_e5

    :catch_e4
    move-exception v0

    :goto_e5
    :try_start_e5
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_XOR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_f1} :catch_f2

    goto :goto_f3

    :catch_f2
    move-exception v0

    :goto_f3
    :try_start_f3
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_LSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_ff} :catch_100

    goto :goto_101

    :catch_100
    move-exception v0

    :goto_101
    :try_start_101
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_RSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10d} :catch_10e

    goto :goto_10f

    :catch_10e
    move-exception v0

    :goto_10f
    :try_start_10f
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->EQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_11b} :catch_11c

    goto :goto_11d

    :catch_11c
    move-exception v0

    :goto_11d
    :try_start_11d
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->NEQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_129} :catch_12a

    goto :goto_12b

    :catch_12a
    move-exception v0

    :goto_12b
    :try_start_12b
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_137
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_137} :catch_138

    goto :goto_139

    :catch_138
    move-exception v0

    :goto_139
    :try_start_139
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_145
    .catch Ljava/lang/NoSuchFieldError; {:try_start_139 .. :try_end_145} :catch_146

    goto :goto_147

    :catch_146
    move-exception v0

    :goto_147
    :try_start_147
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->GT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_153
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_153} :catch_154

    goto :goto_155

    :catch_154
    move-exception v0

    :goto_155
    :try_start_155
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->GE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_161
    .catch Ljava/lang/NoSuchFieldError; {:try_start_155 .. :try_end_161} :catch_162

    goto :goto_163

    :catch_162
    move-exception v0

    :goto_163
    :try_start_163
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->LT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_163 .. :try_end_16f} :catch_170

    goto :goto_171

    :catch_170
    move-exception v0

    :goto_171
    :try_start_171
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    sget-object v1, Lmiui/maml/data/Expression$Ope;->LE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_17d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_171 .. :try_end_17d} :catch_17e

    goto :goto_17f

    :catch_17e
    move-exception v0

    :goto_17f
    return-void
.end method
