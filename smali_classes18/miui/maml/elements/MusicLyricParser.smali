.class public Lmiui/maml/elements/MusicLyricParser;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicLyricParser$EntityCompator;,
        Lmiui/maml/elements/MusicLyricParser$Lyric;,
        Lmiui/maml/elements/MusicLyricParser$LyricHeader;,
        Lmiui/maml/elements/MusicLyricParser$LyricEntity;,
        Lmiui/maml/elements/MusicLyricParser$LyricShot;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final INTERVAL_OF_LAST:I = 0x1f40

.field private static final LINE_PARSE_IGNORE:I = 0x1

.field private static final LINE_PARSE_REGULAR:I = 0x2

.field private static final LINE_PARSE_STOP:I = 0x0

.field public static final MAX_VALID_TIME:I = 0x112a880

.field private static final TAG_ALBUM:Ljava/lang/String; = "al"

.field private static final TAG_ARTIST:Ljava/lang/String; = "ar"

.field private static final TAG_EDITOR:Ljava/lang/String; = "by"

.field private static final TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

.field private static final TAG_OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG_TITLE:Ljava/lang/String; = "ti"

.field private static final TAG_VERSION:Ljava/lang/String; = "ve"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTime(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    # getter for: Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;
    invoke-static {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->access$000(Lmiui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_33

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v5, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v4, v5, :cond_33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v2, v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    :cond_33
    const/4 v2, 0x1

    :goto_34
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_6e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v3, v4, :cond_6b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v5, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_6e
    return-void
.end method

.method private static doParse(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    invoke-direct {v2}, Lmiui/maml/elements/MusicLyricParser$LyricHeader;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    array-length v5, v4

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v5, :cond_28

    aget-object v7, v4, v6

    invoke-static {v7, v2, v3}, Lmiui/maml/elements/MusicLyricParser;->parseLine(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I

    move-result v8

    if-nez v8, :cond_21

    goto :goto_28

    :cond_21
    const/4 v9, 0x1

    if-ne v8, v9, :cond_25

    const/4 v0, 0x1

    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_28
    :goto_28
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3c

    new-instance v5, Lmiui/maml/elements/MusicLyricParser$EntityCompator;

    invoke-direct {v5}, Lmiui/maml/elements/MusicLyricParser$EntityCompator;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v5, Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {v5, v2, v3, v0}, Lmiui/maml/elements/MusicLyricParser$Lyric;-><init>(Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V

    move-object v1, v5

    :cond_3c
    return-object v1
.end method

.method private static parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x0

    const/16 v3, 0x3c

    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    :goto_17
    if-ltz v4, :cond_26

    aget-object v5, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v5, v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    :cond_26
    mul-int/lit16 v4, v2, 0x3e8

    add-int/2addr v1, v4

    const v4, 0x112a880

    if-ge v1, v4, :cond_36

    new-instance v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-direct {v4, v1, p2}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_36} :catch_37

    :cond_36
    goto :goto_39

    :catch_37
    move-exception v1

    const/4 v0, 0x1

    :goto_39
    return v0
.end method

.method private static parseHeader(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;)I
    .registers 7

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_68

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_11

    goto :goto_68

    :cond_11
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "al"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iput-object v3, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->album:Ljava/lang/String;

    goto :goto_67

    :cond_28
    const-string v4, "ar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    iput-object v3, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->artist:Ljava/lang/String;

    goto :goto_67

    :cond_33
    const-string v4, "ti"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iput-object v3, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->title:Ljava/lang/String;

    goto :goto_67

    :cond_3e
    const-string v4, "by"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    iput-object v3, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->editor:Ljava/lang/String;

    goto :goto_67

    :cond_49
    const-string v4, "ve"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    iput-object v3, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->version:Ljava/lang/String;

    goto :goto_67

    :cond_54
    const-string v4, "offset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    :try_start_5c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_62} :catch_63

    goto :goto_65

    :catch_63
    move-exception v4

    const/4 v1, 0x1

    :goto_65
    goto :goto_67

    :cond_66
    const/4 v1, 0x1

    :goto_67
    return v1

    :cond_68
    :goto_68
    return v1
.end method

.method private static parseLine(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmiui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;)I"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    sget-object v1, Lmiui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    return v2

    :cond_22
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_31

    return v2

    :cond_31
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v9, v3

    const/4 v10, 0x0

    move v11, v10

    :goto_3d
    if-ge v11, v9, :cond_78

    aget-object v12, v3, v11

    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_48

    goto :goto_57

    :cond_48
    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x2

    if-ge v14, v15, :cond_5c

    nop

    :goto_57
    move-object/from16 v15, p1

    move-object/from16 v14, p2

    goto :goto_75

    :cond_5c
    aget-object v14, v13, v10

    invoke-static {v14}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6d

    move-object/from16 v14, p2

    invoke-static {v13, v14, v6}, Lmiui/maml/elements/MusicLyricParser;->parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v15, p1

    goto :goto_75

    :cond_6d
    move-object/from16 v14, p2

    move-object/from16 v15, p1

    invoke-static {v12, v15}, Lmiui/maml/elements/MusicLyricParser;->parseHeader(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;)I

    move-result v5

    :goto_75
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    :cond_78
    move-object/from16 v15, p1

    move-object/from16 v14, p2

    return v5
.end method

.method public static parseLyric(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    :try_start_3
    invoke-static {p0}, Lmiui/maml/elements/MusicLyricParser;->doParse(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v1

    move-object v0, v1

    invoke-static {v0}, Lmiui/maml/elements/MusicLyricParser;->correctTime(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_10
    return-object v0
.end method
