.class Landroid/gesture/Instance;
.super Ljava/lang/Object;
.source "Instance.java"


# static fields
.field private static final ORIENTATIONS:[F

.field private static final PATCH_SAMPLE_SIZE:I = 0x10

.field private static final SEQUENCE_SAMPLE_SIZE:I = 0x10


# instance fields
.field final id:J

.field final label:Ljava/lang/String;

.field final vector:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Landroid/gesture/Instance;->ORIENTATIONS:[F

    return-void

    :array_a
    .array-data 4
        0x0
        0x3f490fdb
        0x3fc90fdb
        0x4016cbe4
        0x40490fdb    # (float)Math.PI
        0x0
        -0x40b6f025
        -0x4036f025
        -0x3fe9341c
        -0x3fb6f025
    .end array-data
.end method

.method private constructor <init>(J[FLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/gesture/Instance;->id:J

    iput-object p3, p0, Landroid/gesture/Instance;->vector:[F

    iput-object p4, p0, Landroid/gesture/Instance;->label:Ljava/lang/String;

    return-void
.end method

.method static createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;
    .registers 8

    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    invoke-static {p1, p2}, Landroid/gesture/Instance;->temporalSampler(ILandroid/gesture/Gesture;)[F

    move-result-object v0

    new-instance v1, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    invoke-direct {v1}, Landroid/gesture/Instance;->normalize()V

    goto :goto_21

    :cond_14
    invoke-static {p2}, Landroid/gesture/Instance;->spatialSampler(Landroid/gesture/Gesture;)[F

    move-result-object v0

    new-instance v1, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    :goto_21
    return-object v1
.end method

.method private normalize()V
    .registers 7

    iget-object v0, p0, Landroid/gesture/Instance;->vector:[F

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_10

    aget v4, v0, v3

    aget v5, v0, v3

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_21

    aget v5, v0, v4

    div-float/2addr v5, v3

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_21
    return-void
.end method

.method private static spatialSampler(Landroid/gesture/Gesture;)[F
    .registers 3

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object v0

    return-object v0
.end method

.method private static temporalSampler(ILandroid/gesture/Gesture;)[F
    .registers 13

    invoke-virtual {p1}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureStroke;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v0

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v5, v2, v3

    sub-float/2addr v4, v5

    float-to-double v4, v4

    aget v6, v0, v1

    aget v7, v2, v1

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    neg-float v5, v4

    if-eq p0, v3, :cond_45

    sget-object v6, Landroid/gesture/Instance;->ORIENTATIONS:[F

    array-length v6, v6

    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v6, :cond_45

    sget-object v8, Landroid/gesture/Instance;->ORIENTATIONS:[F

    aget v8, v8, v7

    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_42

    move v5, v8

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_45
    aget v1, v2, v1

    neg-float v1, v1

    aget v3, v2, v3

    neg-float v3, v3

    invoke-static {v0, v1, v3}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    invoke-static {v0, v5}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    return-object v0
.end method
