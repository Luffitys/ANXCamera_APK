.class public Lcom/miui/internal/analytics/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field private mIdRegEx:Ljava/util/regex/Pattern;

.field private mPolicy:Ljava/lang/String;

.field private mProbability:J

.field private mRandom:Ljava/util/Random;

.field private mVersionRegEx:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/Item;->mRandom:Ljava/util/Random;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Item;->mIdRegEx:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/miui/internal/analytics/Item;->mPolicy:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Item;->mVersionRegEx:Ljava/util/regex/Pattern;

    iput-wide p4, p0, Lcom/miui/internal/analytics/Item;->mProbability:J

    return-void
.end method


# virtual methods
.method public getPolicy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/analytics/Item;->mPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public idMatches(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/analytics/Item;->mIdRegEx:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public isDispatch(Ljava/lang/String;)Z
    .registers 8

    iget-wide v0, p0, Lcom/miui/internal/analytics/Item;->mProbability:J

    iget-object v2, p0, Lcom/miui/internal/analytics/Item;->mRandom:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1e

    iget-object v0, p0, Lcom/miui/internal/analytics/Item;->mVersionRegEx:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    return v3
.end method
