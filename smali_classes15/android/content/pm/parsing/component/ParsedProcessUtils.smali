.class public Landroid/content/pm/parsing/component/ParsedProcessUtils;
.super Ljava/lang/Object;
.source "ParsedProcessUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAllowPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_26

    move-object p0, v2

    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestDenyPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_26

    move-object p0, v2

    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseProcess(Ljava/util/Set;[Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v10, p6

    new-instance v0, Landroid/content/pm/parsing/component/ParsedProcess;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedProcess;-><init>()V

    move-object v11, v0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProcess:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    if-eqz v1, :cond_1d

    :try_start_16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v11, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    nop

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v11, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    move/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroid/content/pm/parsing/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v10, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_43
    .catchall {:try_start_16 .. :try_end_43} :catchall_115

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_47
    :try_start_47
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v11, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    iget-object v5, v11, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    if-eqz v5, :cond_107

    iget-object v5, v11, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_5f

    move-object/from16 v13, p2

    goto/16 :goto_109

    :cond_5f
    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v12, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v11, Landroid/content/pm/parsing/component/ParsedProcess;->gwpAsanMode:I
    :try_end_67
    .catchall {:try_start_47 .. :try_end_67} :catchall_115

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :goto_6f
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    if-eq v7, v6, :cond_100

    const/4 v7, 0x3

    if-ne v8, v7, :cond_84

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_80

    goto :goto_84

    :cond_80
    move-object/from16 v13, p2

    goto/16 :goto_102

    :cond_84
    :goto_84
    if-eq v8, v7, :cond_fc

    const/4 v7, 0x4

    if-ne v8, v7, :cond_8a

    goto :goto_6f

    :cond_8a
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v13, -0x49dc292d

    if-eq v9, v13, :cond_a7

    const v13, 0x62d33430

    if-eq v9, v13, :cond_9d

    :cond_9c
    goto :goto_b1

    :cond_9d
    const-string v9, "deny-permission"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    move v9, v0

    goto :goto_b2

    :cond_a7
    const-string v9, "allow-permission"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    move v9, v6

    goto :goto_b2

    :goto_b1
    move v9, v5

    :goto_b2
    if-eqz v9, :cond_d7

    if-eq v9, v6, :cond_bf

    const-string v9, "<process>"

    move-object/from16 v13, p2

    invoke-static {v9, v13, v3, v10}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    goto :goto_ef

    :cond_bf
    move-object/from16 v13, p2

    iget-object v9, v11, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    invoke-static {v9, v2, v3, v10}, Landroid/content/pm/parsing/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    move-object v14, v9

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v15

    if-eqz v15, :cond_ee

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    iput-object v15, v11, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    goto :goto_ee

    :cond_d7
    move-object/from16 v13, p2

    iget-object v9, v11, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    invoke-static {v9, v2, v3, v10}, Landroid/content/pm/parsing/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    move-object v14, v9

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v15

    if-eqz v15, :cond_ee

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    iput-object v15, v11, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    :cond_ee
    :goto_ee
    move-object v9, v14

    :goto_ef
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v14

    if-eqz v14, :cond_fa

    invoke-interface {v10, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_fa
    goto/16 :goto_6f

    :cond_fc
    move-object/from16 v13, p2

    goto/16 :goto_6f

    :cond_100
    move-object/from16 v13, p2

    :goto_102
    invoke-interface {v10, v11}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_107
    move-object/from16 v13, p2

    :goto_109
    :try_start_109
    const-string v0, "<process> does not specify android:process"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_10f
    .catchall {:try_start_109 .. :try_end_10f} :catchall_113

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_113
    move-exception v0

    goto :goto_118

    :catchall_115
    move-exception v0

    move-object/from16 v13, p2

    :goto_118
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parseProcesses([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    const/4 v0, 0x0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    move-object v12, v0

    :goto_12
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v13, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_100

    const/4 v0, 0x3

    if-ne v13, v0, :cond_28

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v11, :cond_24

    goto :goto_28

    :cond_24
    move-object/from16 v15, p1

    goto/16 :goto_102

    :cond_28
    :goto_28
    if-eq v13, v0, :cond_fc

    const/4 v0, 0x4

    if-ne v13, v0, :cond_30

    move-object/from16 v15, p1

    goto :goto_12

    :cond_30
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v0, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x49dc292d

    const/4 v4, 0x2

    if-eq v2, v3, :cond_5f

    const v3, -0x1272e191

    if-eq v2, v3, :cond_54

    const v3, 0x62d33430

    if-eq v2, v3, :cond_4a

    :cond_49
    goto :goto_68

    :cond_4a
    const-string v2, "deny-permission"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v0, 0x0

    goto :goto_68

    :cond_54
    const-string/jumbo v2, "process"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    move v0, v4

    goto :goto_68

    :cond_5f
    const-string v2, "allow-permission"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    move v0, v1

    :goto_68
    if-eqz v0, :cond_d8

    if-eq v0, v1, :cond_c0

    if-eq v0, v4, :cond_78

    const-string v0, "<processes>"

    move-object/from16 v15, p1

    invoke-static {v0, v15, v8, v9}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto/16 :goto_ef

    :cond_78
    move-object/from16 v15, p1

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Landroid/content/pm/parsing/component/ParsedProcessUtils;->parseProcess(Ljava/util/Set;[Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedProcess;

    iget-object v3, v2, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_bc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<process> specified existing name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    :cond_bc
    move-object v0, v1

    goto :goto_ef

    :cond_be
    move-object v0, v1

    goto :goto_ef

    :cond_c0
    move-object/from16 v15, p1

    invoke-static {v12, v7, v8, v9}, Landroid/content/pm/parsing/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v0, v1

    move-object v12, v2

    goto :goto_ef

    :cond_d6
    move-object v0, v1

    goto :goto_ef

    :cond_d8
    move-object/from16 v15, p1

    invoke-static {v12, v7, v8, v9}, Landroid/content/pm/parsing/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v0, v1

    move-object v12, v2

    goto :goto_ef

    :cond_ee
    move-object v0, v1

    :goto_ef
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_fa
    goto/16 :goto_12

    :cond_fc
    move-object/from16 v15, p1

    goto/16 :goto_12

    :cond_100
    move-object/from16 v15, p1

    :goto_102
    invoke-interface {v9, v10}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method
