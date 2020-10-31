.class public Lmiui/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/text/util/Linkify$LinkSpec;,
        Lmiui/text/util/Linkify$Super;
    }
.end annotation


# static fields
.field public static final ALL:I

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiui/text/util/Linkify$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMAIL_ADDRESSES:I = 0x2

.field private static final EMPTY:[Ljava/lang/String;

.field public static final MAP_ADDRESSES:I = 0x8

.field private static final PATTERNS_FROM_FRAMEWORK:I = 0xe

.field public static final PHONE_NUMBERS:I = 0x4

.field public static TIME_PHRASES:I = 0x0

.field public static final WEB_URLS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiui/text/util/Linkify;->EMPTY:[Ljava/lang/String;

    const/16 v0, 0x10

    sput v0, Lmiui/text/util/Linkify;->TIME_PHRASES:I

    or-int/lit8 v0, v0, 0xf

    sput v0, Lmiui/text/util/Linkify;->ALL:I

    new-instance v0, Lmiui/text/util/Linkify$1;

    invoke-direct {v0}, Lmiui/text/util/Linkify$1;-><init>()V

    sput-object v0, Lmiui/text/util/Linkify;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_15
    return-void
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_13
    if-ltz v2, :cond_1d

    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_1d
    move v2, p1

    and-int/lit8 p1, p1, 0xe

    invoke-static {p0, p1}, Lmiui/text/util/Linkify$Super;->addLinks(Landroid/text/Spannable;I)Z

    and-int/lit8 v4, v2, -0xf

    sget v5, Lmiui/text/util/Linkify;->ALL:I

    and-int p1, v4, v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_46

    sget-object v7, Lmiui/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const-string v5, "http://"

    const-string v6, "https://"

    const-string v8, "rtsp://"

    filled-new-array {v5, v6, v8}, [Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lmiui/text/util/Linkify$Super;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v10, 0x0

    move-object v5, v4

    move-object v6, p0

    invoke-static/range {v5 .. v10}, Lmiui/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_46
    sget v5, Lmiui/text/util/Linkify;->TIME_PHRASES:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_63

    sget-object v7, Lmiui/util/Patterns;->CHINESE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v11, "time:"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    move-object v6, p0

    invoke-static/range {v5 .. v10}, Lmiui/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    sget-object v7, Lmiui/util/Patterns;->ENGLISH_TIME_PATTERN:Ljava/util/regex/Pattern;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v5 .. v10}, Lmiui/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_63
    invoke-static {v4, p0}, Lmiui/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6d

    return v0

    :cond_6d
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/text/util/Linkify$LinkSpec;

    iget-object v6, v5, Lmiui/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    if-eqz v6, :cond_8a

    iget-object v6, v5, Lmiui/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    iget v7, v5, Lmiui/text/util/Linkify$LinkSpec;->start:I

    iget v8, v5, Lmiui/text/util/Linkify$LinkSpec;->end:I

    invoke-static {v6, v7, v8, p0}, Lmiui/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    :cond_8a
    goto :goto_71

    :cond_8b
    return v3
.end method

.method public static addLinks(Landroid/widget/TextView;I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, p1}, Lmiui/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {p0}, Lmiui/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    return v3

    :cond_1a
    return v0

    :cond_1b
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-static {v2, p1}, Lmiui/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-static {p0}, Lmiui/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v3

    :cond_2c
    return v0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 6

    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/text/util/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-eqz p4, :cond_1a

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_1a
    new-instance v3, Lmiui/text/util/Linkify$LinkSpec;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/text/util/Linkify$LinkSpec;-><init>(Lmiui/text/util/Linkify$1;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Lmiui/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    iput v1, v3, Lmiui/text/util/Linkify$LinkSpec;->start:I

    iput v2, v3, Lmiui/text/util/Linkify$LinkSpec;->end:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    goto :goto_4

    :cond_33
    return-void
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
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

.method private static pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/text/util/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_31

    new-instance v2, Lmiui/text/util/Linkify$LinkSpec;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmiui/text/util/Linkify$LinkSpec;-><init>(Lmiui/text/util/Linkify$1;)V

    aget-object v3, v0, v1

    iput-object v3, v2, Lmiui/text/util/Linkify$LinkSpec;->span:Landroid/text/style/URLSpan;

    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Lmiui/text/util/Linkify$LinkSpec;->start:I

    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Lmiui/text/util/Linkify$LinkSpec;->end:I

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_31
    sget-object v1, Lmiui/text/util/Linkify;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3b
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_99

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/text/util/Linkify$LinkSpec;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/text/util/Linkify$LinkSpec;

    const/4 v5, -0x1

    iget v6, v3, Lmiui/text/util/Linkify$LinkSpec;->start:I

    iget v7, v4, Lmiui/text/util/Linkify$LinkSpec;->start:I

    if-gt v6, v7, :cond_95

    iget v6, v3, Lmiui/text/util/Linkify$LinkSpec;->end:I

    iget v7, v4, Lmiui/text/util/Linkify$LinkSpec;->start:I

    if-le v6, v7, :cond_95

    iget v6, v4, Lmiui/text/util/Linkify$LinkSpec;->end:I

    iget v7, v3, Lmiui/text/util/Linkify$LinkSpec;->end:I

    if-gt v6, v7, :cond_63

    add-int/lit8 v5, v2, 0x1

    goto :goto_7f

    :cond_63
    iget v6, v3, Lmiui/text/util/Linkify$LinkSpec;->end:I

    iget v7, v3, Lmiui/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Lmiui/text/util/Linkify$LinkSpec;->end:I

    iget v8, v4, Lmiui/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_72

    add-int/lit8 v5, v2, 0x1

    goto :goto_7f

    :cond_72
    iget v6, v3, Lmiui/text/util/Linkify$LinkSpec;->end:I

    iget v7, v3, Lmiui/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Lmiui/text/util/Linkify$LinkSpec;->end:I

    iget v8, v4, Lmiui/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_7f

    move v5, v2

    :cond_7f
    :goto_7f
    const/4 v6, -0x1

    if-eq v5, v6, :cond_95

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/text/util/Linkify$LinkSpec;

    iget-object v6, v6, Lmiui/text/util/Linkify$LinkSpec;->span:Landroid/text/style/URLSpan;

    if-eqz v6, :cond_8f

    invoke-interface {p1, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_8f
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    :cond_95
    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_99
    return-void
.end method
