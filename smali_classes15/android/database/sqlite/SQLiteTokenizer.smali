.class public Landroid/database/sqlite/SQLiteTokenizer;
.super Ljava/lang/Object;
.source "SQLiteTokenizer.java"


# static fields
.field public static final OPTION_NONE:I = 0x0

.field public static final OPTION_TOKEN_ONLY:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlNum(C)Z
    .registers 2

    invoke-static {p0}, Landroid/database/sqlite/SQLiteTokenizer;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/database/sqlite/SQLiteTokenizer;->isNum(C)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static isAlpha(C)Z
    .registers 2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x41

    if-gt v0, p0, :cond_10

    const/16 v0, 0x5a

    if-le p0, v0, :cond_14

    :cond_10
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static isAnyOf(CLjava/lang/String;)Z
    .registers 3

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isFunction(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_1a0

    :cond_f
    goto/16 :goto_19a

    :sswitch_11
    const-string/jumbo v1, "replace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x15

    goto/16 :goto_19b

    :sswitch_1e
    const-string/jumbo v1, "zeroblob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x20

    goto/16 :goto_19b

    :sswitch_2b
    const-string/jumbo v1, "randomblob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    goto/16 :goto_19b

    :sswitch_38
    const-string/jumbo v1, "upper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1f

    goto/16 :goto_19b

    :sswitch_45
    const-string/jumbo v1, "total"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1a

    goto/16 :goto_19b

    :sswitch_52
    const-string/jumbo v1, "rtrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x17

    goto/16 :goto_19b

    :sswitch_5f
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x16

    goto/16 :goto_19b

    :sswitch_6c
    const-string v1, "ltrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xf

    goto/16 :goto_19b

    :sswitch_78
    const-string v1, "lower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto/16 :goto_19b

    :sswitch_84
    const-string v1, "instr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    goto/16 :goto_19b

    :sswitch_90
    const-string v1, "count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x4

    goto/16 :goto_19b

    :sswitch_9b
    const-string/jumbo v1, "trim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1b

    goto/16 :goto_19b

    :sswitch_a8
    const-string v1, "like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    goto/16 :goto_19b

    :sswitch_b4
    const-string v1, "glob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    goto/16 :goto_19b

    :sswitch_bf
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto/16 :goto_19b

    :sswitch_ca
    const-string/jumbo v1, "sum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x19

    goto/16 :goto_19b

    :sswitch_d7
    const-string v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    goto/16 :goto_19b

    :sswitch_e3
    const-string v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    goto/16 :goto_19b

    :sswitch_ef
    const-string v1, "hex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x7

    goto/16 :goto_19b

    :sswitch_fa
    const-string v1, "avg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto/16 :goto_19b

    :sswitch_105
    const-string v1, "abs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto/16 :goto_19b

    :sswitch_110
    const-string/jumbo v1, "unlikely"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1e

    goto/16 :goto_19b

    :sswitch_11d
    const-string/jumbo v1, "unicode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1d

    goto/16 :goto_19b

    :sswitch_12a
    const-string v1, "likelihood"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    goto/16 :goto_19b

    :sswitch_136
    const-string v1, "group_concat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x6

    goto :goto_19b

    :sswitch_140
    const-string/jumbo v1, "typeof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1c

    goto :goto_19b

    :sswitch_14c
    const-string/jumbo v1, "substr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x18

    goto :goto_19b

    :sswitch_158
    const-string/jumbo v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x13

    goto :goto_19b

    :sswitch_164
    const-string v1, "coalesce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto :goto_19b

    :sswitch_16e
    const-string v1, "nullif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    goto :goto_19b

    :sswitch_179
    const-string v1, "likely"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    goto :goto_19b

    :sswitch_184
    const-string v1, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xa

    goto :goto_19b

    :sswitch_18f
    const-string v1, "ifnull"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    goto :goto_19b

    :goto_19a
    const/4 v0, -0x1

    :goto_19b
    packed-switch v0, :pswitch_data_226

    return v2

    :pswitch_19f
    return v3

    :sswitch_data_1a0
    .sparse-switch
        -0x470203dc -> :sswitch_18f
        -0x41f1c51a -> :sswitch_184
        -0x41bacc9c -> :sswitch_179
        -0x3da7731c -> :sswitch_16e
        -0x38705059 -> :sswitch_164
        -0x37ed1b3d -> :sswitch_158
        -0x3523a80f -> :sswitch_14c
        -0x3330496f -> :sswitch_140
        -0x275cff2c -> :sswitch_136
        -0x18bba190 -> :sswitch_12a
        -0x111b8523 -> :sswitch_11d
        -0xce3d4c3 -> :sswitch_110
        0x17872 -> :sswitch_105
        0x17ad2 -> :sswitch_fa
        0x1931b -> :sswitch_ef
        0x1a564 -> :sswitch_e3
        0x1a652 -> :sswitch_d7
        0x1be4b -> :sswitch_ca
        0x2e9356 -> :sswitch_bf
        0x307578 -> :sswitch_b4
        0x32af97 -> :sswitch_a8
        0x367422 -> :sswitch_9b
        0x5a7510f -> :sswitch_90
        0x5fb62ec -> :sswitch_84
        0x6262b01 -> :sswitch_78
        0x6285e8e -> :sswitch_6c
        0x67ab18e -> :sswitch_5f
        0x67ceb94 -> :sswitch_52
        0x696db44 -> :sswitch_45
        0x6a558a2 -> :sswitch_38
        0x6eafae0 -> :sswitch_2b
        0x28f79a45 -> :sswitch_1e
        0x413cb2b4 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
        :pswitch_19f
    .end packed-switch
.end method

.method public static isKeyword(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_6ba

    :cond_f
    goto/16 :goto_6b4

    :sswitch_11
    const-string v1, "HAVING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x3d

    goto/16 :goto_6b5

    :sswitch_1d
    const-string v1, "GROUPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x3c

    goto/16 :goto_6b5

    :sswitch_29
    const-string v1, "FILTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x34

    goto/16 :goto_6b5

    :sswitch_35
    const-string v1, "WITHOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8e

    goto/16 :goto_6b5

    :sswitch_41
    const-string v1, "EXISTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x31

    goto/16 :goto_6b5

    :sswitch_4d
    const-string v1, "EXCEPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2e

    goto/16 :goto_6b5

    :sswitch_59
    const-string v1, "ESCAPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2d

    goto/16 :goto_6b5

    :sswitch_65
    const-string v1, "DETACH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x26

    goto/16 :goto_6b5

    :sswitch_71
    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x24

    goto/16 :goto_6b5

    :sswitch_7d
    const-string v1, "CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1a

    goto/16 :goto_6b5

    :sswitch_89
    const-string v1, "COMMIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x17

    goto/16 :goto_6b5

    :sswitch_95
    const-string v1, "COLUMN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x16

    goto/16 :goto_6b5

    :sswitch_a1
    const-string v1, "BINARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xf

    goto/16 :goto_6b5

    :sswitch_ad
    const-string v1, "BEFORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    goto/16 :goto_6b5

    :sswitch_b9
    const-string v1, "ATTACH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xa

    goto/16 :goto_6b5

    :sswitch_c5
    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto/16 :goto_6b5

    :sswitch_d0
    const-string v1, "REFERENCES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x6a

    goto/16 :goto_6b5

    :sswitch_dc
    const-string v1, "CURRENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1c

    goto/16 :goto_6b5

    :sswitch_e8
    const-string v1, "REPLACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x6f

    goto/16 :goto_6b5

    :sswitch_f4
    const-string v1, "RELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x6d

    goto/16 :goto_6b5

    :sswitch_100
    const-string v1, "REINDEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x6c

    goto/16 :goto_6b5

    :sswitch_10c
    const-string v1, "COLLATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x15

    goto/16 :goto_6b5

    :sswitch_118
    const-string v1, "DEFERRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x23

    goto/16 :goto_6b5

    :sswitch_124
    const-string v1, "PRECEDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x64

    goto/16 :goto_6b5

    :sswitch_130
    const-string v1, "CASCADE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    goto/16 :goto_6b5

    :sswitch_13c
    const-string v1, "VIRTUAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x89

    goto/16 :goto_6b5

    :sswitch_148
    const-string v1, "DISTINCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x27

    goto/16 :goto_6b5

    :sswitch_154
    const-string v1, "PARTITION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x61

    goto/16 :goto_6b5

    :sswitch_160
    const-string v1, "ROLLBACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x72

    goto/16 :goto_6b5

    :sswitch_16c
    const-string v1, "BETWEEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto/16 :goto_6b5

    :sswitch_178
    const-string v1, "TEMPORARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x7b

    goto/16 :goto_6b5

    :sswitch_184
    const-string v1, "RESTRICT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x70

    goto/16 :goto_6b5

    :sswitch_190
    const-string v1, "PRIMARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x65

    goto/16 :goto_6b5

    :sswitch_19c
    const-string v1, "DEFERRABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x22

    goto/16 :goto_6b5

    :sswitch_1a8
    const-string v1, "CONSTRAINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x19

    goto/16 :goto_6b5

    :sswitch_1b4
    const-string v1, "UNBOUNDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x81

    goto/16 :goto_6b5

    :sswitch_1c0
    const-string v1, "CONFLICT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x18

    goto/16 :goto_6b5

    :sswitch_1cc
    const-string v1, "EXCLUSIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x30

    goto/16 :goto_6b5

    :sswitch_1d8
    const-string v1, "WHERE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8b

    goto/16 :goto_6b5

    :sswitch_1e4
    const-string v1, "USING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x85

    goto/16 :goto_6b5

    :sswitch_1f0
    const-string v1, "UNION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x82

    goto/16 :goto_6b5

    :sswitch_1fc
    const-string v1, "TABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x79

    goto/16 :goto_6b5

    :sswitch_208
    const-string v1, "RTRIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x75

    goto/16 :goto_6b5

    :sswitch_214
    const-string v1, "RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x71

    goto/16 :goto_6b5

    :sswitch_220
    const-string v1, "RANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x68

    goto/16 :goto_6b5

    :sswitch_22c
    const-string v1, "RAISE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x67

    goto/16 :goto_6b5

    :sswitch_238
    const-string v1, "QUERY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x66

    goto/16 :goto_6b5

    :sswitch_244
    const-string v1, "OUTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x5f

    goto/16 :goto_6b5

    :sswitch_250
    const-string v1, "ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x5d

    goto/16 :goto_6b5

    :sswitch_25c
    const-string v1, "MATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x51

    goto/16 :goto_6b5

    :sswitch_268
    const-string v1, "LIMIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x50

    goto/16 :goto_6b5

    :sswitch_274
    const-string v1, "INNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x45

    goto/16 :goto_6b5

    :sswitch_280
    const-string v1, "INDEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x42

    goto/16 :goto_6b5

    :sswitch_28c
    const-string v1, "GROUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x3b

    goto/16 :goto_6b5

    :sswitch_298
    const-string v1, "CROSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1b

    goto/16 :goto_6b5

    :sswitch_2a4
    const-string v1, "CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    goto/16 :goto_6b5

    :sswitch_2b0
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_6b5

    :sswitch_2bc
    const-string v1, "ALTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    goto/16 :goto_6b5

    :sswitch_2c7
    const-string v1, "AFTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto/16 :goto_6b5

    :sswitch_2d2
    const-string v1, "ABORT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto/16 :goto_6b5

    :sswitch_2dd
    const-string v1, "FOREIGN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x37

    goto/16 :goto_6b5

    :sswitch_2e9
    const-string v1, "WITH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8d

    goto/16 :goto_6b5

    :sswitch_2f5
    const-string v1, "WHEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8a

    goto/16 :goto_6b5

    :sswitch_301
    const-string v1, "VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x88

    goto/16 :goto_6b5

    :sswitch_30d
    const-string v1, "TIES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x7d

    goto/16 :goto_6b5

    :sswitch_319
    const-string v1, "THEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x7c

    goto/16 :goto_6b5

    :sswitch_325
    const-string v1, "TEMP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x7a

    goto/16 :goto_6b5

    :sswitch_331
    const-string v1, "ROWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x74

    goto/16 :goto_6b5

    :sswitch_33d
    const-string v1, "PLAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x62

    goto/16 :goto_6b5

    :sswitch_349
    const-string v1, "OVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x60

    goto/16 :goto_6b5

    :sswitch_355
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x58

    goto/16 :goto_6b5

    :sswitch_361
    const-string v1, "LIKE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x4f

    goto/16 :goto_6b5

    :sswitch_36d
    const-string v1, "LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x4e

    goto/16 :goto_6b5

    :sswitch_379
    const-string v1, "JOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x4c

    goto/16 :goto_6b5

    :sswitch_385
    const-string v1, "INTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x49

    goto/16 :goto_6b5

    :sswitch_391
    const-string v1, "GLOB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x3a

    goto/16 :goto_6b5

    :sswitch_39d
    const-string v1, "FULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x39

    goto/16 :goto_6b5

    :sswitch_3a9
    const-string v1, "FROM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x38

    goto/16 :goto_6b5

    :sswitch_3b5
    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x33

    goto/16 :goto_6b5

    :sswitch_3c1
    const-string v1, "ELSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2b

    goto/16 :goto_6b5

    :sswitch_3cd
    const-string v1, "EACH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2a

    goto/16 :goto_6b5

    :sswitch_3d9
    const-string v1, "DROP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x29

    goto/16 :goto_6b5

    :sswitch_3e5
    const-string v1, "DESC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x25

    goto/16 :goto_6b5

    :sswitch_3f1
    const-string v1, "CAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x13

    goto/16 :goto_6b5

    :sswitch_3fd
    const-string v1, "CASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    goto/16 :goto_6b5

    :sswitch_409
    const-string v1, "SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x78

    goto/16 :goto_6b5

    :sswitch_415
    const-string v1, "ROW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x73

    goto/16 :goto_6b5

    :sswitch_421
    const-string v1, "NOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x55

    goto/16 :goto_6b5

    :sswitch_42d
    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x4d

    goto/16 :goto_6b5

    :sswitch_439
    const-string v1, "FOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x36

    goto/16 :goto_6b5

    :sswitch_445
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2c

    goto/16 :goto_6b5

    :sswitch_451
    const-string v1, "ASC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    goto/16 :goto_6b5

    :sswitch_45d
    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x7

    goto/16 :goto_6b5

    :sswitch_468
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x4

    goto/16 :goto_6b5

    :sswitch_473
    const-string v1, "ADD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto/16 :goto_6b5

    :sswitch_47e
    const-string v1, "TO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x7e

    goto/16 :goto_6b5

    :sswitch_48a
    const-string v1, "OR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x5c

    goto/16 :goto_6b5

    :sswitch_496
    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x5b

    goto/16 :goto_6b5

    :sswitch_4a2
    const-string v1, "OF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x59

    goto/16 :goto_6b5

    :sswitch_4ae
    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x53

    goto/16 :goto_6b5

    :sswitch_4ba
    const-string v1, "IS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x4a

    goto/16 :goto_6b5

    :sswitch_4c6
    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x41

    goto/16 :goto_6b5

    :sswitch_4d2
    const-string v1, "IF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x3e

    goto/16 :goto_6b5

    :sswitch_4de
    const-string v1, "DO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x28

    goto/16 :goto_6b5

    :sswitch_4ea
    const-string v1, "BY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    goto/16 :goto_6b5

    :sswitch_4f6
    const-string v1, "AS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    goto/16 :goto_6b5

    :sswitch_502
    const-string v1, "TRANSACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x7f

    goto/16 :goto_6b5

    :sswitch_50e
    const-string v1, "ANALYZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x6

    goto/16 :goto_6b5

    :sswitch_519
    const-string v1, "CURRENT_TIMESTAMP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1f

    goto/16 :goto_6b5

    :sswitch_525
    const-string v1, "TRIGGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x80

    goto/16 :goto_6b5

    :sswitch_531
    const-string v1, "RECURSIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x69

    goto/16 :goto_6b5

    :sswitch_53d
    const-string v1, "IMMEDIATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x40

    goto/16 :goto_6b5

    :sswitch_549
    const-string v1, "CURRENT_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1e

    goto/16 :goto_6b5

    :sswitch_555
    const-string v1, "CURRENT_DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x1d

    goto/16 :goto_6b5

    :sswitch_561
    const-string v1, "EXPLAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x32

    goto/16 :goto_6b5

    :sswitch_56d
    const-string v1, "EXCLUDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2f

    goto/16 :goto_6b5

    :sswitch_579
    const-string v1, "FOLLOWING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x35

    goto/16 :goto_6b5

    :sswitch_585
    const-string v1, "INTERSECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x48

    goto/16 :goto_6b5

    :sswitch_591
    const-string v1, "SAVEPOINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x76

    goto/16 :goto_6b5

    :sswitch_59d
    const-string v1, "AUTOINCREMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    goto/16 :goto_6b5

    :sswitch_5a9
    const-string v1, "NOTNULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x57

    goto/16 :goto_6b5

    :sswitch_5b5
    const-string v1, "NOTHING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x56

    goto/16 :goto_6b5

    :sswitch_5c1
    const-string v1, "INSTEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x47

    goto/16 :goto_6b5

    :sswitch_5cd
    const-string v1, "INDEXED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x43

    goto/16 :goto_6b5

    :sswitch_5d9
    const-string v1, "DATABASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x20

    goto/16 :goto_6b5

    :sswitch_5e5
    const-string v1, "WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8c

    goto/16 :goto_6b5

    :sswitch_5f1
    const-string v1, "INITIALLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x44

    goto/16 :goto_6b5

    :sswitch_5fd
    const-string v1, "VALUES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x87

    goto/16 :goto_6b5

    :sswitch_609
    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x86

    goto/16 :goto_6b5

    :sswitch_615
    const-string v1, "UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x84

    goto/16 :goto_6b5

    :sswitch_621
    const-string v1, "UNIQUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x83

    goto/16 :goto_6b5

    :sswitch_62d
    const-string v1, "NATURAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x52

    goto/16 :goto_6b5

    :sswitch_639
    const-string v1, "SELECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x77

    goto/16 :goto_6b5

    :sswitch_645
    const-string v1, "RENAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x6e

    goto/16 :goto_6b5

    :sswitch_651
    const-string v1, "REGEXP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x6b

    goto :goto_6b5

    :sswitch_65c
    const-string v1, "PRAGMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x63

    goto :goto_6b5

    :sswitch_667
    const-string v1, "OTHERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x5e

    goto :goto_6b5

    :sswitch_672
    const-string v1, "OFFSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x5a

    goto :goto_6b5

    :sswitch_67d
    const-string v1, "NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x54

    goto :goto_6b5

    :sswitch_688
    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x21

    goto :goto_6b5

    :sswitch_693
    const-string v1, "ISNULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x4b

    goto :goto_6b5

    :sswitch_69e
    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x46

    goto :goto_6b5

    :sswitch_6a9
    const-string v1, "IGNORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x3f

    goto :goto_6b5

    :goto_6b4
    const/4 v0, -0x1

    :goto_6b5
    packed-switch v0, :pswitch_data_8f8

    return v2

    :pswitch_6b9
    return v3

    :sswitch_data_6ba
    .sparse-switch
        -0x7f610e2e -> :sswitch_6a9
        -0x7efc4947 -> :sswitch_69e
        -0x7eb7de4f -> :sswitch_693
        -0x79209ddf -> :sswitch_688
        -0x766d4b8f -> :sswitch_67d
        -0x7535a76d -> :sswitch_672
        -0x746fa89d -> :sswitch_667
        -0x72da26c4 -> :sswitch_65c
        -0x7024f2f7 -> :sswitch_651
        -0x7021d4c2 -> :sswitch_645
        -0x6e6dd704 -> :sswitch_639
        -0x6e275bf7 -> :sswitch_62d
        -0x6a86802f -> :sswitch_621
        -0x6a6cd337 -> :sswitch_615
        -0x698b844b -> :sswitch_609
        -0x69876ede -> :sswitch_5fd
        -0x68bf4c4f -> :sswitch_5f1
        -0x67613010 -> :sswitch_5e5
        -0x66b0fe85 -> :sswitch_5d9
        -0x61602b2f -> :sswitch_5cd
        -0x608640de -> :sswitch_5c1
        -0x56498c53 -> :sswitch_5b5
        -0x5646a546 -> :sswitch_5a9
        -0x4ecc4580 -> :sswitch_59d
        -0x4e00f5ed -> :sswitch_591
        -0x3bec8b01 -> :sswitch_585
        -0x2c40fd8f -> :sswitch_579
        -0x23f39646 -> :sswitch_56d
        -0x233caf29 -> :sswitch_561
        -0x1c97b92c -> :sswitch_555
        -0x1c90560d -> :sswitch_549
        -0x16e3386f -> :sswitch_53d
        -0x146b8bee -> :sswitch_531
        -0x14611e68 -> :sswitch_525
        -0xfab9e70 -> :sswitch_519
        -0x8b916d4 -> :sswitch_50e
        -0xb9942 -> :sswitch_502
        0x832 -> :sswitch_4f6
        0x857 -> :sswitch_4ea
        0x88b -> :sswitch_4de
        0x91d -> :sswitch_4d2
        0x925 -> :sswitch_4c6
        0x92a -> :sswitch_4ba
        0x9c1 -> :sswitch_4ae
        0x9d7 -> :sswitch_4a2
        0x9df -> :sswitch_496
        0x9e3 -> :sswitch_48a
        0xa7b -> :sswitch_47e
        0xfc81 -> :sswitch_473
        0xfd81 -> :sswitch_468
        0xfdb7 -> :sswitch_45d
        0xfe51 -> :sswitch_451
        0x10cbb -> :sswitch_445
        0x110a9 -> :sswitch_439
        0x1223f -> :sswitch_42d
        0x12eb3 -> :sswitch_421
        0x13dba -> :sswitch_415
        0x14042 -> :sswitch_409
        0x1f7330 -> :sswitch_3fd
        0x1f733f -> :sswitch_3f1
        0x1ff691 -> :sswitch_3e5
        0x2026ef -> :sswitch_3d9
        0x205a01 -> :sswitch_3cd
        0x208539 -> :sswitch_3c1
        0x20cf1e -> :sswitch_3b5
        0x210faa -> :sswitch_3a9
        0x211a8f -> :sswitch_39d
        0x216d78 -> :sswitch_391
        0x225e60 -> :sswitch_385
        0x22d52a -> :sswitch_379
        0x239807 -> :sswitch_36d
        0x23a797 -> :sswitch_361
        0x24bd87 -> :sswitch_355
        0x2534d4 -> :sswitch_349
        0x258329 -> :sswitch_33d
        0x2679d9 -> :sswitch_331
        0x273bd4 -> :sswitch_325
        0x27461d -> :sswitch_319
        0x2749e3 -> :sswitch_30d
        0x2832a5 -> :sswitch_301
        0x28a33a -> :sswitch_2f5
        0x28a8c6 -> :sswitch_2e9
        0x2670cb4 -> :sswitch_2dd
        0x3b32b10 -> :sswitch_2d2
        0x3b50dbc -> :sswitch_2c7
        0x3b7c7f6 -> :sswitch_2bc
        0x3c28089 -> :sswitch_2b0
        0x3d1ece8 -> :sswitch_2a4
        0x3d6a020 -> :sswitch_298
        0x40efe5f -> :sswitch_28c
        0x42930b2 -> :sswitch_280
        0x4295636 -> :sswitch_274
        0x451539b -> :sswitch_268
        0x45be1a5 -> :sswitch_25c
        0x47f8f2e -> :sswitch_250
        0x481285b -> :sswitch_244
        0x49d20a8 -> :sswitch_238
        0x4a22fcc -> :sswitch_22c
        0x4a2411d -> :sswitch_220
        0x4a5c9fc -> :sswitch_214
        0x4aaf374 -> :sswitch_208
        0x4be43ae -> :sswitch_1fc
        0x4d25eaf -> :sswitch_1f0
        0x4d4a464 -> :sswitch_1e4
        0x4ebc4c7 -> :sswitch_1d8
        0xa9fce7e -> :sswitch_1cc
        0xc131bd2 -> :sswitch_1c0
        0x1050f1c4 -> :sswitch_1b4
        0x119101dd -> :sswitch_1a8
        0x1423ac9a -> :sswitch_19c
        0x180899e2 -> :sswitch_190
        0x1a96aabc -> :sswitch_184
        0x1c688e31 -> :sswitch_178
        0x1de1f7e8 -> :sswitch_16c
        0x1f2aeee4 -> :sswitch_160
        0x3ad122ca -> :sswitch_154
        0x3fdb1efc -> :sswitch_148
        0x4694aaeb -> :sswitch_13c
        0x4bdd9294 -> :sswitch_130
        0x53d214a3 -> :sswitch_124
        0x5543f7df -> :sswitch_118
        0x6362e006 -> :sswitch_10c
        0x6ba68e5f -> :sswitch_100
        0x6bccb3e7 -> :sswitch_f4
        0x6c083e94 -> :sswitch_e8
        0x6df74959 -> :sswitch_dc
        0x6f769688 -> :sswitch_d0
        0x72c27236 -> :sswitch_c5
        0x73b1e245 -> :sswitch_b9
        0x748d337f -> :sswitch_ad
        0x74c90001 -> :sswitch_a1
        0x76d1c756 -> :sswitch_95
        0x76d21d37 -> :sswitch_89
        0x76f894fc -> :sswitch_7d
        0x77f979ab -> :sswitch_71
        0x77fd0b93 -> :sswitch_65
        0x7a6f7481 -> :sswitch_59
        0x7ab5f919 -> :sswitch_4d
        0x7ab8e85c -> :sswitch_41
        0x7b918ca8 -> :sswitch_35
        0x7b9bbf78 -> :sswitch_29
        0x7dd0cdd4 -> :sswitch_1d
        0x7e991825 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_8f8
    .packed-switch 0x0
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
    .end packed-switch
.end method

.method private static isNum(C)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isType(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_11a

    :cond_f
    goto/16 :goto_114

    :sswitch_11
    const-string v1, "DOUBLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    goto/16 :goto_115

    :sswitch_1d
    const-string v1, "BIGINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    goto/16 :goto_115

    :sswitch_28
    const-string v1, "VARCHAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    goto/16 :goto_115

    :sswitch_34
    const-string v1, "BOOLEAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    goto/16 :goto_115

    :sswitch_40
    const-string v1, "MEDIUMINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x4

    goto/16 :goto_115

    :sswitch_4b
    const-string v1, "SMALLINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto/16 :goto_115

    :sswitch_56
    const-string v1, "NCHAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xa

    goto/16 :goto_115

    :sswitch_62
    const-string v1, "FLOAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    goto/16 :goto_115

    :sswitch_6e
    const-string v1, "CHARACTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    goto/16 :goto_115

    :sswitch_7a
    const-string v1, "TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    goto/16 :goto_115

    :sswitch_86
    const-string v1, "REAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xf

    goto/16 :goto_115

    :sswitch_92
    const-string v1, "INT8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x7

    goto/16 :goto_115

    :sswitch_9d
    const-string v1, "INT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x6

    goto/16 :goto_115

    :sswitch_a8
    const-string v1, "DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x15

    goto/16 :goto_115

    :sswitch_b4
    const-string v1, "CLOB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    goto :goto_115

    :sswitch_bf
    const-string v1, "BLOB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto :goto_115

    :sswitch_ca
    const-string v1, "INT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_115

    :sswitch_d4
    const-string v1, "NVARCHAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    goto :goto_115

    :sswitch_df
    const-string v1, "TINYINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto :goto_115

    :sswitch_e9
    const-string v1, "NUMERIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    goto :goto_115

    :sswitch_f4
    const-string v1, "INTEGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto :goto_115

    :sswitch_fe
    const-string v1, "DATETIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x16

    goto :goto_115

    :sswitch_109
    const-string v1, "DECIMAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x13

    goto :goto_115

    :goto_114
    const/4 v0, -0x1

    :goto_115
    packed-switch v0, :pswitch_data_178

    return v2

    :pswitch_119
    return v3

    :sswitch_data_11a
    .sparse-switch
        -0x794760cf -> :sswitch_109
        -0x66705485 -> :sswitch_fe
        -0x607ef2e2 -> :sswitch_f4
        -0x4c705913 -> :sswitch_e9
        -0x236e0f31 -> :sswitch_df
        -0x207e5931 -> :sswitch_d4
        0x11bcf -> :sswitch_ca
        0x1f279d -> :sswitch_bf
        0x1f9bfc -> :sswitch_b4
        0x1fe7ae -> :sswitch_a8
        0x225e43 -> :sswitch_9d
        0x225e49 -> :sswitch_92
        0x26519e -> :sswitch_86
        0x273d2d -> :sswitch_7a
        0x353cb09 -> :sswitch_6e
        0x3fe2a3c -> :sswitch_62
        0x46ab4a4 -> :sswitch_56
        0xa7f0188 -> :sswitch_4b
        0x26d1e83a -> :sswitch_40
        0x2ea6f808 -> :sswitch_34
        0x38e5fadd -> :sswitch_28
        0x74c5eeef -> :sswitch_1d
        0x788a6fd1 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
    .end packed-switch
.end method

.method private static peek(Ljava/lang/String;I)C
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static tokenize(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/database/sqlite/-$$Lambda$I1A8dniBuRdoMGKE4fgVMPvl9YM;

    invoke-direct {v1, v0}, Landroid/database/sqlite/-$$Lambda$I1A8dniBuRdoMGKE4fgVMPvl9YM;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1, v1}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    return-object v0
.end method

.method public static tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_110

    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v2

    invoke-static {v2}, Landroid/database/sqlite/SQLiteTokenizer;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v3, v0

    add-int/lit8 v0, v0, 0x1

    :goto_17
    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v4

    invoke-static {v4}, Landroid/database/sqlite/SQLiteTokenizer;->isAlNum(C)Z

    move-result v4

    if-eqz v4, :cond_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_24
    move v4, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_8

    :cond_2d
    const-string v3, "\'\"`"

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteTokenizer;->isAnyOf(CLjava/lang/String;)Z

    move-result v3

    const-string v4, "Unterminated quote"

    const-string v5, "Non-token detected"

    if-eqz v3, :cond_92

    move v3, v0

    add-int/lit8 v0, v0, 0x1

    :goto_3c
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_8d

    add-int/lit8 v6, v0, 0x1

    invoke-static {p0, v6}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v6

    if-eq v6, v2, :cond_8a

    nop

    move v4, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x27

    if-eq v2, v6, :cond_7f

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_7a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7b

    :cond_7a
    move-object v6, v5

    :goto_7b
    invoke-interface {p2, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_8

    :cond_7f
    and-int/lit8 v6, p1, 0x1

    move p1, v6

    if-nez v6, :cond_85

    goto :goto_8

    :cond_85
    invoke-static {v5, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    :cond_8a
    add-int/lit8 v0, v0, 0x2

    goto :goto_3c

    :cond_8d
    invoke-static {v4, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    :cond_92
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_b4

    move v3, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_af

    move v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_af
    invoke-static {v4, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    :cond_b4
    and-int/lit8 v3, p1, 0x1

    move p1, v3

    if-nez v3, :cond_10b

    const-string v3, "Unterminated comment"

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_da

    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v5}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v4, :cond_da

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0xa

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_d5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_d5
    invoke-static {v3, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    :cond_da
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_fb

    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_fb

    add-int/lit8 v0, v0, 0x2

    const-string v4, "*/"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_f6

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_8

    :cond_f6
    invoke-static {v3, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    :cond_fb
    const/16 v3, 0x3b

    if-eq v2, v3, :cond_104

    nop

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_104
    const-string v3, "Semicolon is not allowed"

    invoke-static {v3, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    :cond_10b
    invoke-static {v5, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    :cond_110
    return-void
.end method
