.class Landroid/content/pm/parsing/component/ParsedComponentUtils;
.super Ljava/lang/Object;
.source "ParsedComponentUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMetaData(Landroid/content/pm/parsing/component/ParsedComponent;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->metaData:Landroid/os/Bundle;

    invoke-static {p1, p2, p3, v0, p4}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseMetaData(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->metaData:Landroid/os/Bundle;

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method static parseComponent(Landroid/content/pm/parsing/component/ParsedComponent;Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;ILjava/lang/Integer;IIIII)Landroid/content/pm/parsing/result/ParseResult;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "I",
            "Ljava/lang/Integer;",
            "IIIII)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const/4 v4, 0x0

    move/from16 v5, p11

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not specify android:name"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_2b
    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/content/pm/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " invalid android:name"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_51
    invoke-virtual {v0, v8}, Landroid/content/pm/parsing/component/ParsedComponent;->setName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedComponent;

    invoke-virtual {v0, v7}, Landroid/content/pm/parsing/component/ParsedComponent;->setPackageName(Ljava/lang/String;)V

    if-eqz p4, :cond_60

    move/from16 v9, p12

    invoke-virtual {v2, v9, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    goto :goto_63

    :cond_60
    move/from16 v9, p12

    move v10, v4

    :goto_63
    const/4 v11, 0x0

    if-eqz v10, :cond_6d

    iput v10, v0, Landroid/content/pm/parsing/component/ParsedComponent;->icon:I

    iput-object v11, v0, Landroid/content/pm/parsing/component/ParsedComponent;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move/from16 v12, p8

    goto :goto_79

    :cond_6d
    move/from16 v12, p8

    invoke-virtual {v2, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    if-eqz v13, :cond_79

    iput v13, v0, Landroid/content/pm/parsing/component/ParsedComponent;->icon:I

    iput-object v11, v0, Landroid/content/pm/parsing/component/ParsedComponent;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_79
    :goto_79
    move/from16 v11, p10

    invoke-virtual {v2, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    if-eqz v13, :cond_83

    iput v13, v0, Landroid/content/pm/parsing/component/ParsedComponent;->logo:I

    :cond_83
    move/from16 v14, p6

    invoke-virtual {v2, v14, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    if-eqz v15, :cond_8d

    iput v15, v0, Landroid/content/pm/parsing/component/ParsedComponent;->banner:I

    :cond_8d
    if-eqz p7, :cond_99

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedComponent;->descriptionRes:I

    :cond_99
    move/from16 v1, p9

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_af

    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedComponent;->labelRes:I

    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_af

    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/parsing/component/ParsedComponent;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_af
    invoke-interface {v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method
