.class public Landroid/content/pm/parsing/ApkLiteParseUtils;
.super Ljava/lang/Object;
.source "ApkLiteParseUtils.java"


# static fields
.field private static final DEFAULT_MIN_SDK_VERSION:I = 0x1

.field private static final DEFAULT_TARGET_SDK_VERSION:I = 0x0

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageParser$ApkLite;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageParser$ApkLite;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageParser$ApkLite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_15
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v2, v28

    :goto_42
    move-object/from16 v28, v3

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    move/from16 v29, v8

    if-ge v2, v3, :cond_102

    invoke-interface {v1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v35

    sparse-switch v35, :sswitch_data_3dc

    :cond_57
    goto :goto_b6

    :sswitch_58
    const-string v8, "configForSplit"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v8, 0x6

    goto :goto_b7

    :sswitch_62
    const-string v8, "coreApp"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v8, 0x4

    goto :goto_b7

    :sswitch_6c
    const-string/jumbo v8, "versionCode"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v8, 0x1

    goto :goto_b7

    :sswitch_77
    const-string v8, "isSplitRequired"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/16 v8, 0x8

    goto :goto_b7

    :sswitch_82
    const-string v8, "isFeatureSplit"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v8, 0x7

    goto :goto_b7

    :sswitch_8c
    const-string/jumbo v8, "versionCodeMajor"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v8, 0x2

    goto :goto_b7

    :sswitch_97
    const-string v8, "installLocation"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v8, 0x0

    goto :goto_b7

    :sswitch_a1
    const-string v8, "isolatedSplits"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v8, 0x5

    goto :goto_b7

    :sswitch_ab
    const-string/jumbo v8, "revisionCode"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v8, 0x3

    goto :goto_b7

    :goto_b6
    const/4 v8, -0x1

    :goto_b7
    packed-switch v8, :pswitch_data_402

    goto :goto_fa

    :pswitch_bb
    const/4 v8, 0x0

    invoke-interface {v1, v2, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    move/from16 v19, v8

    goto :goto_fa

    :pswitch_c3
    const/4 v8, 0x0

    invoke-interface {v1, v2, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    move/from16 v18, v8

    goto :goto_fa

    :pswitch_cb
    invoke-interface {v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v21, v8

    goto :goto_fa

    :pswitch_d2
    const/4 v8, 0x0

    invoke-interface {v1, v2, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    move/from16 v17, v8

    goto :goto_fa

    :pswitch_da
    const/4 v8, 0x0

    invoke-interface {v1, v2, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    move v11, v8

    goto :goto_fa

    :pswitch_e1
    const/4 v8, 0x0

    invoke-interface {v1, v2, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v8

    move v10, v8

    goto :goto_fa

    :pswitch_e8
    const/4 v8, 0x0

    invoke-interface {v1, v2, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v7

    goto :goto_fa

    :pswitch_ee
    const/4 v8, 0x0

    invoke-interface {v1, v2, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    goto :goto_fa

    :pswitch_f4
    const/4 v8, -0x1

    invoke-interface {v1, v2, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v5

    nop

    :goto_fa
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v28

    move/from16 v8, v29

    goto/16 :goto_42

    :cond_102
    const/4 v8, -0x1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v56, v31

    move-object/from16 v8, v23

    move-object/from16 v57, v26

    move-object/from16 v58, v27

    move-object/from16 v23, v22

    move/from16 v22, v20

    move/from16 v20, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v9

    move/from16 v9, v29

    :goto_124
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move/from16 v26, v3

    move/from16 v27, v9

    const-string v9, "PackageParsing"

    move/from16 v59, v12

    const/4 v12, 0x1

    if-eq v3, v12, :cond_34e

    move/from16 v3, v26

    const/4 v12, 0x3

    if-ne v3, v12, :cond_147

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-lt v12, v2, :cond_13f

    goto :goto_147

    :cond_13f
    move/from16 v26, v2

    move-object/from16 v12, v56

    move/from16 v56, v3

    goto/16 :goto_354

    :cond_147
    :goto_147
    const/4 v12, 0x3

    if-eq v3, v12, :cond_33d

    const/4 v12, 0x4

    if-ne v3, v12, :cond_153

    move/from16 v26, v2

    move-object/from16 v12, v56

    goto/16 :goto_343

    :cond_153
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-eq v12, v2, :cond_15f

    move/from16 v26, v2

    move-object/from16 v12, v56

    goto/16 :goto_343

    :cond_15f
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move/from16 v26, v2

    const-string/jumbo v2, "package-verifier"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-static/range {p3 .. p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v2

    if-eqz v2, :cond_17a

    move-object/from16 v12, v56

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17c

    :cond_17a
    move-object/from16 v12, v56

    :goto_17c
    goto/16 :goto_343

    :cond_17e
    move-object/from16 v12, v56

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    move/from16 v56, v3

    const-string v3, "application"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    const/4 v2, 0x0

    :goto_18f
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_20e

    invoke-interface {v1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_418

    :cond_1a0
    goto :goto_1d5

    :sswitch_1a1
    const-string/jumbo v9, "use32bitAbi"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a0

    const/4 v9, 0x2

    goto :goto_1d6

    :sswitch_1ac
    const-string v9, "extractNativeLibs"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a0

    const/4 v9, 0x3

    goto :goto_1d6

    :sswitch_1b6
    const-string v9, "multiArch"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a0

    const/4 v9, 0x1

    goto :goto_1d6

    :sswitch_1c0
    const-string/jumbo v9, "useEmbeddedDex"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a0

    const/4 v9, 0x4

    goto :goto_1d6

    :sswitch_1cb
    const-string v9, "debuggable"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a0

    const/4 v9, 0x0

    goto :goto_1d6

    :goto_1d5
    const/4 v9, -0x1

    :goto_1d6
    if-eqz v9, :cond_201

    move-object/from16 v29, v3

    const/4 v3, 0x1

    if-eq v9, v3, :cond_1fb

    const/4 v3, 0x2

    if-eq v9, v3, :cond_1f5

    const/4 v3, 0x3

    if-eq v9, v3, :cond_1ed

    const/4 v3, 0x4

    if-eq v9, v3, :cond_1e7

    goto :goto_20b

    :cond_1e7
    const/4 v9, 0x0

    invoke-interface {v1, v2, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v22

    goto :goto_20b

    :cond_1ed
    const/4 v3, 0x4

    const/4 v9, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v20

    goto :goto_20b

    :cond_1f5
    const/4 v9, 0x0

    invoke-interface {v1, v2, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    goto :goto_20b

    :cond_1fb
    const/4 v9, 0x0

    invoke-interface {v1, v2, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    goto :goto_20b

    :cond_201
    move-object/from16 v29, v3

    const/4 v9, 0x0

    invoke-interface {v1, v2, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v13

    if-eqz v13, :cond_20b

    const/4 v14, 0x1

    :cond_20b
    :goto_20b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18f

    :cond_20e
    move-object/from16 v56, v12

    move/from16 v2, v26

    move/from16 v9, v27

    move/from16 v12, v59

    const/4 v3, 0x1

    goto/16 :goto_124

    :cond_219
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "overlay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_286

    const/4 v2, 0x0

    :goto_227
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_27b

    invoke-interface {v1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "requiredSystemPropertyName"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23f

    invoke-interface {v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v57

    goto :goto_278

    :cond_23f
    const-string/jumbo v9, "requiredSystemPropertyValue"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24d

    invoke-interface {v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v58

    goto :goto_278

    :cond_24d
    const-string/jumbo v9, "targetPackage"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25b

    invoke-interface {v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_278

    :cond_25b
    const-string v9, "isStatic"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_269

    const/4 v9, 0x0

    invoke-interface {v1, v2, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v24

    goto :goto_278

    :cond_269
    const/4 v9, 0x0

    const-string/jumbo v9, "priority"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_278

    const/4 v9, 0x0

    invoke-interface {v1, v2, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v25

    :cond_278
    :goto_278
    add-int/lit8 v2, v2, 0x1

    goto :goto_227

    :cond_27b
    move-object/from16 v56, v12

    move/from16 v2, v26

    move/from16 v9, v27

    move/from16 v12, v59

    const/4 v3, 0x1

    goto/16 :goto_124

    :cond_286
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uses-split"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ba

    if-eqz v23, :cond_29c

    const-string v2, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_343

    :cond_29c
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_2af

    const/16 v2, -0x6c

    const-string v3, "<uses-split> tag requires \'android:name\' attribute"

    invoke-interface {v0, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_2af
    move-object/from16 v56, v12

    move/from16 v2, v26

    move/from16 v9, v27

    move/from16 v12, v59

    const/4 v3, 0x1

    goto/16 :goto_124

    :cond_2ba
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uses-sdk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_308

    const/4 v2, 0x0

    move/from16 v9, v27

    :goto_2ca
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_2fa

    invoke-interface {v1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v27, v9

    const-string/jumbo v9, "targetSdkVersion"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e5

    const/4 v9, 0x0

    invoke-interface {v1, v2, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v27

    goto :goto_2e6

    :cond_2e5
    const/4 v9, 0x0

    :goto_2e6
    const-string v9, "minSdkVersion"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f4

    const/4 v9, 0x1

    invoke-interface {v1, v2, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v59

    goto :goto_2f5

    :cond_2f4
    const/4 v9, 0x1

    :goto_2f5
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v27

    goto :goto_2ca

    :cond_2fa
    move/from16 v27, v9

    const/4 v9, 0x1

    move v3, v9

    move-object/from16 v56, v12

    move/from16 v2, v26

    move/from16 v9, v27

    move/from16 v12, v59

    goto/16 :goto_124

    :cond_308
    const/4 v9, 0x1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "profileable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_343

    const/4 v2, 0x0

    :goto_317
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_332

    invoke-interface {v1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "shell"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32e

    invoke-interface {v1, v2, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v14

    :cond_32e
    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x1

    goto :goto_317

    :cond_332
    move-object/from16 v56, v12

    move/from16 v2, v26

    move/from16 v9, v27

    move/from16 v12, v59

    const/4 v3, 0x1

    goto/16 :goto_124

    :cond_33d
    move/from16 v26, v2

    move-object/from16 v12, v56

    move/from16 v56, v3

    :cond_343
    :goto_343
    move-object/from16 v56, v12

    move/from16 v2, v26

    move/from16 v9, v27

    move/from16 v12, v59

    const/4 v3, 0x1

    goto/16 :goto_124

    :cond_34e
    move-object/from16 v12, v56

    move/from16 v56, v26

    move/from16 v26, v2

    :goto_354
    move-object/from16 v2, v57

    move-object/from16 v3, v58

    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_391

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping target and overlay pair "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": overlay ignored due to required system property: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :cond_391
    new-instance v0, Landroid/content/pm/PackageParser$ApkLite;

    move-object/from16 v29, v0

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v31, v1

    check-cast v31, Ljava/lang/String;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v32, v1

    check-cast v32, Ljava/lang/String;

    move-object/from16 v30, p1

    move/from16 v33, v18

    move-object/from16 v34, v21

    move-object/from16 v35, v23

    move/from16 v36, v19

    move/from16 v37, v6

    move/from16 v38, v7

    move/from16 v39, v10

    move/from16 v40, v5

    move-object/from16 v41, v12

    move-object/from16 v42, p4

    move/from16 v43, v11

    move/from16 v44, v13

    move/from16 v45, v14

    move/from16 v46, v15

    move/from16 v47, v16

    move/from16 v48, v22

    move/from16 v49, v20

    move/from16 v50, v17

    move-object/from16 v51, v8

    move/from16 v52, v24

    move/from16 v53, v25

    move/from16 v54, v59

    move/from16 v55, v27

    invoke-direct/range {v29 .. v55}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZZZLjava/lang/String;ZIII)V

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_3dc
    .sparse-switch
        -0x4a908b98 -> :sswitch_ab
        -0x180f0cee -> :sswitch_a1
        0x5525e70 -> :sswitch_97
        0x840b9d4 -> :sswitch_8c
        0x1a070c0e -> :sswitch_82
        0x21dc47cf -> :sswitch_77
        0x290b12e5 -> :sswitch_6c
        0x38e83a02 -> :sswitch_62
        0x5d65b933 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_402
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_ee
        :pswitch_e8
        :pswitch_e1
        :pswitch_da
        :pswitch_d2
        :pswitch_cb
        :pswitch_c3
        :pswitch_bb
    .end packed-switch

    :sswitch_data_418
    .sparse-switch
        -0x6d479032 -> :sswitch_1cb
        -0x5a6c9ada -> :sswitch_1c0
        -0x47f92ad1 -> :sswitch_1b6
        -0x239da55a -> :sswitch_1ac
        -0x370e23f -> :sswitch_1a1
    .end sparse-switch
.end method

.method private static parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageParser$ApkLite;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    if-eqz v8, :cond_9

    move-object/from16 v0, p3

    goto :goto_d

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_d
    move-object v9, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v10, "Failed to parse "

    if-eqz v8, :cond_1d

    const/4 v3, 0x0

    move-object/from16 v11, p3

    :try_start_18
    invoke-static {v8, v11, v0, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v3

    goto :goto_23

    :cond_1d
    move-object/from16 v11, p3

    invoke-static {v9}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v3
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_23} :catch_a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_23} :catch_9f
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_23} :catch_9f
    .catchall {:try_start_18 .. :try_end_23} :catchall_9c

    :goto_23
    move-object v12, v3

    nop

    :try_start_25
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v12, v2}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_2b} :catch_99
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_99
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2b} :catch_99
    .catchall {:try_start_25 .. :try_end_2b} :catchall_95

    move-object v13, v2

    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_78

    and-int/lit8 v1, p4, 0x10

    if-eqz v1, :cond_35

    const/4 v0, 0x1

    :cond_35
    move v3, v0

    :try_start_36
    const-string v0, "collectCertificates"

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_3e} :catch_91
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_91
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_3e} :catch_91
    .catchall {:try_start_36 .. :try_end_3e} :catchall_8b

    nop

    :try_start_3f
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/PackageParser$SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_72

    :try_start_58
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_5b} :catch_91
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_91
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_5b} :catch_91
    .catchall {:try_start_58 .. :try_end_5b} :catchall_8b

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v12, :cond_65

    :try_start_60
    invoke-virtual {v12}, Landroid/content/res/ApkAssets;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_65

    :catchall_64
    move-exception v0

    :cond_65
    :goto_65
    return-object v2

    :cond_66
    :try_start_66
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_72

    :try_start_6c
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    nop

    move-object v1, v0

    goto :goto_7b

    :catchall_72
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v0

    :cond_78
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    move-object v1, v0

    :goto_7b
    move-object v2, v13

    invoke-static {v7, v9, v13, v2, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_80} :catch_91
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_80} :catch_91
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_80} :catch_91
    .catchall {:try_start_6c .. :try_end_80} :catchall_8b

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v12, :cond_8a

    :try_start_85
    invoke-virtual {v12}, Landroid/content/res/ApkAssets;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8a

    :catchall_89
    move-exception v0

    :cond_8a
    :goto_8a
    return-object v3

    :catchall_8b
    move-exception v0

    move-object v3, v0

    move-object v2, v12

    move-object v1, v13

    goto/16 :goto_f8

    :catch_91
    move-exception v0

    move-object v2, v12

    move-object v1, v13

    goto :goto_c3

    :catchall_95
    move-exception v0

    move-object v3, v0

    move-object v2, v12

    goto :goto_f8

    :catch_99
    move-exception v0

    move-object v2, v12

    goto :goto_c3

    :catchall_9c
    move-exception v0

    move-object v3, v0

    goto :goto_f8

    :catch_9f
    move-exception v0

    goto :goto_c3

    :catch_a1
    move-exception v0

    move-object v3, v0

    const/16 v0, -0x64

    :try_start_a5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v0, v4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a5 .. :try_end_b8} :catch_9f
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b8} :catch_9f
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_b8} :catch_9f
    .catchall {:try_start_a5 .. :try_end_b8} :catchall_9c

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_c2

    :try_start_bd
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_c2

    :catchall_c1
    move-exception v0

    :cond_c2
    :goto_c2
    return-object v4

    :goto_c3
    move-object v3, v0

    :try_start_c4
    const-string v0, "PackageParsing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v0, v4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_ed
    .catchall {:try_start_c4 .. :try_end_ed} :catchall_9c

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_f7

    :try_start_f2
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f6

    goto :goto_f7

    :catchall_f6
    move-exception v0

    :cond_f7
    :goto_f7
    return-object v4

    :goto_f8
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_102

    :try_start_fd
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_101

    goto :goto_102

    :catchall_101
    move-exception v0

    :cond_102
    :goto_102
    throw v3
.end method

.method public static parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageParser$PackageLite;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, -0x64

    const-string v4, "No packages found in split"

    invoke-interface {v1, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_17
    array-length v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2b

    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2b

    aget-object v0, v3, v4

    invoke-static {v1, v0, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_2b
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v0

    const-wide/32 v8, 0x40000

    const-string/jumbo v0, "parseApkLite"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_3c
    array-length v0, v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_1b4

    :goto_3d
    const/16 v10, -0x65

    if-ge v4, v0, :cond_10a

    :try_start_41
    aget-object v11, v3, v4

    invoke-static {v11}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_fc

    invoke-static {v1, v11, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v13

    if-eqz v13, :cond_5b

    invoke-interface {v1, v12}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_103

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_5b
    :try_start_5b
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$ApkLite;

    if-nez v5, :cond_6a

    iget-object v14, v13, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object v5, v14

    iget v14, v13, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move v6, v14

    goto :goto_ce

    :cond_6a
    iget-object v14, v13, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_70
    .catchall {:try_start_5b .. :try_end_70} :catchall_103

    const-string v15, "; expected "

    const-string v8, " in "

    if-nez v14, :cond_a0

    :try_start_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_99
    .catchall {:try_start_76 .. :try_end_99} :catchall_103

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_a0
    :try_start_a0
    iget v9, v13, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-eq v6, v9, :cond_ce

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent version "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_c7
    .catchall {:try_start_a0 .. :try_end_c7} :catchall_103

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_ce
    :goto_ce
    :try_start_ce
    iget-object v8, v13, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v7, v8, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_fc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Split name "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " defined more than once; most recent was "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_f5
    .catchall {:try_start_ce .. :try_end_f5} :catchall_103

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_fc
    add-int/lit8 v4, v4, 0x1

    const-wide/32 v8, 0x40000

    goto/16 :goto_3d

    :catchall_103
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v20, v3

    goto/16 :goto_1b9

    :cond_10a
    const-wide/32 v8, 0x40000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    nop

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ApkLite;

    if-nez v0, :cond_132

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing base APK in "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v10, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_132
    move-object/from16 v8, p1

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-lez v4, :cond_18d

    new-array v9, v4, [Ljava/lang/String;

    new-array v10, v4, [Z

    new-array v11, v4, [Ljava/lang/String;

    new-array v12, v4, [Ljava/lang/String;

    new-array v13, v4, [Ljava/lang/String;

    new-array v14, v4, [I

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v9, v15

    check-cast v9, [Ljava/lang/String;

    sget-object v15, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v9, v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v15, 0x0

    :goto_15d
    if-ge v15, v4, :cond_184

    aget-object v2, v9, v15

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ApkLite;

    move-object/from16 v20, v3

    iget-object v3, v2, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    aput-object v3, v11, v15

    iget-boolean v3, v2, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    aput-boolean v3, v10, v15

    iget-object v3, v2, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    aput-object v3, v12, v15

    iget-object v3, v2, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v3, v13, v15

    iget v3, v2, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v3, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p2

    move-object/from16 v3, v20

    goto :goto_15d

    :cond_184
    move-object/from16 v20, v3

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    goto :goto_195

    :cond_18d
    move-object/from16 v20, v3

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    :goto_195
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    new-instance v15, Landroid/content/pm/PackageParser$PackageLite;

    move-object v11, v15

    move-object/from16 v12, v23

    move-object v13, v0

    move-object v14, v9

    move-object/from16 v24, v0

    move-object v0, v15

    move-object v15, v10

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    invoke-direct/range {v11 .. v19}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_1b4
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v20, v3

    :goto_1b9
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageParser$PackageLite;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "parseApkLite"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_3a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_1b
    :try_start_1b
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/PackageParser$ApkLite;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Landroid/content/pm/PackageParser$PackageLite;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_3a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_3a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public static parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageParser$PackageLite;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
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

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_c

    if-eq v1, v3, :cond_c

    goto :goto_0

    :cond_c
    const/16 v0, -0x6c

    if-eq v1, v2, :cond_17

    const-string v2, "No start tag found"

    invoke-interface {p0, v0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "manifest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "No <manifest> tag"

    invoke-interface {p0, v0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_2a
    const/4 v0, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, -0x6a

    if-nez v4, :cond_58

    invoke-static {v2, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid manifest package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_58
    const-string/jumbo v3, "split"

    invoke-interface {p2, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_69

    const/4 v0, 0x0

    goto :goto_86

    :cond_69
    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_86

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest split: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_86
    :goto_86
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_92

    :cond_91
    move-object v4, v0

    :goto_92
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_25

    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    const v5, 0x1010003

    if-eq v4, v5, :cond_1d

    const v5, 0x10103a6

    if-eq v4, v5, :cond_18

    goto :goto_22

    :cond_18
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_1d
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_25
    const/4 v3, 0x0

    const-string v4, "PackageParsing"

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_31

    goto :goto_52

    :cond_31
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    if-nez v5, :cond_4c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse verifier public key for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4c
    new-instance v3, Landroid/content/pm/VerifierInfo;

    invoke-direct {v3, v0, v5}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v3

    :cond_52
    :goto_52
    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method
