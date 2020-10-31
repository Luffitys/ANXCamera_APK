.class public final Leu/xiaomi/util/JSONTranslator;
.super Leu/xiaomi/util/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/xiaomi/util/JSONTranslator$JSONState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Leu/xiaomi/util/Translator;-><init>()V

    return-void
.end method

.method private static a(ILeu/xiaomi/util/JSONTranslator$JSONState;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;I)I
    .registers 25

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    instance-of v7, v5, Lorg/json/JSONArray;

    if-eqz v7, :cond_1b

    move-object v2, v5

    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v0, v1, v2, v3, v6}, Leu/xiaomi/util/JSONTranslator;->a(ILeu/xiaomi/util/JSONTranslator$JSONState;Lorg/json/JSONArray;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_11e

    :cond_1b
    instance-of v7, v5, Lorg/json/JSONObject;

    if-eqz v7, :cond_28

    move-object v2, v5

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v6}, Leu/xiaomi/util/JSONTranslator;->a(ILeu/xiaomi/util/JSONTranslator$JSONState;Lorg/json/JSONObject;I)I

    move-result v0

    goto/16 :goto_11e

    :cond_28
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_11d

    iget-object v7, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->a:Ljava/util/List;

    const/4 v8, -0x1

    if-eqz v7, :cond_38

    iget-object v7, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->a:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_39

    :cond_38
    move v7, v8

    :goto_39
    iget-object v9, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->a:Ljava/util/List;

    if-eqz v9, :cond_3f

    if-le v7, v8, :cond_11d

    :cond_3f
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11d

    iget-object v9, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->b:[Ljava/util/regex/Pattern;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_4f

    const/4 v7, 0x0

    goto :goto_5d

    :cond_4f
    iget-object v9, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->b:[Ljava/util/regex/Pattern;

    array-length v9, v9

    if-ne v9, v11, :cond_59

    iget-object v7, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->b:[Ljava/util/regex/Pattern;

    aget-object v7, v7, v10

    goto :goto_5d

    :cond_59
    iget-object v9, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->b:[Ljava/util/regex/Pattern;

    aget-object v7, v9, v7

    :goto_5d
    if-nez v7, :cond_64

    new-array v9, v11, [Ljava/lang/String;

    aput-object v5, v9, v10

    goto :goto_68

    :cond_64
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v9

    :goto_68
    move v5, v10

    :goto_69
    array-length v12, v9

    if-ge v5, v12, :cond_11d

    aget-object v12, v9, v5

    if-nez v0, :cond_9b

    iget-object v13, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->c:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7f

    iget-object v13, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->d:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto :goto_90

    :cond_7f
    iget-object v13, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->c:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->d:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v6, 0x1

    move/from16 v17, v12

    move v12, v6

    move/from16 v6, v17

    :goto_90
    iget-object v13, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->e:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_118

    :cond_9b
    if-ne v0, v11, :cond_118

    iget-object v12, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->e:Ljava/util/List;

    add-int/lit8 v13, v6, 0x1

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v12, v1, Leu/xiaomi/util/JSONTranslator$JSONState;->d:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    array-length v12, v9

    if-le v12, v11, :cond_106

    instance-of v12, v2, Lorg/json/JSONArray;

    if-eqz v12, :cond_c4

    move-object v12, v2

    check-cast v12, Lorg/json/JSONArray;

    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    :goto_c1
    check-cast v12, Ljava/lang/String;

    goto :goto_cc

    :cond_c4
    move-object v12, v2

    check-cast v12, Lorg/json/JSONObject;

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_c1

    :goto_cc
    invoke-virtual {v7, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    move v15, v10

    :goto_d1
    if-ge v15, v5, :cond_d9

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_d1

    :cond_d9
    if-lez v15, :cond_e0

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    goto :goto_e1

    :cond_e0
    move v15, v10

    :goto_e1
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_ec

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    goto :goto_ed

    :cond_ec
    move v14, v8

    :goto_ed
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v14, v8, :cond_102

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_102
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_106
    instance-of v11, v2, Lorg/json/JSONArray;

    if-eqz v11, :cond_111

    move-object v11, v2

    check-cast v11, Lorg/json/JSONArray;

    invoke-virtual {v11, v4, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_117

    :cond_111
    move-object v11, v2

    check-cast v11, Lorg/json/JSONObject;

    invoke-virtual {v11, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_117
    move v6, v13

    :cond_118
    :goto_118
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    goto/16 :goto_69

    :cond_11d
    move v0, v6

    :goto_11e
    return v0
.end method

.method private static a(ILeu/xiaomi/util/JSONTranslator$JSONState;Lorg/json/JSONArray;Ljava/lang/String;I)I
    .registers 14

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    move v8, p4

    :goto_6
    if-ge v1, v0, :cond_18

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v1

    invoke-static/range {v2 .. v8}, Leu/xiaomi/util/JSONTranslator;->a(ILeu/xiaomi/util/JSONTranslator$JSONState;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;I)I

    move-result v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    return v8
.end method

.method private static a(ILeu/xiaomi/util/JSONTranslator$JSONState;Lorg/json/JSONObject;I)I
    .registers 12

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    move v7, p3

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v5, -0x1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Leu/xiaomi/util/JSONTranslator;->a(ILeu/xiaomi/util/JSONTranslator$JSONState;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;I)I

    move-result v7

    goto :goto_5

    :cond_1f
    return v7
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x5b

    if-ne v1, v4, :cond_d

    move v1, v2

    goto :goto_16

    :cond_d
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x7b

    if-ne v1, v4, :cond_72

    move v1, v0

    :goto_16
    if-eqz p3, :cond_1c

    array-length v4, p3

    if-nez v4, :cond_1c

    move-object p3, v3

    :cond_1c
    if-eqz p4, :cond_22

    array-length v4, p4

    if-nez v4, :cond_22

    move-object p4, v3

    :cond_22
    if-eqz p4, :cond_3c

    array-length v4, p4

    new-array v4, v4, [Ljava/util/regex/Pattern;

    move v5, v0

    :goto_28
    array-length v6, p4

    if-ge v5, v6, :cond_3d

    aget-object v6, p4, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_39

    :try_start_33
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_39
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_33 .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_3c
    move-object v4, v3

    :cond_3d
    new-instance p4, Leu/xiaomi/util/JSONTranslator$JSONState;

    invoke-direct {p4, p3, v4}, Leu/xiaomi/util/JSONTranslator$JSONState;-><init>([Ljava/lang/String;[Ljava/util/regex/Pattern;)V

    if-eqz v1, :cond_50

    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    check-cast p2, Lorg/json/JSONArray;

    invoke-static {v0, p4, p2, v3, v0}, Leu/xiaomi/util/JSONTranslator;->a(ILeu/xiaomi/util/JSONTranslator$JSONState;Lorg/json/JSONArray;Ljava/lang/String;I)I

    goto :goto_5b

    :cond_50
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {v0, p4, p2, v0}, Leu/xiaomi/util/JSONTranslator;->a(ILeu/xiaomi/util/JSONTranslator$JSONState;Lorg/json/JSONObject;I)I

    :goto_5b
    invoke-static {p0, p1, p4}, Leu/xiaomi/util/JSONTranslator;->a(Ljava/lang/String;Ljava/lang/String;Leu/xiaomi/util/Translator$State;)V

    if-eqz v1, :cond_67

    move-object p0, p3

    check-cast p0, Lorg/json/JSONArray;

    invoke-static {v2, p4, p0, v3, v0}, Leu/xiaomi/util/JSONTranslator;->a(ILeu/xiaomi/util/JSONTranslator$JSONState;Lorg/json/JSONArray;Ljava/lang/String;I)I

    goto :goto_6d

    :cond_67
    move-object p0, p3

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {v2, p4, p0, v0}, Leu/xiaomi/util/JSONTranslator;->a(ILeu/xiaomi/util/JSONTranslator$JSONState;Lorg/json/JSONObject;I)I

    :goto_6d
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_72
    return-object v3
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Leu/xiaomi/util/JSONTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Leu/xiaomi/util/JSONTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Leu/xiaomi/util/JSONTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, p3, v0}, Leu/xiaomi/util/JSONTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    if-eqz p2, :cond_41

    if-eqz p4, :cond_1a

    if-eqz p3, :cond_41

    array-length v0, p4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_41

    :cond_1a
    invoke-static {}, Leu/xiaomi/util/JSONTranslator;->a()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_41

    :cond_21
    :try_start_21
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_34

    :try_start_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3f

    invoke-static {p0, p1, v0, p3, p4}, Leu/xiaomi/util/JSONTranslator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_32

    if-eqz p0, :cond_3f

    goto :goto_40

    :catch_32
    move-exception p0

    goto :goto_36

    :catch_34
    move-exception p0

    move-object v0, p2

    :goto_36
    const-string p1, "JSONTranslator"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    move-object p0, v0

    :goto_40
    return-object p0

    :cond_41
    :goto_41
    return-object p2
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Leu/xiaomi/util/JSONTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Leu/xiaomi/util/JSONTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Leu/xiaomi/util/JSONTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, p3, v0}, Leu/xiaomi/util/JSONTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    if-eqz p2, :cond_43

    if-eqz p4, :cond_1a

    if-eqz p3, :cond_43

    array-length v0, p4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_43

    :cond_1a
    invoke-static {}, Leu/xiaomi/util/JSONTranslator;->a()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_43

    :cond_21
    :try_start_21
    invoke-static {p2}, Leu/xiaomi/util/FileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_43

    invoke-static {p0, p1, v0, p3, p4}, Leu/xiaomi/util/JSONTranslator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_43

    invoke-static {p2, p0}, Leu/xiaomi/util/FileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_38} :catch_39

    goto :goto_43

    :catch_39
    move-exception p0

    const-string p1, "JSONTranslator"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    return-void
.end method
