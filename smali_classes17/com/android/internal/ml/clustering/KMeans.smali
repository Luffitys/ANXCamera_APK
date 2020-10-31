.class public Lcom/android/internal/ml/clustering/KMeans;
.super Ljava/lang/Object;
.source "KMeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ml/clustering/KMeans$Mean;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeans"


# instance fields
.field private final mMaxIterations:I

.field private final mRandomState:Ljava/util/Random;

.field private mSqConvergenceEpsilon:F


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .registers 4

    const/16 v0, 0x1e

    const v1, 0x3ba3d70a    # 0.005f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;IF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    iput p2, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    mul-float v0, p3, p3

    iput v0, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    return-void
.end method

.method public static nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_20

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    iget-object v5, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {p0, v5}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_1d

    move-object v0, v4

    move v1, v5

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_20
    return-object v0
.end method

.method public static score(Ljava/util/List;)D
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)D"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_2f

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v2, :cond_2c

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/ml/clustering/KMeans$Mean;

    if-ne v4, v6, :cond_1b

    goto :goto_29

    :cond_1b
    iget-object v7, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v8, v6, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v7, v8}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v0, v7

    :goto_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_2f
    return-wide v0
.end method

.method public static sqDistance([F[F)F
    .registers 8

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_14

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    aget v4, p0, v2

    aget v5, p1, v2

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    return v0
.end method

.method private step(Ljava/util/ArrayList;[[F)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;[[F)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/ml/clustering/KMeans$Mean;

    iget-object v2, v1, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_19
    if-ltz v0, :cond_29

    aget-object v1, p2, v0

    invoke-static {v1, p1}, Lcom/android/internal/ml/clustering/KMeans;->nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_29
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_30
    if-ltz v1, :cond_95

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/ml/clustering/KMeans$Mean;

    iget-object v3, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_41

    goto :goto_92

    :cond_41
    iget-object v3, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v4, v3

    new-array v4, v4, [F

    iput-object v4, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    const/4 v4, 0x0

    :goto_49
    iget-object v5, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6e

    const/4 v5, 0x0

    :goto_52
    iget-object v6, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v6, v6

    if-ge v5, v6, :cond_6b

    iget-object v6, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v7, v6, v5

    iget-object v8, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v5

    add-float/2addr v7, v8

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_6e
    const/4 v4, 0x0

    :goto_6f
    iget-object v5, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v5, v5

    if-ge v4, v5, :cond_85

    iget-object v5, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v6, v5, v4

    iget-object v7, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    :cond_85
    iget-object v4, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v3, v4}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_92

    const/4 v0, 0x0

    :cond_92
    :goto_92
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    :cond_95
    return v0
.end method


# virtual methods
.method public checkDataSetSanity([[F)V
    .registers 7

    if-eqz p1, :cond_34

    array-length v0, p1

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "Bad data set format."

    if-eqz v1, :cond_26

    aget-object v0, p1, v0

    array-length v0, v0

    array-length v1, p1

    const/4 v3, 0x1

    :goto_11
    if-ge v3, v1, :cond_25

    aget-object v4, p1, v3

    if-eqz v4, :cond_1f

    aget-object v4, p1, v3

    array-length v4, v4

    if-ne v4, v0, :cond_1f

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_25
    return-void

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data set is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data set is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public predict(I[[F)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/internal/ml/clustering/KMeans;->checkDataSetSanity([[F)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p1, :cond_2a

    new-instance v3, Lcom/android/internal/ml/clustering/KMeans$Mean;

    invoke-direct {v3, v0}, Lcom/android/internal/ml/clustering/KMeans$Mean;-><init>(I)V

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v0, :cond_24

    iget-object v5, v3, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v6, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_24
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2c
    iget v4, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    if-ge v3, v4, :cond_3a

    invoke-direct {p0, v1, p2}, Lcom/android/internal/ml/clustering/KMeans;->step(Ljava/util/ArrayList;[[F)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_3a

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3a
    :goto_3a
    nop

    return-object v1
.end method
