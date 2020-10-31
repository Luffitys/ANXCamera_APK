.class Landroid/content/pm/parsing/component/ParsedMainComponentUtils;
.super Ljava/lang/Object;
.source "ParsedMainComponentUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseIntentFilter(Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZZZZ",
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

    move-object/from16 v7, p9

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Landroid/content/pm/parsing/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_1c
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->countActions()I

    move-result v2

    if-nez v2, :cond_62

    if-eqz p8, :cond_62

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageParsing"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :cond_62
    if-eqz p4, :cond_66

    const/4 v3, 0x1

    goto :goto_71

    :cond_66
    if-eqz p7, :cond_70

    invoke-static {v1}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isImplicitlyExposedIntent(Landroid/content/pm/parsing/component/ParsedIntentInfo;)Z

    move-result v3

    if-eqz v3, :cond_70

    const/4 v3, 0x2

    goto :goto_71

    :cond_70
    const/4 v3, 0x0

    :goto_71
    invoke-virtual {v1, v3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setVisibilityToInstantApp(I)V

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-interface {v7, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4
.end method

.method static parseMainComponent(Landroid/content/pm/parsing/component/ParsedMainComponent;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLandroid/content/pm/parsing/result/ParseInput;IILjava/lang/Integer;Ljava/lang/Integer;IIIILjava/lang/Integer;ILjava/lang/Integer;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "IZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "II",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIII",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p7

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    move/from16 v11, p15

    move/from16 v12, p17

    invoke-static/range {v0 .. v12}, Landroid/content/pm/parsing/component/ParsedComponentUtils;->parseComponent(Landroid/content/pm/parsing/component/ParsedComponent;Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;ILjava/lang/Integer;IIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_2d

    return-object v6

    :cond_2d
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz p10, :cond_4a

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v14, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v13, Landroid/content/pm/parsing/component/ParsedMainComponent;->directBootAware:Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v1

    if-eqz v1, :cond_47

    move-object/from16 v8, p3

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/ParsingPackage;->setPartiallyDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackage;

    goto :goto_4c

    :cond_47
    move-object/from16 v8, p3

    goto :goto_4c

    :cond_4a
    move-object/from16 v8, p3

    :goto_4c
    if-eqz p11, :cond_58

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v14, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v13, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    :cond_58
    if-eqz p16, :cond_9f

    invoke-interface/range {p3 .. p3}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_6e

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x400

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_77

    :cond_6e
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_77
    nop

    invoke-interface/range {p3 .. p3}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Landroid/content/pm/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v9

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Landroid/content/pm/parsing/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v15, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_96
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->setProcessName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedMainComponent;

    :cond_9f
    if-eqz p18, :cond_ab

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/content/pm/parsing/component/ParsedMainComponent;->splitName:Ljava/lang/String;

    :cond_ab
    invoke-interface {v15, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method
