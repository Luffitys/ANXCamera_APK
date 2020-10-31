.class Lcom/miui/internal/search/RankedCursor$ScoredData;
.super Ljava/lang/Object;
.source "RankedCursor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/search/RankedCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScoredData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/internal/search/RankedCursor$ScoredData;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[Ljava/lang/String;

.field private score:D


# direct methods
.method constructor <init>(D[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    iput-object p3, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->data:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/search/RankedCursor$ScoredData;I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->data:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/miui/internal/search/RankedCursor$ScoredData;)I
    .registers 7

    iget-wide v0, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    iget-wide v2, p1, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    cmpg-double v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, -0x1

    return v0

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->compareTo(Lcom/miui/internal/search/RankedCursor$ScoredData;)I

    move-result p1

    return p1
.end method

.method public getScore()D
    .registers 3

    iget-wide v0, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    return-wide v0
.end method
