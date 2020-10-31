.class public Landroid/content/pm/parsing/component/ParsedServiceUtils;
.super Ljava/lang/Object;
.source "ParsedServiceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseService([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 37
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
            "Landroid/content/pm/parsing/component/ParsedService;",
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

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p6

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Landroid/content/pm/parsing/component/ParsedService;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedService;-><init>()V

    move-object v10, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v14, v13, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/16 v0, 0xc

    const/16 v16, 0x7

    const/16 v1, 0xd

    :try_start_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x2

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0xf

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_246

    move-object v1, v10

    move-object v2, v9

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v8

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v26, v8

    move-object/from16 v8, p6

    move-object/from16 v27, v9

    move v9, v0

    move-object/from16 v28, v10

    move/from16 v10, v16

    move-object/from16 v29, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v22

    move-object/from16 v17, v23

    move/from16 v18, v24

    move-object/from16 v19, v25

    :try_start_6a
    invoke-static/range {v1 .. v19}, Landroid/content/pm/parsing/component/ParsedMainComponentUtils;->parseMainComponent(Landroid/content/pm/parsing/component/ParsedMainComponent;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLandroid/content/pm/parsing/result/ParseInput;IILjava/lang/Integer;Ljava/lang/Integer;IIIILjava/lang/Integer;ILjava/lang/Integer;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_23a

    if-eqz v1, :cond_79

    nop

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_79
    const/4 v1, 0x5

    move-object/from16 v11, v26

    :try_start_7c
    invoke-virtual {v11, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_230

    move v12, v2

    const/4 v13, 0x0

    if-eqz v12, :cond_a1

    :try_start_84
    invoke-virtual {v11, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_96

    move-object/from16 v14, v28

    :try_start_8a
    iput-boolean v1, v14, Landroid/content/pm/parsing/component/ParsedService;->exported:Z
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_8d

    goto :goto_a3

    :catchall_8d
    move-exception v0

    :goto_8e
    move-object/from16 v13, p6

    move-object/from16 v21, v27

    move-object/from16 v17, v29

    goto/16 :goto_24e

    :catchall_96
    move-exception v0

    move-object/from16 v14, v28

    move-object/from16 v13, p6

    move-object/from16 v21, v27

    move-object/from16 v17, v29

    goto/16 :goto_24e

    :cond_a1
    move-object/from16 v14, v28

    :goto_a3
    const/4 v15, 0x3

    :try_start_a4
    invoke-virtual {v11, v15, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ac

    move-object v2, v1

    goto :goto_b0

    :cond_ac
    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v2

    :goto_b0
    invoke-virtual {v14, v2}, Landroid/content/pm/parsing/component/ParsedService;->setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedMainComponent;

    const/16 v2, 0x13

    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v14, Landroid/content/pm/parsing/component/ParsedService;->foregroundServiceType:I

    iget v2, v14, Landroid/content/pm/parsing/component/ParsedService;->flags:I

    const/16 v3, 0x9

    const/4 v10, 0x1

    invoke-static {v10, v3, v11}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v3

    const/16 v4, 0xa

    const/4 v9, 0x2

    invoke-static {v9, v4, v11}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0xe

    const/4 v5, 0x4

    invoke-static {v5, v4, v11}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x12

    invoke-static {v4, v5, v11}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0xb

    invoke-static {v4, v5, v11}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v14, Landroid/content/pm/parsing/component/ParsedService;->flags:I

    const/16 v2, 0x10

    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_ef
    .catchall {:try_start_a4 .. :try_end_ef} :catchall_228

    move/from16 v16, v2

    if-eqz v16, :cond_104

    :try_start_f3
    iget v2, v14, Landroid/content/pm/parsing/component/ParsedService;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v14, Landroid/content/pm/parsing/component/ParsedService;->flags:I
    :try_end_fa
    .catchall {:try_start_f3 .. :try_end_fa} :catchall_100

    move-object/from16 v8, p1

    :try_start_fc
    invoke-interface {v8, v10}, Landroid/content/pm/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_8d

    goto :goto_106

    :catchall_100
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_8e

    :cond_104
    move-object/from16 v8, p1

    :goto_106
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->isCantSaveState()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v29

    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    const-string v0, "Heavy-weight applications can not have services in main process"

    move-object/from16 v6, p6

    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_125
    move-object/from16 v6, p6

    goto :goto_12c

    :cond_128
    move-object/from16 v6, p6

    move-object/from16 v7, v29

    :goto_12c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :goto_130
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v5, v1

    if-eq v1, v10, :cond_208

    if-ne v5, v15, :cond_14b

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_140

    goto :goto_14b

    :cond_140
    move/from16 v22, v5

    move-object v13, v6

    move-object/from16 v17, v7

    move/from16 v19, v10

    move-object/from16 v21, v27

    goto/16 :goto_211

    :cond_14b
    :goto_14b
    if-eq v5, v9, :cond_14e

    goto :goto_130

    :cond_14e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4284098e

    if-eq v3, v4, :cond_16c

    const v4, -0x3d616837

    if-eq v3, v4, :cond_162

    :cond_161
    goto :goto_175

    :cond_162
    const-string v3, "intent-filter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161

    move v2, v13

    goto :goto_175

    :cond_16c
    const-string v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161

    move v2, v10

    :goto_175
    if-eqz v2, :cond_1a4

    if-eq v2, v10, :cond_18e

    move-object/from16 v4, p3

    move-object/from16 v3, v27

    invoke-static {v3, v8, v4, v6}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object/from16 v21, v3

    move/from16 v22, v5

    move-object v13, v6

    move-object/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v10

    goto/16 :goto_1ef

    :cond_18e
    move-object/from16 v4, p3

    move-object/from16 v3, v27

    move-object/from16 v2, p2

    invoke-static {v14, v8, v2, v4, v6}, Landroid/content/pm/parsing/component/ParsedComponentUtils;->addMetaData(Landroid/content/pm/parsing/component/ParsedComponent;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object/from16 v21, v3

    move/from16 v22, v5

    move-object v13, v6

    move-object/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v10

    goto :goto_1ef

    :cond_1a4
    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v3, v27

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v21, v3

    move-object/from16 v3, p2

    move/from16 v22, v5

    move/from16 v5, v16

    move-object v13, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v18, v9

    move/from16 v9, v20

    move/from16 v19, v10

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v10}, Landroid/content/pm/parsing/component/ParsedMainComponentUtils;->parseIntentFilter(Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v2, v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1ee

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getOrder()I

    move-result v4

    iget v5, v14, Landroid/content/pm/parsing/component/ParsedService;->order:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v14, Landroid/content/pm/parsing/component/ParsedService;->order:I

    invoke-virtual {v14, v3}, Landroid/content/pm/parsing/component/ParsedService;->addIntent(Landroid/content/pm/parsing/component/ParsedIntentInfo;)V

    :cond_1ee
    move-object v1, v2

    :goto_1ef
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1fa

    invoke-interface {v13, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_1fa
    move-object/from16 v8, p1

    move-object v6, v13

    move-object/from16 v7, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v27, v21

    const/4 v13, 0x0

    goto/16 :goto_130

    :cond_208
    move/from16 v22, v5

    move-object v13, v6

    move-object/from16 v17, v7

    move/from16 v19, v10

    move-object/from16 v21, v27

    :goto_211
    if-nez v12, :cond_223

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_220

    move/from16 v1, v19

    goto :goto_221

    :cond_220
    const/4 v1, 0x0

    :goto_221
    iput-boolean v1, v14, Landroid/content/pm/parsing/component/ParsedService;->exported:Z

    :cond_223
    invoke-interface {v13, v14}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_228
    move-exception v0

    move-object/from16 v13, p6

    move-object/from16 v21, v27

    move-object/from16 v17, v29

    goto :goto_24e

    :catchall_230
    move-exception v0

    move-object/from16 v13, p6

    move-object/from16 v21, v27

    move-object/from16 v14, v28

    move-object/from16 v17, v29

    goto :goto_24e

    :catchall_23a
    move-exception v0

    move-object/from16 v13, p6

    move-object/from16 v11, v26

    move-object/from16 v21, v27

    move-object/from16 v14, v28

    move-object/from16 v17, v29

    goto :goto_24e

    :catchall_246
    move-exception v0

    move-object/from16 v21, v9

    move-object v14, v10

    move-object/from16 v17, v11

    move-object v13, v12

    move-object v11, v8

    :goto_24e
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
