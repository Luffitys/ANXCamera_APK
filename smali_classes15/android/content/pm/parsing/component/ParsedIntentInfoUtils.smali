.class public Landroid/content/pm/parsing/component/ParsedIntentInfoUtils;
.super Ljava/lang/Object;
.source "ParsedIntentInfoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseData(Landroid/content/pm/parsing/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c3

    if-eqz v2, :cond_1e

    :try_start_d
    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_c3

    goto :goto_1e

    :catch_11
    move-exception v1

    :try_start_12
    invoke-virtual {v1}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_c3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_1e
    :goto_1e
    const/16 v3, 0xa

    :try_start_20
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_2a

    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addMimeGroup(Ljava/lang/String;)V

    :cond_2a
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_35

    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataScheme(Ljava/lang/String;)V

    :cond_35
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_40

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_40
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_4c

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_4c
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x2

    if-eqz v2, :cond_66

    if-nez p3, :cond_63

    const-string/jumbo v1, "sspPattern not allowed here; ssp must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_5f
    .catchall {:try_start_20 .. :try_end_5f} :catchall_c3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_63
    :try_start_63
    invoke-virtual {p0, v2, v4}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_66
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_74

    invoke-virtual {p0, v5, v7}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    const/4 v8, 0x4

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    if-eqz v2, :cond_7f

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_7f
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    if-eqz v2, :cond_8a

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_8a
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_a2

    if-nez p3, :cond_9f

    const-string/jumbo v1, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_9b
    .catchall {:try_start_63 .. :try_end_9b} :catchall_c3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_9f
    :try_start_9f
    invoke-virtual {p0, v2, v4}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_a2
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ba

    if-nez p3, :cond_b7

    const-string/jumbo v2, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_b3
    .catchall {:try_start_9f .. :try_end_b3} :catchall_c3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_b7
    :try_start_b7
    invoke-virtual {p0, v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_ba
    const/4 v2, 0x0

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_bf
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_c3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_c3
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static parseIntentInfo(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    new-instance v0, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedIntentInfo;-><init>()V

    move-object v4, v0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v0, 0x2

    const/4 v6, 0x0

    :try_start_14
    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    const/4 v7, 0x3

    invoke-virtual {v5, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setOrder(I)V

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_37

    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    iput v9, v4, Landroid/content/pm/parsing/component/ParsedIntentInfo;->labelRes:I

    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-nez v9, :cond_37

    invoke-virtual {v8}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/parsing/component/ParsedIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_37
    sget-boolean v9, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v9, :cond_42

    const/4 v9, 0x7

    invoke-virtual {v5, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v4, Landroid/content/pm/parsing/component/ParsedIntentInfo;->icon:I

    :cond_42
    iget v9, v4, Landroid/content/pm/parsing/component/ParsedIntentInfo;->icon:I

    const/4 v10, 0x1

    if-nez v9, :cond_4d

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v4, Landroid/content/pm/parsing/component/ParsedIntentInfo;->icon:I

    :cond_4d
    if-eqz p5, :cond_57

    const/4 v9, 0x6

    invoke-virtual {v5, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setAutoVerify(Z)V
    :try_end_57
    .catchall {:try_start_14 .. :try_end_57} :catchall_139

    :cond_57
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    :goto_5f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    move v11, v9

    if-eq v9, v10, :cond_12a

    if-ne v11, v7, :cond_73

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v8, :cond_6f

    goto :goto_73

    :cond_6f
    move-object/from16 v12, p1

    goto/16 :goto_12c

    :cond_73
    :goto_73
    if-eq v11, v0, :cond_76

    goto :goto_5f

    :cond_76
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v12, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, -0x54d081ca

    if-eq v13, v14, :cond_a3

    const v14, 0x2eefaa

    if-eq v13, v14, :cond_99

    const v14, 0x302bcfe

    if-eq v13, v14, :cond_8f

    :cond_8e
    goto :goto_ac

    :cond_8f
    const-string v13, "category"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8e

    move v12, v10

    goto :goto_ac

    :cond_99
    const-string v13, "data"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8e

    move v12, v0

    goto :goto_ac

    :cond_a3
    const-string v13, "action"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8e

    move v12, v6

    :goto_ac
    const-wide/32 v13, 0x9029125

    const-string v6, "name"

    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string v15, "No value supplied for <android:name>"

    if-eqz v12, :cond_f5

    if-eq v12, v10, :cond_ce

    if-eq v12, v0, :cond_c4

    const-string v6, "<intent-filter>"

    move-object/from16 v12, p1

    invoke-static {v6, v12, v2, v3}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_11b

    :cond_c4
    move-object/from16 v12, p1

    move/from16 v6, p4

    invoke-static {v4, v1, v2, v6, v3}, Landroid/content/pm/parsing/component/ParsedIntentInfoUtils;->parseData(Landroid/content/pm/parsing/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v6, v7

    goto :goto_11b

    :cond_ce
    move-object/from16 v12, p1

    invoke-interface {v2, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_dc

    invoke-interface {v3, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v6, v7

    goto :goto_11b

    :cond_dc
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_eb

    invoke-virtual {v4, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addCategory(Ljava/lang/String;)V

    invoke-interface {v3, v15, v13, v14}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v6, v7

    goto :goto_11b

    :cond_eb
    invoke-virtual {v4, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addCategory(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v6, v7

    goto :goto_11b

    :cond_f5
    move-object/from16 v12, p1

    invoke-interface {v2, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_103

    invoke-interface {v3, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v6, v7

    goto :goto_11b

    :cond_103
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_112

    invoke-virtual {v4, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addAction(Ljava/lang/String;)V

    invoke-interface {v3, v15, v13, v14}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v6, v7

    goto :goto_11b

    :cond_112
    invoke-virtual {v4, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->addAction(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v6, v7

    :goto_11b
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_126

    invoke-interface {v3, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_126
    const/4 v6, 0x0

    const/4 v7, 0x3

    goto/16 :goto_5f

    :cond_12a
    move-object/from16 v12, p1

    :goto_12c
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v0}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasDefault:Z

    invoke-interface {v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_139
    move-exception v0

    move-object/from16 v12, p1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
