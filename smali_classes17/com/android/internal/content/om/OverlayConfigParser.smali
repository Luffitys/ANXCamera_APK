.class final Lcom/android/internal/content/om/OverlayConfigParser;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;,
        Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    }
.end annotation


# static fields
.field private static final CONFIG_DEFAULT_FILENAME:Ljava/lang/String; = "config/config.xml"

.field private static final CONFIG_DIRECTORY:Ljava/lang/String; = "config"

.field static final DEFAULT_ENABLED_STATE:Z = false

.field static final DEFAULT_MUTABILITY:Z = true

.field private static final MAXIMUM_MERGE_DEPTH:I = 0x5


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayScanner;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    :cond_11
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    const-string v3, "config/config.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    return-object v1

    :cond_23
    new-instance v2, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayConfigParser$1;)V

    move-object v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    # getter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mOrderedConfigurations:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$100(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method private static parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .registers 13

    const/4 v0, 0x0

    const-string/jumbo v1, "path"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c8

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-nez v3, :cond_b0

    # operator++ for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mMergeDepth:I
    invoke-static {p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$208(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    move-result v3

    const/4 v6, 0x5

    if-eq v3, v6, :cond_9a

    :try_start_1d
    new-instance v3, Ljava/io/File;

    # getter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    invoke-static {p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$300(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v6

    const-string v7, "config"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_39} :catch_81

    nop

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-static {v3, v6}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-static {v6, p2, p3}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    # operator-- for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mMergeDepth:I
    invoke-static {p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$210(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    return-void

    :cond_4d
    new-instance v7, Ljava/lang/IllegalStateException;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    aput-object v6, v4, v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "Merged file %s outside of configuration directory in %s at %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_69
    new-instance v7, Ljava/lang/IllegalStateException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p0, v4, v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "Merged configuration file %s does not exist in %s at %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_81
    move-exception v3

    new-instance v6, Ljava/lang/IllegalStateException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p0, v4, v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "Couldn\'t find or open merged configuration file %s in %s at %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_9a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "Maximum <merge> depth exceeded in %s at %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p0, v4, v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "Path %s must be relative to the directory containing overlay configurations  files in %s at %s "

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<merge> without path in %s at %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const-string/jumbo v3, "package"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_fa

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v1, :cond_4d

    invoke-virtual {v1, v3}, Lcom/android/internal/content/om/OverlayScanner;->getParsedInfo(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object v7

    if-eqz v7, :cond_29

    # getter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$300(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v9

    iget-object v10, v7, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v9, v10}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsOverlay(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_29

    move-object v10, v7

    goto :goto_4e

    :cond_29
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    # getter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$300(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v4

    aput-object v4, v9, v6

    aput-object p0, v9, v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v8

    const-string/jumbo v4, "overlay %s not present in partition %s in %s at %s"

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4d
    move-object v10, v7

    :goto_4e
    # getter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mConfiguredOverlays:Landroid/util/ArraySet;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$400(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_df

    const/4 v7, 0x0

    const-string v8, "enabled"

    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v8, "false"

    if-eqz v11, :cond_6b

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v6

    move v7, v9

    move v12, v7

    goto :goto_6c

    :cond_6b
    move v12, v7

    :goto_6c
    const/4 v7, 0x1

    const-string/jumbo v9, "mutable"

    invoke-interface {v0, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9d

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    move v7, v8

    if-nez v7, :cond_9b

    # getter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mFoundMutableOverlay:Z
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$500(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Z

    move-result v8

    if-nez v8, :cond_85

    goto :goto_9b

    :cond_85
    new-instance v8, Ljava/lang/IllegalStateException;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const-string v4, "immutable overlays must precede mutable overlays: found in %s at %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9b
    :goto_9b
    move v13, v7

    goto :goto_9e

    :cond_9d
    move v13, v7

    :goto_9e
    if-eqz v13, :cond_a6

    move-object/from16 v14, p3

    # setter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mFoundMutableOverlay:Z
    invoke-static {v14, v6}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$502(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;Z)Z

    goto :goto_c0

    :cond_a6
    move-object/from16 v14, p3

    if-nez v12, :cond_c0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found default-disabled immutable overlay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OverlayConfig"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    :goto_c0
    new-instance v15, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    # getter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$300(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v4

    iget-object v8, v4, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    move-object v4, v15

    move-object v5, v3

    move v6, v12

    move v7, v13

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;)V

    # getter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mConfiguredOverlays:Landroid/util/ArraySet;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$400(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mOrderedConfigurations:Ljava/util/ArrayList;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->access$100(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_df
    move-object/from16 v14, p3

    new-instance v2, Ljava/lang/IllegalStateException;

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v4

    aput-object p0, v7, v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    const-string/jumbo v4, "overlay %s configured multiple times in a single partition in %s at %s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_fa
    move-object/from16 v14, p3

    new-instance v2, Ljava/lang/IllegalStateException;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const-string v4, "\"<overlay> without package in %s at %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .registers 13

    const-string v0, "OverlayConfig"

    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_81

    nop

    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v3, "config"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :goto_18
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x410bbbb0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_3f

    const v7, 0x62fa438

    if-eq v6, v7, :cond_34

    :cond_33
    goto :goto_49

    :cond_34
    const-string/jumbo v6, "merge"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v5, v8

    goto :goto_49

    :cond_3f
    const-string/jumbo v6, "overlay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v5, v9

    :goto_49
    if-eqz v5, :cond_69

    if-eq v5, v9, :cond_65

    const-string v5, "Tag %s is unknown in %s at %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object p0, v6, v9

    const/4 v7, 0x2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :cond_65
    invoke-static {p0, v2, p1, p2}, Lcom/android/internal/content/om/OverlayConfigParser;->parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    goto :goto_6d

    :cond_69
    invoke-static {p0, v2, p1, p2}, Lcom/android/internal/content/om/OverlayConfigParser;->parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_6c} :catch_71
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_6c} :catch_71
    .catchall {:try_start_8 .. :try_end_6c} :catchall_6f

    nop

    :goto_6d
    goto :goto_18

    :cond_6e
    goto :goto_78

    :catchall_6f
    move-exception v0

    goto :goto_7d

    :catch_71
    move-exception v2

    :try_start_72
    const-string v3, "Got exception parsing overlay configuration."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_6f

    nop

    :goto_78
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_7d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_81
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find or open overlay configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
