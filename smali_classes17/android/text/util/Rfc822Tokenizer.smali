.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_5
    const/16 v2, 0x20

    if-ge v0, v1, :cond_42

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_3f

    if-eqz v0, :cond_39

    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_39

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_39

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_39

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_39

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-nez v2, :cond_36

    goto :goto_39

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_39
    :goto_39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    :goto_41
    goto :goto_5

    :cond_42
    const/4 v0, 0x0

    :goto_43
    if-ge v0, v1, :cond_51

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_51
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_14
    const/4 v5, 0x0

    if-ge v3, v4, :cond_109

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2c

    const/16 v8, 0x20

    const/4 v9, 0x0

    if-eq v6, v7, :cond_bd

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_28

    goto/16 :goto_bd

    :cond_28
    const/16 v5, 0x5c

    const/16 v7, 0x22

    if-ne v6, v7, :cond_54

    add-int/lit8 v3, v3, 0x1

    :goto_30
    if-ge v3, v4, :cond_107

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3c

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_107

    :cond_3c
    if-ne v6, v5, :cond_4e

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_4b

    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4b
    add-int/lit8 v3, v3, 0x2

    goto :goto_30

    :cond_4e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_54
    const/16 v7, 0x28

    if-ne v6, v7, :cond_96

    const/4 v8, 0x1

    add-int/lit8 v3, v3, 0x1

    :goto_5b
    if-ge v3, v4, :cond_94

    if-lez v8, :cond_94

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v9, 0x29

    if-ne v6, v9, :cond_72

    const/4 v9, 0x1

    if-le v8, v9, :cond_6d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6d
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_72
    if-ne v6, v7, :cond_7c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_7c
    if-ne v6, v5, :cond_8e

    add-int/lit8 v9, v3, 0x1

    if-ge v9, v4, :cond_8b

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8b
    add-int/lit8 v3, v3, 0x2

    goto :goto_5b

    :cond_8e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_94
    goto/16 :goto_107

    :cond_96
    const/16 v5, 0x3c

    if-ne v6, v5, :cond_af

    add-int/lit8 v3, v3, 0x1

    :goto_9c
    if-ge v3, v4, :cond_107

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v5, 0x3e

    if-ne v6, v5, :cond_a9

    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    :cond_a9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    :cond_af
    if-ne v6, v8, :cond_b7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    :cond_b7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    :cond_bd
    :goto_bd
    add-int/lit8 v3, v3, 0x1

    :goto_bf
    if-ge v3, v4, :cond_ca

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_ca

    add-int/lit8 v3, v3, 0x1

    goto :goto_bf

    :cond_ca
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_e8

    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v7, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    :cond_e8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_fe

    new-instance v7, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v5, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_fe
    :goto_fe
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_107
    :goto_107
    goto/16 :goto_14

    :cond_109
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_127

    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    :cond_127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_13d

    new-instance v6, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_13d
    :goto_13d
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p2

    :goto_5
    if-ge v1, v0, :cond_7a

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_79

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_15

    goto/16 :goto_79

    :cond_15
    const/16 v3, 0x5c

    const/16 v4, 0x22

    if-ne v2, v4, :cond_34

    add-int/lit8 v1, v1, 0x1

    :goto_1d
    if-ge v1, v0, :cond_78

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_28

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_28
    if-ne v2, v3, :cond_31

    add-int/lit8 v5, v1, 0x1

    if-ge v5, v0, :cond_31

    add-int/lit8 v1, v1, 0x2

    goto :goto_1d

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_34
    const/16 v4, 0x28

    if-ne v2, v4, :cond_60

    const/4 v5, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_3b
    if-ge v1, v0, :cond_5f

    if-lez v5, :cond_5f

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v6, 0x29

    if-ne v2, v6, :cond_4c

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_4c
    if-ne v2, v4, :cond_53

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_53
    if-ne v2, v3, :cond_5c

    add-int/lit8 v6, v1, 0x1

    if-ge v6, v0, :cond_5c

    add-int/lit8 v1, v1, 0x2

    goto :goto_3b

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_5f
    goto :goto_78

    :cond_60
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_76

    add-int/lit8 v1, v1, 0x1

    :goto_66
    if-ge v1, v0, :cond_78

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_73

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_76
    add-int/lit8 v1, v1, 0x1

    :cond_78
    :goto_78
    goto :goto_5

    :cond_79
    :goto_79
    return v1

    :cond_7a
    return v1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    :goto_2
    if-ge v1, p2, :cond_1d

    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ge v1, p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :goto_c
    if-ge v1, p2, :cond_19

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    if-ge v1, p2, :cond_2

    move v0, v1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
