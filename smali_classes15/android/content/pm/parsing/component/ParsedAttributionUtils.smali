.class public Landroid/content/pm/parsing/component/ParsedAttributionUtils;
.super Ljava/lang/Object;
.source "ParsedAttributionUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestAttribution:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v2, "<attribution> could not be parsed"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_10
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-nez v4, :cond_2a

    const-string v2, "<attribution> does not specify android:tag"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_cc

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_2a
    :try_start_2a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_3c

    const-string v2, "android:tag is too long. Max length is 50"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_cc

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_3c
    :try_start_3c
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-nez v5, :cond_4c

    const-string v2, "<attribution> does not specify android:label"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_cc

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_4c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    :cond_54
    :goto_54
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    if-eq v7, v2, :cond_b5

    const/4 v7, 0x3

    if-ne v8, v7, :cond_64

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_b5

    :cond_64
    if-eq v8, v7, :cond_54

    const/4 v7, 0x4

    if-ne v8, v7, :cond_6a

    goto :goto_54

    :cond_6a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "inherit-from"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9f

    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestAttributionInheritFrom:[I

    invoke-virtual {p0, p1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v1, :cond_85

    const-string v2, "<inherit-from> could not be parsed"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_85
    :try_start_85
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    if-nez v0, :cond_91

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v10

    :cond_91
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_9a

    nop

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    goto :goto_54

    :catchall_9a
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad element under <attribution>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_b5
    if-nez v0, :cond_bc

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_c2

    :cond_bc
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    :goto_c2
    new-instance v2, Landroid/content/pm/parsing/component/ParsedAttribution;

    invoke-direct {v2, v4, v5, v0}, Landroid/content/pm/parsing/component/ParsedAttribution;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :catchall_cc
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method
