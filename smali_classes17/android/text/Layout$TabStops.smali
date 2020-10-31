.class public Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabStops"
.end annotation


# instance fields
.field private mIncrement:F

.field private mNumStops:I

.field private mStops:[F


# direct methods
.method public constructor <init>(F[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    return-void
.end method

.method public static nextDefaultStop(FF)F
    .registers 3

    add-float v0, p0, p1

    div-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method nextTab(F)F
    .registers 7

    iget v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    if-lez v0, :cond_13

    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_13

    aget v3, v1, v2

    cmpl-float v4, v3, p1

    if-lez v4, :cond_10

    return v3

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    iget v1, p0, Landroid/text/Layout$TabStops;->mIncrement:F

    invoke-static {p1, v1}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result v1

    return v1
.end method

.method reset(F[Ljava/lang/Object;)V
    .registers 12

    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:F

    const/4 v0, 0x0

    if-eqz p2, :cond_47

    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_3b

    aget-object v5, p2, v4

    instance-of v6, v5, Landroid/text/style/TabStopSpan;

    if-eqz v6, :cond_38

    if-nez v1, :cond_19

    const/16 v6, 0xa

    new-array v1, v6, [F

    goto :goto_2b

    :cond_19
    array-length v6, v1

    if-ne v0, v6, :cond_2b

    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v0, :cond_2a

    aget v8, v1, v7

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_2a
    move-object v1, v6

    :cond_2b
    :goto_2b
    add-int/lit8 v6, v0, 0x1

    move-object v7, v5

    check-cast v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v7}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v7

    int-to-float v7, v7

    aput v7, v1, v0

    move v0, v6

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_3b
    const/4 v2, 0x1

    if-le v0, v2, :cond_41

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->sort([FII)V

    :cond_41
    iget-object v2, p0, Landroid/text/Layout$TabStops;->mStops:[F

    if-eq v1, v2, :cond_47

    iput-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    :cond_47
    iput v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    return-void
.end method
