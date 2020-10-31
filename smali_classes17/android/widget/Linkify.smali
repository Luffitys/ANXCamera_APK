.class public Landroid/widget/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# static fields
.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field private static final WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field public static final WEB_URLS:I = 0x1

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sput-object v0, Landroid/widget/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const-string v0, "[a-zA-Z0-9\\.]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/widget/Linkify;->WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IILjava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-eqz p6, :cond_1e

    invoke-interface {p6, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_35

    :cond_1e
    new-instance v3, Landroid/widget/LinkSpec;

    invoke-direct {v3}, Landroid/widget/LinkSpec;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p5, v0, p7}, Landroid/widget/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    iput v1, v3, Landroid/widget/LinkSpec;->start:I

    iput v2, v3, Landroid/widget/LinkSpec;->end:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    goto :goto_8

    :cond_36
    return-void
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "IIZ)V"
        }
    .end annotation

    if-eqz p4, :cond_4

    move v0, p2

    goto :goto_6

    :cond_4
    add-int/lit8 v0, p2, -0x1

    :goto_6
    if-ltz v0, :cond_16

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_16

    move p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    if-eqz p4, :cond_1b

    add-int/lit8 v0, p3, -0x1

    goto :goto_1c

    :cond_1b
    move v0, p3

    :goto_1c
    if-ltz v0, :cond_33

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_33

    add-int/lit8 p3, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_33
    sub-int v0, p3, p2

    const/4 v1, 0x5

    if-ge v0, v1, :cond_39

    return-void

    :cond_39
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    new-instance v4, Landroid/widget/LinkSpec;

    invoke-direct {v4}, Landroid/widget/LinkSpec;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v5

    iput v5, v4, Landroid/widget/LinkSpec;->start:I

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v5

    iput v5, v4, Landroid/widget/LinkSpec;->end:I

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_96
    return-void
.end method

.method private static final gatherWebLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "IIZ)V"
        }
    .end annotation

    if-eqz p4, :cond_4

    move v0, p2

    goto :goto_6

    :cond_4
    add-int/lit8 v0, p2, -0x1

    :goto_6
    if-ltz v0, :cond_18

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sget-object v2, Landroid/widget/Linkify;->WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v1, v2}, Landroid/widget/Linkify;->isValidChar(CLjava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_18

    move p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    if-eqz p4, :cond_1d

    add-int/lit8 v0, p3, -0x1

    goto :goto_1e

    :cond_1d
    move v0, p3

    :goto_1e
    if-ltz v0, :cond_37

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_37

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sget-object v2, Landroid/widget/Linkify;->WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v1, v2}, Landroid/widget/Linkify;->isValidChar(CLjava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_37

    add-int/lit8 p3, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_37
    sget-object v5, Lmiui/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const-string v0, "http://"

    const-string v1, "https://"

    const-string/jumbo v2, "rtsp://"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/widget/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Landroid/widget/Linkify;->gatherLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IILjava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static getClipboardFistLink(Ljava/lang/CharSequence;III)Ljava/lang/String;
    .registers 7

    invoke-static {p0, p1, p2, p3}, Landroid/widget/Linkify;->getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinkSpec;

    iget-object v1, v1, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    return-object v1

    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method static final getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinkSpec;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_21

    if-eq p2, v0, :cond_21

    if-le p1, p2, :cond_8

    goto :goto_21

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eq p1, p2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_19

    invoke-static {v0, p0, p1, p2, v1}, Landroid/widget/Linkify;->gatherWebLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V

    :cond_19
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_20

    invoke-static {v0, p0, p1, p2, v1}, Landroid/widget/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V

    :cond_20
    return-object v0

    :cond_21
    :goto_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isValidChar(CLjava/util/regex/Pattern;)Z
    .registers 4

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 12

    if-eqz p3, :cond_6

    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    const/4 v6, 0x0

    const/4 v0, 0x0

    move v7, v0

    :goto_9
    array-length v0, p1

    if-ge v7, v0, :cond_50

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-object v3, p1, v7

    const/4 v4, 0x0

    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v3, p1, v7

    const/4 v4, 0x0

    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_50

    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_50
    :goto_50
    if-nez v6, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_64
    return-object p0
.end method
