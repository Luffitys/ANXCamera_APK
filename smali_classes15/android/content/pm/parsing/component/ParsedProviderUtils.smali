.class public Landroid/content/pm/parsing/component/ParsedProviderUtils;
.super Ljava/lang/Object;
.source "ParsedProviderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseGrantUriPermission(Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1b

    new-instance v7, Landroid/os/PatternMatcher;

    invoke-direct {v7, v5, v3}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v7

    goto :goto_36

    :cond_1b
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    if-eqz v5, :cond_29

    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v6}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_36

    :cond_29
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    if-eqz v5, :cond_36

    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    :cond_36
    :goto_36
    if-eqz v2, :cond_58

    iget-object v3, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v3, :cond_45

    new-array v3, v6, [Landroid/os/PatternMatcher;

    iput-object v3, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iget-object v3, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aput-object v2, v3, v4

    goto :goto_55

    :cond_45
    iget-object v3, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v3, v3

    add-int/lit8 v7, v3, 0x1

    new-array v7, v7, [Landroid/os/PatternMatcher;

    iget-object v8, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v8, v4, v7, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v2, v7, v3

    iput-object v7, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :goto_55
    iput-boolean v6, p0, Landroid/content/pm/parsing/component/ParsedProvider;->grantUriPermissions:Z

    goto :goto_86

    :cond_58
    const-string v3, "PackageParsing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <path-permission>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_86
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_8a
    .catchall {:try_start_6 .. :try_end_8a} :catchall_8e

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_8e
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parsePathPermission(Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    :try_start_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1f

    move-object v9, v7

    :cond_1f
    const/4 v10, 0x2

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_27

    move-object v11, v7

    :cond_27
    const/4 v12, 0x0

    if-eqz v9, :cond_30

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    const/4 v12, 0x1

    :cond_30
    if-eqz v11, :cond_38

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_109

    move-object v11, v13

    const/4 v12, 0x1

    :cond_38
    const-string v13, " "

    const-string v14, " at "

    const-string v15, "PackageParsing"

    if-nez v12, :cond_70

    :try_start_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No readPermission or writePermission for <path-permission>: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_6c
    .catchall {:try_start_40 .. :try_end_6c} :catchall_109

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_70
    const/16 v16, 0x0

    const/4 v8, 0x6

    :try_start_73
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    if-eqz v8, :cond_82

    new-instance v6, Landroid/content/pm/PathPermission;

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_b6

    :cond_82
    const/4 v6, 0x5

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    if-eqz v8, :cond_94

    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x2

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_b6

    :cond_94
    const/4 v6, 0x4

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    if-eqz v8, :cond_a6

    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x1

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_b6

    :cond_a6
    const/4 v6, 0x3

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    if-eqz v8, :cond_b6

    new-instance v6, Landroid/content/pm/PathPermission;

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    :cond_b6
    :goto_b6
    if-eqz v16, :cond_d9

    iget-object v6, v1, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v6, :cond_c7

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/pm/PathPermission;

    iput-object v6, v1, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    iget-object v6, v1, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v10, 0x0

    aput-object v16, v6, v10

    goto :goto_101

    :cond_c7
    iget-object v6, v1, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v6, v6

    add-int/lit8 v10, v6, 0x1

    new-array v10, v10, [Landroid/content/pm/PathPermission;

    iget-object v13, v1, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v14, 0x0

    invoke-static {v13, v14, v10, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v16, v10, v6

    iput-object v10, v1, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_101

    :cond_d9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_101
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_105
    .catchall {:try_start_73 .. :try_end_105} :catchall_109

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :catchall_109
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parseProvider([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v15, p6

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedProvider;-><init>()V

    move-object v12, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v0, 0x11

    const/16 v16, 0xe

    const/16 v1, 0x12

    :try_start_24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v22, 0xf

    const/16 v23, 0x2

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x13

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_19d

    move-object v1, v12

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v9

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v27, v9

    move v9, v0

    move/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v28, v12

    move-object/from16 v12, v18

    move-object/from16 v29, v13

    move/from16 v13, v19

    move/from16 v30, v14

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v16, v23

    move-object/from16 v17, v24

    move/from16 v18, v25

    move-object/from16 v19, v26

    :try_start_6e
    invoke-static/range {v1 .. v19}, Landroid/content/pm/parsing/component/ParsedMainComponentUtils;->parseMainComponent(Landroid/content/pm/parsing/component/ParsedMainComponent;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLandroid/content/pm/parsing/result/ParseInput;IILjava/lang/Integer;Ljava/lang/Integer;IIIILjava/lang/Integer;ILjava/lang/Integer;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_18f

    if-eqz v1, :cond_7d

    nop

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_7d
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v8, v27

    :try_start_82
    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_183

    move-object v9, v1

    const/4 v1, 0x7

    const/16 v3, 0x11

    const/4 v4, 0x1

    move/from16 v10, v30

    if-ge v10, v3, :cond_91

    move v3, v4

    goto :goto_92

    :cond_91
    move v3, v2

    :goto_92
    :try_start_92
    invoke-virtual {v8, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_179

    move-object/from16 v11, v28

    :try_start_98
    iput-boolean v1, v11, Landroid/content/pm/parsing/component/ParsedProvider;->exported:Z

    const/16 v1, 0xb

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v11, Landroid/content/pm/parsing/component/ParsedProvider;->syncable:Z

    const/4 v1, 0x3

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3
    :try_end_ac
    .catchall {:try_start_98 .. :try_end_ac} :catchall_171

    if-nez v3, :cond_af

    move-object v3, v1

    :cond_af
    if-nez v3, :cond_c2

    :try_start_b1
    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/content/pm/parsing/component/ParsedProvider;->setReadPermission(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_b9

    goto :goto_c5

    :catchall_b9
    move-exception v0

    move-object/from16 v13, p1

    :goto_bc
    move-object/from16 v15, p6

    move-object/from16 v14, v29

    goto/16 :goto_1a4

    :cond_c2
    :try_start_c2
    invoke-virtual {v11, v3}, Landroid/content/pm/parsing/component/ParsedProvider;->setReadPermission(Ljava/lang/String;)V

    :goto_c5
    const/4 v5, 0x5

    invoke-virtual {v8, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5
    :try_end_ca
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_171

    if-nez v5, :cond_cd

    move-object v5, v1

    :cond_cd
    if-nez v5, :cond_d7

    :try_start_cf
    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/content/pm/parsing/component/ParsedProvider;->setWritePermission(Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_cf .. :try_end_d6} :catchall_b9

    goto :goto_da

    :cond_d7
    :try_start_d7
    invoke-virtual {v11, v5}, Landroid/content/pm/parsing/component/ParsedProvider;->setWritePermission(Ljava/lang/String;)V

    :goto_da
    const/16 v6, 0xd

    invoke-virtual {v8, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v11, Landroid/content/pm/parsing/component/ParsedProvider;->grantUriPermissions:Z

    const/16 v6, 0x16

    invoke-virtual {v8, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v11, Landroid/content/pm/parsing/component/ParsedProvider;->forceUriPermissions:Z

    const/16 v6, 0x9

    invoke-virtual {v8, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v11, Landroid/content/pm/parsing/component/ParsedProvider;->multiProcess:Z

    const/16 v6, 0xc

    invoke-virtual {v8, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v11, Landroid/content/pm/parsing/component/ParsedProvider;->initOrder:I

    iget v6, v11, Landroid/content/pm/parsing/component/ParsedProvider;->flags:I

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v12, 0x10

    invoke-static {v7, v12, v8}, Landroid/content/pm/parsing/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v11, Landroid/content/pm/parsing/component/ParsedProvider;->flags:I

    const/16 v6, 0x14

    invoke-virtual {v8, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_10d
    .catchall {:try_start_d7 .. :try_end_10d} :catchall_171

    move v12, v2

    if-eqz v12, :cond_11f

    :try_start_110
    iget v2, v11, Landroid/content/pm/parsing/component/ParsedProvider;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v2, v6

    iput v2, v11, Landroid/content/pm/parsing/component/ParsedProvider;->flags:I
    :try_end_117
    .catchall {:try_start_110 .. :try_end_117} :catchall_b9

    move-object/from16 v13, p1

    :try_start_119
    invoke-interface {v13, v4}, Landroid/content/pm/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_11d

    goto :goto_121

    :catchall_11d
    move-exception v0

    goto :goto_bc

    :cond_11f
    move-object/from16 v13, p1

    :goto_121
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->isCantSaveState()Z

    move-result v0

    if-eqz v0, :cond_143

    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v29

    invoke-static {v0, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    const-string v0, "Heavy-weight applications can not have providers in main process"

    move-object/from16 v15, p6

    invoke-interface {v15, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_140
    move-object/from16 v15, p6

    goto :goto_147

    :cond_143
    move-object/from16 v15, p6

    move-object/from16 v14, v29

    :goto_147
    if-nez v9, :cond_150

    const-string v0, "<provider> does not include authorities attribute"

    invoke-interface {v15, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_150
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_15d

    const-string v0, "<provider> has empty authorities attribute"

    invoke-interface {v15, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_15d
    invoke-virtual {v11, v9}, Landroid/content/pm/parsing/component/ParsedProvider;->setAuthority(Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v12

    move-object v6, v11

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroid/content/pm/parsing/component/ParsedProviderUtils;->parseProviderTags(Landroid/content/pm/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_171
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v15, p6

    move-object/from16 v14, v29

    goto :goto_1a4

    :catchall_179
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v15, p6

    move-object/from16 v11, v28

    move-object/from16 v14, v29

    goto :goto_1a4

    :catchall_183
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v15, p6

    move-object/from16 v11, v28

    move-object/from16 v14, v29

    move/from16 v10, v30

    goto :goto_1a4

    :catchall_18f
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v15, p6

    move-object/from16 v8, v27

    move-object/from16 v11, v28

    move-object/from16 v14, v29

    move/from16 v10, v30

    goto :goto_1a4

    :catchall_19d
    move-exception v0

    move-object v8, v9

    move-object v11, v12

    move v10, v14

    move-object v14, v13

    move-object/from16 v13, p1

    :goto_1a4
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static parseProviderTags(Landroid/content/pm/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    :goto_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v9, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_dc

    const/4 v0, 0x3

    if-ne v9, v0, :cond_24

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v15, :cond_20

    goto :goto_24

    :cond_20
    move/from16 v17, v9

    goto/16 :goto_de

    :cond_24
    :goto_24
    const/4 v2, 0x2

    if-eq v9, v2, :cond_28

    goto :goto_e

    :cond_28
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v3, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_e4

    :cond_34
    goto :goto_5d

    :sswitch_35
    const-string/jumbo v4, "path-permission"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move v3, v0

    goto :goto_5d

    :sswitch_40
    const-string v4, "intent-filter"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v3, 0x0

    goto :goto_5d

    :sswitch_4a
    const-string v4, "meta-data"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move v3, v1

    goto :goto_5d

    :sswitch_54
    const-string v4, "grant-uri-permission"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move v3, v2

    :goto_5d
    if-eqz v3, :cond_92

    if-eq v3, v1, :cond_87

    if-eq v3, v2, :cond_7c

    if-eq v3, v0, :cond_71

    move-object/from16 v7, p1

    invoke-static {v7, v10, v12, v14}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v16, v8

    move/from16 v17, v9

    goto/16 :goto_cf

    :cond_71
    move-object/from16 v7, p1

    invoke-static {v13, v10, v11, v12, v14}, Landroid/content/pm/parsing/component/ParsedProviderUtils;->parsePathPermission(Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v16, v8

    move/from16 v17, v9

    goto :goto_cf

    :cond_7c
    move-object/from16 v7, p1

    invoke-static {v13, v10, v11, v12, v14}, Landroid/content/pm/parsing/component/ParsedProviderUtils;->parseGrantUriPermission(Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v16, v8

    move/from16 v17, v9

    goto :goto_cf

    :cond_87
    move-object/from16 v7, p1

    invoke-static {v13, v10, v11, v12, v14}, Landroid/content/pm/parsing/component/ParsedComponentUtils;->addMetaData(Landroid/content/pm/parsing/component/ParsedComponent;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v16, v8

    move/from16 v17, v9

    goto :goto_cf

    :cond_92
    move-object/from16 v7, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, v16

    move-object/from16 v16, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Landroid/content/pm/parsing/component/ParsedMainComponentUtils;->parseIntentFilter(Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getOrder()I

    move-result v3

    iget v4, v13, Landroid/content/pm/parsing/component/ParsedProvider;->order:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v13, Landroid/content/pm/parsing/component/ParsedProvider;->order:I

    invoke-virtual {v13, v2}, Landroid/content/pm/parsing/component/ParsedProvider;->addIntent(Landroid/content/pm/parsing/component/ParsedIntentInfo;)V

    :cond_ce
    move-object v0, v1

    :goto_cf
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_da
    goto/16 :goto_e

    :cond_dc
    move/from16 v17, v9

    :goto_de
    invoke-interface {v14, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_e4
    .sparse-switch
        -0x6c28de5f -> :sswitch_54
        -0x4284098e -> :sswitch_4a
        -0x3d616837 -> :sswitch_40
        0x25eb3477 -> :sswitch_35
    .end sparse-switch
.end method
