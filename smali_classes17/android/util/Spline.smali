.class public abstract Landroid/util/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Spline$LinearSpline;,
        Landroid/util/Spline$MonotoneCubicSpline;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLinearSpline([F[F)Landroid/util/Spline;
    .registers 3

    new-instance v0, Landroid/util/Spline$LinearSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    .registers 3

    new-instance v0, Landroid/util/Spline$MonotoneCubicSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$MonotoneCubicSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static createSpline([F[F)Landroid/util/Spline;
    .registers 4

    invoke-static {p0}, Landroid/util/Spline;->isStrictlyIncreasing([F)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Landroid/util/Spline;->isMonotonic([F)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, p1}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-static {p0, p1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The control points must all have strictly increasing X values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isMonotonic([F)Z
    .registers 6

    if-eqz p0, :cond_1a

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_18

    aget v3, p0, v2

    cmpg-float v4, v3, v1

    if-gez v4, :cond_14

    return v0

    :cond_14
    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    const/4 v0, 0x1

    return v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isStrictlyIncreasing([F)Z
    .registers 6

    if-eqz p0, :cond_1a

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_18

    aget v3, p0, v2

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_14

    return v0

    :cond_14
    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    const/4 v0, 0x1

    return v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract interpolate(F)F
.end method
