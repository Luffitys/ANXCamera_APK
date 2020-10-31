.class public Landroid/content/pm/parsing/component/ParsedPermissionUtils;
.super Ljava/lang/Object;
.source "ParsedPermissionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parsePermission(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 26
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
            "Landroid/content/pm/parsing/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v14, p4

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedPermission;-><init>()V

    move-object v13, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    invoke-virtual {v12, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v7, 0x8

    const/4 v0, 0x5

    :try_start_33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_155

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x2

    const/16 v19, 0x9

    move-object v1, v13

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v10

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v20, v10

    move v10, v0

    move/from16 v11, v17

    move/from16 v12, v18

    move-object v14, v13

    move/from16 v13, v19

    :try_start_53
    invoke-static/range {v1 .. v13}, Landroid/content/pm/parsing/component/ParsedComponentUtils;->parseComponent(Landroid/content/pm/parsing/component/ParsedComponent;Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;ILjava/lang/Integer;IIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_14e

    if-eqz v1, :cond_62

    nop

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_62
    const/16 v1, 0xa

    move-object/from16 v7, v20

    :try_start_66
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_149

    const-string v3, "android"

    if-eqz v2, :cond_98

    :try_start_6e
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Landroid/content/pm/parsing/component/ParsedPermission;->backgroundPermission:Ljava/lang/String;

    goto :goto_98

    :cond_7b
    const-string v1, "PackageParsing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " defines a background permission. Only the \'android\' package can do that."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_6e .. :try_end_91} :catchall_92

    goto :goto_98

    :catchall_92
    move-exception v0

    move-object/from16 v8, p4

    move-object v9, v14

    goto/16 :goto_159

    :cond_98
    :goto_98
    const/4 v1, 0x4

    :try_start_99
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/pm/parsing/component/ParsedPermission;->setGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermission;

    const/16 v2, 0xb

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v14, Landroid/content/pm/parsing/component/ParsedPermission;->requestRes:I

    const/4 v2, 0x3

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v14, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    const/4 v2, 0x7

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v14, Landroid/content/pm/parsing/component/ParsedPermission;->flags:I

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->isRuntime()Z

    move-result v2
    :try_end_bb
    .catchall {:try_start_99 .. :try_end_bb} :catchall_149

    if-eqz v2, :cond_ef

    :try_start_bd
    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    goto :goto_ef

    :cond_c8
    iget v2, v14, Landroid/content/pm/parsing/component/ParsedPermission;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_fb

    iget v1, v14, Landroid/content/pm/parsing/component/ParsedPermission;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_d4

    goto :goto_fb

    :cond_d4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ef
    .catchall {:try_start_bd .. :try_end_ef} :catchall_92

    :cond_ef
    :goto_ef
    :try_start_ef
    iget v1, v14, Landroid/content/pm/parsing/component/ParsedPermission;->flags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v14, Landroid/content/pm/parsing/component/ParsedPermission;->flags:I

    iget v1, v14, Landroid/content/pm/parsing/component/ParsedPermission;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v14, Landroid/content/pm/parsing/component/ParsedPermission;->flags:I
    :try_end_fb
    .catchall {:try_start_ef .. :try_end_fb} :catchall_149

    :cond_fb
    :goto_fb
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    nop

    iget v1, v14, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10e

    const-string v1, "<permission> does not specify protectionLevel"

    move-object/from16 v8, p4

    move-object v9, v14

    invoke-interface {v8, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_10e
    move-object/from16 v8, p4

    move-object v9, v14

    iget v1, v9, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    invoke-static {v1}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v1

    iput v1, v9, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    invoke-virtual {v9}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionFlags()I

    move-result v1

    if-eqz v1, :cond_139

    iget v1, v9, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_139

    iget v1, v9, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_139

    iget v1, v9, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-eq v1, v2, :cond_139

    const-string v1, "<permission>  protectionLevel specifies a non-instant flag but is not based on signature type"

    invoke-interface {v8, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_139
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v9

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/component/ComponentParseUtils;->parseAllMetaData(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedComponent;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_149
    move-exception v0

    move-object/from16 v8, p4

    move-object v9, v14

    goto :goto_159

    :catchall_14e
    move-exception v0

    move-object/from16 v8, p4

    move-object v9, v14

    move-object/from16 v7, v20

    goto :goto_159

    :catchall_155
    move-exception v0

    move-object v7, v10

    move-object v9, v13

    move-object v8, v14

    :goto_159
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parsePermissionGroup(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
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
            "Landroid/content/pm/parsing/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;-><init>()V

    move-object v14, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v7, 0x7

    const/4 v0, 0x4

    :try_start_2c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_a0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x5

    const/16 v16, 0x2

    const/16 v17, 0x8

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p0

    move-object v4, v11

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v18, v11

    move v11, v0

    move/from16 v12, v16

    move/from16 v13, v17

    :try_start_47
    invoke-static/range {v1 .. v13}, Landroid/content/pm/parsing/component/ParsedComponentUtils;->parseComponent(Landroid/content/pm/parsing/component/ParsedComponent;Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;ILjava/lang/Integer;IIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_9c

    if-eqz v1, :cond_56

    nop

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_56
    const/16 v1, 0xc

    const/4 v2, 0x0

    move-object/from16 v7, v18

    :try_start_5b
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v14, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->requestDetailResourceId:I

    const/16 v1, 0x9

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v14, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->backgroundRequestResourceId:I

    const/16 v1, 0xa

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v14, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->backgroundRequestDetailResourceId:I

    const/16 v1, 0xb

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v14, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->requestRes:I

    const/4 v1, 0x6

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v14, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->flags:I

    const/4 v1, 0x3

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v14, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->priority:I
    :try_end_87
    .catchall {:try_start_5b .. :try_end_87} :catchall_9a

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    nop

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object v5, v14

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/component/ComponentParseUtils;->parseAllMetaData(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedComponent;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_9a
    move-exception v0

    goto :goto_a2

    :catchall_9c
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_a2

    :catchall_a0
    move-exception v0

    move-object v7, v11

    :goto_a2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parsePermissionTree(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
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
            "Landroid/content/pm/parsing/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedPermission;-><init>()V

    move-object v14, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v0, 0x2

    const/16 v17, 0x5

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move/from16 v5, p3

    move-object/from16 v6, p4

    move v12, v0

    move/from16 v13, v17

    :try_start_3f
    invoke-static/range {v1 .. v13}, Landroid/content/pm/parsing/component/ParsedComponentUtils;->parseComponent(Landroid/content/pm/parsing/component/ParsedComponent;Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;ILjava/lang/Integer;IIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_a0

    if-eqz v1, :cond_4e

    nop

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_4e
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_6a

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v7, v1

    goto :goto_6b

    :cond_6a
    move v7, v1

    :goto_6b
    if-gez v7, :cond_89

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<permission-tree> name has less than three segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, p4

    invoke-interface {v8, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_89
    move-object/from16 v8, p4

    const/4 v1, 0x0

    iput v1, v14, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    const/4 v1, 0x1

    iput-boolean v1, v14, Landroid/content/pm/parsing/component/ParsedPermission;->tree:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object v5, v14

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/component/ComponentParseUtils;->parseAllMetaData(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedComponent;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_a0
    move-exception v0

    move-object/from16 v8, p4

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
