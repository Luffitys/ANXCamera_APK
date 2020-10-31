.class Landroid/widget/TextPatternUtil;
.super Ljava/lang/Object;
.source "TextPatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextPatternUtil$EmailInfo;
    }
.end annotation


# static fields
.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_EMAIL_ADDR_LENGTH:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    sput-object v0, Landroid/widget/TextPatternUtil;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findEmailAtPos(Ljava/lang/String;I)Landroid/widget/TextPatternUtil$EmailInfo;
    .registers 10

    add-int/lit16 v0, p1, -0x100

    if-gez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    move v0, v1

    add-int/lit16 v1, p1, 0x100

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    move v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Landroid/widget/TextPatternUtil;->getEmailList(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4a

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextPatternUtil$EmailInfo;

    iget v5, v4, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    iget v6, v4, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    iget-object v7, v4, Landroid/widget/TextPatternUtil$EmailInfo;->email:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {p1, v5, v6}, Landroid/widget/TextPatternUtil;->inRange(III)Z

    move-result v5

    if-eqz v5, :cond_49

    return-object v4

    :cond_49
    goto :goto_2b

    :cond_4a
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getEmailList(IILjava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/widget/TextPatternUtil$EmailInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_c
    const/4 v0, 0x0

    sget-object v1, Landroid/widget/TextPatternUtil;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_13
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4f

    if-nez v0, :cond_21

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_21
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextPatternUtil$EmailInfo;

    invoke-virtual {v5, v3}, Landroid/widget/TextPatternUtil$EmailInfo;->isContainedIn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    goto :goto_2a

    :cond_3f
    :goto_3f
    if-nez v2, :cond_4e

    new-instance v4, Landroid/widget/TextPatternUtil$EmailInfo;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    add-int/2addr v5, p0

    invoke-direct {v4, v5, p1, v3}, Landroid/widget/TextPatternUtil$EmailInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    goto :goto_13

    :cond_4f
    return-object v0
.end method

.method private static inRange(III)Z
    .registers 4

    if-lt p0, p1, :cond_6

    if-gt p0, p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
