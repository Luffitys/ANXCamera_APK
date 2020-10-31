.class public Landroid/graphics/animation/FallbackLUTInterpolator;
.super Ljava/lang/Object;
.source "FallbackLUTInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final MAX_SAMPLE_POINTS:I = 0x12c


# instance fields
.field private final mLut:[F

.field private mSourceInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/animation/TimeInterpolator;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {p1, p2, p3}, Landroid/graphics/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mLut:[F

    return-void
.end method

.method private static createLUT(Landroid/animation/TimeInterpolator;J)[F
    .registers 12

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    long-to-int v2, v2

    long-to-double v3, p1

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x12c

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [F

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    const/4 v6, 0x0

    :goto_27
    if-ge v6, v3, :cond_34

    int-to-float v7, v6

    div-float/2addr v7, v5

    invoke-interface {p0, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    aput v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_34
    return-object v4
.end method

.method public static createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .registers 6

    invoke-static {p0, p1, p2}, Landroid/graphics/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createLutInterpolator([F)J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public createNativeInterpolator()J
    .registers 3

    iget-object v0, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mLut:[F

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createLutInterpolator([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .registers 3

    iget-object v0, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
