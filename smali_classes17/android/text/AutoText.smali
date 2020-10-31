.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "AutoText.java"


# static fields
.field private static final DEFAULT:I = 0x3801

.field private static final INCREMENT:I = 0x400

.field private static final RIGHT:I = 0x2454

.field private static final TRIE_C:I = 0x0

.field private static final TRIE_CHILD:I = 0x2

.field private static final TRIE_NEXT:I = 0x3

.field private static final TRIE_NULL:C = '\uffff'

.field private static final TRIE_OFF:I = 0x1

.field private static final TRIE_ROOT:I = 0x0

.field private static final TRIE_SIZEOF:I = 0x4

.field private static sInstance:Landroid/text/AutoText;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private mTrie:[C

.field private mTrieUsed:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/text/AutoText;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method private add(Ljava/lang/String;C)V
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/AutoText;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/AutoText;->mSize:I

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_6f

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    :goto_13
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v5, v1

    const v7, 0xffff

    if-eq v6, v7, :cond_3a

    aget-char v6, v5, v1

    add-int/lit8 v6, v6, 0x0

    aget-char v6, v5, v6

    if-ne v3, v6, :cond_35

    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_2f

    aget-char v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    aput-char p2, v5, v6

    return-void

    :cond_2f
    aget-char v5, v5, v1

    add-int/lit8 v1, v5, 0x2

    const/4 v4, 0x1

    goto :goto_3a

    :cond_35
    aget-char v5, v5, v1

    add-int/lit8 v1, v5, 0x3

    goto :goto_13

    :cond_3a
    :goto_3a
    if-nez v4, :cond_6c

    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    move-result v5

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aput-char v5, v6, v1

    aget-char v8, v6, v1

    add-int/lit8 v8, v8, 0x0

    aput-char v3, v6, v8

    aget-char v8, v6, v1

    add-int/lit8 v8, v8, 0x1

    aput-char v7, v6, v8

    aget-char v8, v6, v1

    add-int/lit8 v8, v8, 0x3

    aput-char v7, v6, v8

    aget-char v8, v6, v1

    add-int/lit8 v8, v8, 0x2

    aput-char v7, v6, v8

    add-int/lit8 v7, v0, -0x1

    if-ne v2, v7, :cond_67

    aget-char v7, v6, v1

    add-int/lit8 v7, v7, 0x1

    aput-char p2, v6, v7

    return-void

    :cond_67
    aget-char v6, v6, v1

    add-int/lit8 v6, v6, 0x2

    move v1, v6

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_6f
    return-void
.end method

.method public static get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .registers 5

    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v2, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    sget-object v3, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    iget-object v4, v3, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    new-instance v4, Landroid/text/AutoText;

    invoke-direct {v4, v0}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    move-object v3, v4

    sput-object v3, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    :cond_23
    monitor-exit v2

    return-object v3

    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private getSize()I
    .registers 2

    iget v0, p0, Landroid/text/AutoText;->mSize:I

    return v0
.end method

.method public static getSize(Landroid/view/View;)I
    .registers 2

    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0}, Landroid/text/AutoText;->getSize()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/res/Resources;)V
    .registers 11

    const v0, 0x1170003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2454

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x3801

    new-array v2, v2, [C

    iput-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v3, 0x0

    const v4, 0xffff

    aput-char v4, v2, v3

    const/4 v2, 0x1

    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    :try_start_1d
    const-string/jumbo v2, "words"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string v2, ""

    const/4 v3, 0x0

    :goto_26
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_68

    const-string/jumbo v5, "word"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_68

    :cond_39
    const/4 v5, 0x0

    const-string/jumbo v6, "src"

    invoke-interface {v0, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_67

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    move v7, v3

    goto :goto_64

    :cond_54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_64
    invoke-direct {p0, v5, v7}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V

    :cond_67
    goto :goto_26

    :cond_68
    :goto_68
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_6b} :catch_7f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_6b} :catch_78
    .catchall {:try_start_1d .. :try_end_6b} :catchall_76

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    nop

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    return-void

    :catchall_76
    move-exception v2

    goto :goto_86

    :catch_78
    move-exception v2

    :try_start_79
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_7f
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_76

    :goto_86
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
.end method

.method private lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    move v1, p2

    :goto_6
    const/4 v2, 0x0

    if-ge v1, p3, :cond_4c

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    :goto_d
    const v4, 0xffff

    if-eq v0, v4, :cond_46

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v0, 0x0

    aget-char v6, v5, v6

    if-ne v3, v6, :cond_41

    add-int/lit8 v6, p3, -0x1

    if-ne v1, v6, :cond_3a

    add-int/lit8 v6, v0, 0x1

    aget-char v6, v5, v6

    if-eq v6, v4, :cond_3a

    add-int/lit8 v2, v0, 0x1

    aget-char v2, v5, v2

    iget-object v4, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3a
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v0, 0x2

    aget-char v0, v5, v6

    goto :goto_46

    :cond_41
    add-int/lit8 v4, v0, 0x3

    aget-char v0, v5, v4

    goto :goto_d

    :cond_46
    :goto_46
    if-ne v0, v4, :cond_49

    return-object v2

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4c
    return-object v2
.end method

.method private newTrieNode()C
    .registers 5

    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v2, v1

    if-le v0, v2, :cond_15

    array-length v0, v1

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [C

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    :cond_15
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    iget-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    iput-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    return v0
.end method
