.class public Lcom/miui/internal/analytics/Item;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mIdRegEx:Ljava/util/regex/Pattern;

.field private mPolicy:Ljava/lang/String;

.field private mProbability:J

.field private mRandom:Ljava/util/Random;

.field private mVersionRegEx:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/Item;->mRandom:Ljava/util/Random;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/analytics/Item;->mIdRegEx:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/miui/internal/analytics/Item;->mPolicy:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/analytics/Item;->mVersionRegEx:Ljava/util/regex/Pattern;

    iput-wide p4, p0, Lcom/miui/internal/analytics/Item;->mProbability:J

    return-void
.end method


# virtual methods
.method public getPolicy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/analytics/Item;->mPolicy:Ljava/lang/String;

    return-object p0
.end method

.method public idMatches(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/analytics/Item;->mIdRegEx:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public isDispatch(Ljava/lang/String;)Z
    .locals 6

    iget-wide v0, p0, Lcom/miui/internal/analytics/Item;->mProbability:J

    iget-object v2, p0, Lcom/miui/internal/analytics/Item;->mRandom:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/analytics/Item;->mVersionRegEx:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
