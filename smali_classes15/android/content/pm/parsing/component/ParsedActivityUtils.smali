.class public Landroid/content/pm/parsing/component/ParsedActivityUtils;
.super Ljava/lang/Object;
.source "ParsedActivityUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivityResizeMode(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I
    .registers 8

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2f

    if-eqz v0, :cond_10

    goto :goto_2f

    :cond_10
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    if-eqz v1, :cond_17

    return v3

    :cond_17
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x6

    return v1

    :cond_1f
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x5

    return v1

    :cond_27
    const/16 v1, 0xe

    if-ne p2, v1, :cond_2d

    const/4 v1, 0x7

    return v1

    :cond_2d
    const/4 v1, 0x4

    return v1

    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v2

    :goto_3a
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x2

    return v1

    :cond_42
    return v2
.end method

.method public static parseActivityAlias(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p4

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v0, 0x7

    const/16 v1, 0x400

    :try_start_f
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_12b

    if-nez v0, :cond_24

    :try_start_15
    const-string v1, "<activity-alias> does not specify android:targetActivity"

    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_1f
    move-exception v0

    move-object/from16 v28, v9

    goto/16 :goto_12e

    :cond_24
    :try_start_24
    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    invoke-static {v8, v0}, Landroid/content/pm/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_12b

    move-object v0, v1

    if-nez v0, :cond_49

    :try_start_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty class name in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_1f

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_49
    const/4 v1, 0x0

    :try_start_4a
    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    move-object v7, v2

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v2
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_12b

    move v6, v2

    const/4 v2, 0x0

    :goto_55
    if-ge v2, v6, :cond_6d

    :try_start_57
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    move-object v1, v3

    move-object v5, v1

    goto :goto_6e

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_6d
    move-object v5, v1

    :goto_6e
    if-nez v5, :cond_9d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activity-alias> target activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found in manifest with activities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", parsedActivities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_99
    .catchall {:try_start_57 .. :try_end_99} :catchall_1f

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_9d
    :try_start_9d
    invoke-static {v0, v5}, Landroid/content/pm/parsing/component/ParsedActivity;->makeAlias(Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/component/ParsedActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xa

    const/16 v22, 0x6

    const/16 v23, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24
    :try_end_c9
    .catchall {:try_start_9d .. :try_end_c9} :catchall_12b

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0xb

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v25, v5

    move-object v5, v9

    move/from16 v26, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, p3

    move-object/from16 v27, v8

    move-object/from16 v8, p4

    move-object/from16 v28, v9

    move/from16 v9, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    :try_start_f0
    invoke-static/range {v1 .. v19}, Landroid/content/pm/parsing/component/ParsedMainComponentUtils;->parseMainComponent(Landroid/content/pm/parsing/component/ParsedMainComponent;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLandroid/content/pm/parsing/result/ParseInput;IILjava/lang/Integer;Ljava/lang/Integer;IIIILjava/lang/Integer;ILjava/lang/Integer;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    move-object/from16 v16, v3

    invoke-interface/range {v16 .. v16}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3
    :try_end_fa
    .catchall {:try_start_f0 .. :try_end_fa} :catchall_129

    if-eqz v3, :cond_101

    nop

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/TypedArray;->recycle()V

    return-object v16

    :cond_101
    nop

    :try_start_102
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_10d

    const/4 v3, 0x1

    goto :goto_10e

    :cond_10d
    const/4 v3, 0x0

    :goto_10e
    move v11, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0x9

    const/4 v14, 0x3

    const/4 v15, 0x5

    move-object v3, v1

    move-object/from16 v4, p0

    move-object v5, v2

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, v28

    move-object/from16 v12, p4

    invoke-static/range {v3 .. v15}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->parseActivityOrAlias(Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_125
    .catchall {:try_start_102 .. :try_end_125} :catchall_129

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_129
    move-exception v0

    goto :goto_12e

    :catchall_12b
    move-exception v0

    move-object/from16 v28, v9

    :goto_12e
    invoke-virtual/range {v28 .. v28}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static parseActivityOrAlias(Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/TypedArray;",
            "ZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "III)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p9

    move/from16 v13, p12

    const/16 v0, 0x400

    move/from16 v14, p10

    invoke-virtual {v11, v14, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_48

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/content/pm/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " specified invalid parentActivityName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageParsing"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_45
    invoke-virtual {v7, v1}, Landroid/content/pm/parsing/component/ParsedActivity;->setParentActivity(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedActivity;

    :cond_48
    :goto_48
    const/4 v6, 0x0

    move/from16 v5, p11

    invoke-virtual {v11, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p7, :cond_55

    invoke-virtual {v7, v4}, Landroid/content/pm/parsing/component/ParsedActivity;->setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedActivity;

    goto :goto_60

    :cond_55
    if-eqz v4, :cond_59

    move-object v0, v4

    goto :goto_5d

    :cond_59
    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v0

    :goto_5d
    invoke-virtual {v7, v0}, Landroid/content/pm/parsing/component/ParsedActivity;->setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedActivity;

    :goto_60
    invoke-virtual {v11, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_6c

    invoke-virtual {v11, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Landroid/content/pm/parsing/component/ParsedActivity;->exported:Z

    :cond_6c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    :goto_70
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v2, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_178

    const/4 v0, 0x3

    if-ne v2, v0, :cond_8e

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v3, :cond_82

    goto :goto_8e

    :cond_82
    move-object/from16 v0, p2

    move/from16 v18, v2

    move/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    goto/16 :goto_182

    :cond_8e
    :goto_8e
    const/4 v0, 0x2

    if-eq v2, v0, :cond_92

    goto :goto_70

    :cond_92
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    xor-int/lit8 v17, p6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v18, v2

    move/from16 v2, v17

    move/from16 v17, v3

    move/from16 v3, p8

    move-object/from16 v19, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move/from16 v20, v6

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->parseIntentFilter(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/pm/parsing/component/ParsedActivity;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    if-eqz v1, :cond_d7

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getOrder()I

    move-result v2

    iget v3, v7, Landroid/content/pm/parsing/component/ParsedActivity;->order:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/content/pm/parsing/component/ParsedActivity;->order:I

    invoke-virtual {v7, v1}, Landroid/content/pm/parsing/component/ParsedActivity;->addIntent(Landroid/content/pm/parsing/component/ParsedIntentInfo;)V

    :cond_d7
    nop

    move-object v1, v0

    move-object/from16 v0, p2

    goto/16 :goto_163

    :cond_dd
    move/from16 v18, v2

    move/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-static {v7, v8, v10, v9, v12}, Landroid/content/pm/parsing/component/ParsedComponentUtils;->addMetaData(Landroid/content/pm/parsing/component/ParsedComponent;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v0, p2

    goto/16 :goto_163

    :cond_fa
    if-nez p6, :cond_136

    if-nez p7, :cond_136

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v3, p8

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->parseIntentFilter(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/pm/parsing/component/ParsedActivity;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_131

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    if-eqz v1, :cond_131

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v1}, Landroid/content/pm/parsing/ParsingPackage;->addPreferredActivityFilter(Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_131
    nop

    move-object v1, v0

    move-object/from16 v0, p2

    goto :goto_163

    :cond_136
    if-nez p6, :cond_15d

    if-nez p7, :cond_15d

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15d

    invoke-static {v10, v9, v12}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_158

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v1, v7, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    :cond_158
    nop

    move-object v1, v0

    move-object/from16 v0, p2

    goto :goto_163

    :cond_15d
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9, v12}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    :goto_163
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_16e

    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_16e
    move/from16 v5, p11

    move/from16 v3, v17

    move-object/from16 v4, v19

    move/from16 v6, v20

    goto/16 :goto_70

    :cond_178
    move-object/from16 v0, p2

    move/from16 v18, v2

    move/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    :goto_182
    invoke-static {v7, v12}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->resolveWindowLayout(Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_191

    invoke-interface {v12, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_191
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v3, v7, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v16, :cond_1ab

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1a7

    move v6, v1

    goto :goto_1a9

    :cond_1a7
    move/from16 v6, v20

    :goto_1a9
    iput-boolean v6, v7, Landroid/content/pm/parsing/component/ParsedActivity;->exported:Z

    :cond_1ab
    invoke-interface {v12, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static parseActivityOrReceiver([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v14, p6

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedActivity;-><init>()V

    move-object v12, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "receiver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v0, 0x1e

    const/16 v16, 0x11

    const/16 v1, 0x2a

    :try_start_43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x17

    const/16 v24, 0x3

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2c

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_30a

    move-object v1, v12

    move-object/from16 v2, v21

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v9

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v28, v9

    move v9, v0

    move/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v29, v12

    move-object/from16 v12, v18

    move-object/from16 v30, v13

    move/from16 v13, v19

    move/from16 v14, v22

    move/from16 v15, v23

    move/from16 v16, v24

    move-object/from16 v17, v25

    move/from16 v18, v26

    move-object/from16 v19, v27

    :try_start_8a
    invoke-static/range {v1 .. v19}, Landroid/content/pm/parsing/component/ParsedMainComponentUtils;->parseMainComponent(Landroid/content/pm/parsing/component/ParsedMainComponent;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLandroid/content/pm/parsing/result/ParseInput;IILjava/lang/Integer;Ljava/lang/Integer;IIIILjava/lang/Integer;ILjava/lang/Integer;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_300

    if-eqz v1, :cond_99

    nop

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_99
    if-eqz v20, :cond_d2

    :try_start_9b
    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->isCantSaveState()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/parsing/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object v1
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_c7

    move-object/from16 v14, v30

    :try_start_a7
    invoke-static {v1, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const-string v1, "Heavy-weight applications can not have receivers in main process"
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_be

    move-object/from16 v15, p6

    :try_start_b1
    invoke-interface {v15, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_b9

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_b9
    move-exception v0

    goto :goto_c1

    :cond_bb
    move-object/from16 v15, p6

    goto :goto_d6

    :catchall_be
    move-exception v0

    move-object/from16 v15, p6

    :goto_c1
    move-object/from16 v18, v28

    move-object/from16 v17, v29

    goto/16 :goto_311

    :catchall_c7
    move-exception v0

    move-object/from16 v15, p6

    move-object/from16 v14, v30

    move-object/from16 v18, v28

    move-object/from16 v17, v29

    goto/16 :goto_311

    :cond_d2
    move-object/from16 v15, p6

    move-object/from16 v14, v30

    :goto_d6
    const/4 v1, 0x0

    move-object/from16 v13, v28

    :try_start_d9
    invoke-virtual {v13, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_2fa

    move-object/from16 v12, v29

    :try_start_df
    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->theme:I

    const/16 v2, 0x1a

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getUiOptions()I

    move-result v3

    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->uiOptions:I

    iget v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    const/16 v3, 0x40

    const/16 v4, 0x13

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->isAllowTaskReparenting()Z

    move-result v5

    invoke-static {v3, v4, v5, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v3

    const/16 v4, 0x12

    const/16 v5, 0x8

    invoke-static {v5, v4, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0xb

    const/4 v6, 0x4

    invoke-static {v6, v4, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0xd

    const/16 v7, 0x20

    invoke-static {v7, v4, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x100

    const/16 v8, 0x16

    invoke-static {v4, v8, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/4 v4, 0x2

    const/16 v8, 0xa

    invoke-static {v4, v8, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x800

    const/16 v8, 0x18

    invoke-static {v4, v8, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x9

    const/4 v8, 0x1

    invoke-static {v8, v4, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x80

    const/16 v9, 0x15

    invoke-static {v4, v9, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x27

    const/16 v9, 0x400

    invoke-static {v9, v4, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x1d

    invoke-static {v9, v4, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0xc

    const/16 v10, 0x10

    invoke-static {v10, v4, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x20000000

    const/16 v11, 0x3a

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I
    :try_end_165
    .catchall {:try_start_df .. :try_end_165} :catchall_2f4

    if-nez v20, :cond_277

    :try_start_167
    iget v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    const/16 v3, 0x200

    const/16 v4, 0x19

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->isBaseHardwareAccelerated()Z

    move-result v11

    invoke-static {v3, v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v3

    const/high16 v4, -0x80000000

    const/16 v11, 0x1f

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x40000

    const/16 v11, 0x39

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x2000

    const/16 v11, 0x23

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x1000

    const/16 v11, 0x24

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x4000

    const/16 v11, 0x25

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x800000

    const/16 v11, 0x33

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x400000

    const/16 v11, 0x29

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x1000000

    const/16 v11, 0x34

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x2000000

    const/16 v11, 0x38

    invoke-static {v4, v11, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    iget v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->privateFlags:I

    const/16 v3, 0x36

    invoke-static {v8, v3, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->privateFlags:I

    const/16 v2, 0x31

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->colorMode:I

    const/16 v2, 0x21

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->documentLaunchMode:I

    const/16 v2, 0xe

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    const/16 v2, 0x26

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->lockTaskLaunchMode:I

    const/16 v2, 0x22

    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v3

    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->maxRecents:I

    invoke-virtual {v13, v7, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->persistableMode:I

    const/16 v2, 0x2b

    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->requestedVrComponent:Ljava/lang/String;

    const/16 v2, 0x2e

    const/4 v3, -0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    const/16 v2, 0x14

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->softInputMode:I

    nop

    invoke-virtual {v13, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v4, 0x2f

    invoke-virtual {v13, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v2, v4}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v2

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    const/16 v2, 0xf

    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2
    :try_end_236
    .catchall {:try_start_167 .. :try_end_236} :catchall_26e

    move-object/from16 v11, p1

    :try_start_238
    invoke-static {v11, v13, v2}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->getActivityResizeMode(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I

    move-result v3

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    iput v3, v12, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    const/16 v4, 0x32

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_257

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    if-ne v7, v6, :cond_257

    nop

    invoke-virtual {v13, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v12, v3, v4}, Landroid/content/pm/parsing/component/ParsedActivity;->setMaxAspectRatio(IF)Landroid/content/pm/parsing/component/ParsedActivity;

    :cond_257
    const/16 v4, 0x35

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_26d

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    if-ne v7, v6, :cond_26d

    nop

    invoke-virtual {v13, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v12, v3, v4}, Landroid/content/pm/parsing/component/ParsedActivity;->setMinAspectRatio(IF)Landroid/content/pm/parsing/component/ParsedActivity;
    :try_end_26d
    .catchall {:try_start_238 .. :try_end_26d} :catchall_2a7

    :cond_26d
    goto :goto_28a

    :catchall_26e
    move-exception v0

    move-object/from16 v11, p1

    :goto_271
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    goto/16 :goto_311

    :cond_277
    move-object/from16 v11, p1

    :try_start_279
    iput v1, v12, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    iput v1, v12, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    iget v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    const/16 v4, 0x1c

    invoke-static {v3, v4, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    :goto_28a
    invoke-virtual {v13, v5, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    nop

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getTaskAffinity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2, v10, v15}, Landroid/content/pm/parsing/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v9, v2

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_29d
    .catchall {:try_start_279 .. :try_end_29d} :catchall_2f4

    if-eqz v2, :cond_2a9

    :try_start_29f
    invoke-interface {v15, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2a3
    .catchall {:try_start_29f .. :try_end_2a3} :catchall_2a7

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_2a7
    move-exception v0

    goto :goto_271

    :cond_2a9
    :try_start_2a9
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v12, Landroid/content/pm/parsing/component/ParsedActivity;->taskAffinity:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_2b7
    .catchall {:try_start_2a9 .. :try_end_2b7} :catchall_2f4

    move/from16 v16, v1

    if-eqz v16, :cond_2c5

    :try_start_2bb
    iget v1, v12, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v12, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    invoke-interface {v11, v8}, Landroid/content/pm/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_2c5
    .catchall {:try_start_2bb .. :try_end_2c5} :catchall_2a7

    :cond_2c5
    const/4 v8, 0x0

    const/16 v17, 0x1b

    const/16 v18, 0x4

    const/16 v19, 0x6

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v13

    move/from16 v7, v20

    move-object/from16 v22, v9

    move/from16 v9, v16

    move-object/from16 v23, v10

    move-object/from16 v10, p6

    move/from16 v11, v17

    move-object/from16 v17, v12

    move/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, v19

    :try_start_2ea
    invoke-static/range {v1 .. v13}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->parseActivityOrAlias(Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2ee
    .catchall {:try_start_2ea .. :try_end_2ee} :catchall_2f2

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_2f2
    move-exception v0

    goto :goto_311

    :catchall_2f4
    move-exception v0

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    goto :goto_311

    :catchall_2fa
    move-exception v0

    move-object/from16 v18, v13

    move-object/from16 v17, v29

    goto :goto_311

    :catchall_300
    move-exception v0

    move-object/from16 v15, p6

    move-object/from16 v18, v28

    move-object/from16 v17, v29

    move-object/from16 v14, v30

    goto :goto_311

    :catchall_30a
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v17, v12

    move-object v15, v14

    move-object v14, v13

    :goto_311
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static parseIntentFilter(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/pm/parsing/component/ParsedActivity;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "ZZ",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object v10, p1

    move-object/from16 v11, p6

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v4, p3

    move v7, p2

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Landroid/content/pm/parsing/component/ParsedMainComponentUtils;->parseIntentFilter(Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_1f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->isVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_34

    iget v2, v10, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v10, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    :cond_34
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_41

    iget v2, v10, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v10, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    :cond_41
    invoke-interface {v11, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v0, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x3

    :try_start_11
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x5

    const/4 v11, 0x6

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v8, v11, :cond_23

    invoke-virtual {v3, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v7

    move v4, v7

    goto :goto_2a

    :cond_23
    if-ne v8, v10, :cond_2a

    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v0, v7

    :cond_2a
    :goto_2a
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v14

    move v15, v14

    if-ne v15, v11, :cond_38

    invoke-virtual {v3, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v7

    move v6, v7

    goto :goto_3f

    :cond_38
    if-ne v15, v10, :cond_3f

    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v5, v7

    :cond_3f
    :goto_3f
    const/4 v7, 0x0

    const/16 v9, 0x11

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    invoke-virtual {v3, v13, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    new-instance v7, Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v14, v7

    move v9, v15

    move v15, v0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-direct/range {v14 .. v21}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V
    :try_end_5d
    .catchall {:try_start_11 .. :try_end_5d} :catchall_69

    move-object/from16 v10, p2

    :try_start_5f
    invoke-interface {v10, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_67

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-object v7

    :catchall_67
    move-exception v0

    goto :goto_6c

    :catchall_69
    move-exception v0

    move-object/from16 v10, p2

    :goto_6c
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static resolveWindowLayout(Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->metaData:Landroid/os/Bundle;

    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_41

    :cond_f
    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_20
    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v1, :cond_3a

    new-instance v10, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    move-object v1, v10

    :cond_3a
    iput-object v0, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_41
    :goto_41
    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method
