.class public Lcom/miui/internal/smooth/SmoothPathProvider;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;,
        Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;
    }
.end annotation


# static fields
.field private static final DEFAULT_KSI:F = 0.46f

.field private static final DEFAULT_SMOOTH:F = 0.8f


# instance fields
.field private mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

.field private mKsi:F

.field private mSmooth:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mSmooth:F

    const v0, 0x3eeb851f    # 0.46f

    iput v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mKsi:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    return-void
.end method

.method static synthetic access$000(FFDF)D
    .registers 7

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/internal/smooth/SmoothPathProvider;->smoothForWidth(FFDF)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(FFDF)D
    .registers 7

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/internal/smooth/SmoothPathProvider;->smoothForHeight(FFDF)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(DD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->yForWidth(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(DD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->kForHeight(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(FD)D
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->mForHeight(FD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(FD)D
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->nForHeight(FD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(FD)D
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->pForHeight(FD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(FD)D
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->xForHeight(FD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(DD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->yForHeight(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(D)D
    .registers 4

    invoke-static {p0, p1}, Lcom/miui/internal/smooth/SmoothPathProvider;->thetaForWidth(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(D)D
    .registers 4

    invoke-static {p0, p1}, Lcom/miui/internal/smooth/SmoothPathProvider;->thetaForHeight(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(D)D
    .registers 4

    invoke-static {p0, p1}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(DD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->kForWidth(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(FD)D
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->mForWidth(FD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(FD)D
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->nForWidth(FD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(FD)D
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->pForWidth(FD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(FD)D
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->xForWidth(FD)D

    move-result-wide v0

    return-wide v0
.end method

.method private ensureFourCornerData()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    new-instance v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    new-instance v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    :cond_1e
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    new-instance v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    :cond_2d
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    new-instance v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    :cond_3c
    return-void
.end method

.method private isFourCornerDataValid()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private static isHeightCollapsed(FFFDF)Z
    .registers 14

    float-to-double v0, p0

    add-float v2, p1, p2

    float-to-double v2, v2

    float-to-double v4, p5

    mul-double/2addr v4, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static isWidthCollapsed(FFFDF)Z
    .registers 14

    float-to-double v0, p0

    add-float v2, p1, p2

    float-to-double v2, v2

    float-to-double v4, p5

    mul-double/2addr v4, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static kForHeight(DD)D
    .registers 12

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_7

    return-wide v0

    :cond_7
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v4, p2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    mul-double/2addr v0, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    sub-double/2addr v0, v6

    return-wide v0
.end method

.method private static kForWidth(DD)D
    .registers 12

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_7

    return-wide v0

    :cond_7
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v4, p2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    mul-double/2addr v0, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    sub-double/2addr v0, v6

    return-wide v0
.end method

.method private static mForHeight(FD)D
    .registers 9

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private static mForWidth(FD)D
    .registers 9

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private static nForHeight(FD)D
    .registers 9

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private static nForWidth(FD)D
    .registers 9

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private static pForHeight(FD)D
    .registers 9

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private static pForWidth(FD)D
    .registers 9

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private static radToAngle(D)D
    .registers 6

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static smoothForHeight(FFDF)D
    .registers 11

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    div-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    div-float/2addr v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_1f
    return-wide p2
.end method

.method private static smoothForWidth(FFDF)D
    .registers 11

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    div-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    div-float/2addr v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_1f
    return-wide p2
.end method

.method private static thetaForHeight(D)D
    .registers 6

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static thetaForWidth(D)D
    .registers 6

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static xForHeight(FD)D
    .registers 9

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static xForWidth(FD)D
    .registers 9

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static yForHeight(DD)D
    .registers 6

    mul-double v0, p0, p2

    return-wide v0
.end method

.method private static yForWidth(DD)D
    .registers 6

    mul-double v0, p0, p2

    return-wide v0
.end method


# virtual methods
.method public buildSmoothData(Landroid/graphics/RectF;F)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;FFF)V
    .registers 7

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x5

    aput p2, v0, v1

    const/4 v1, 0x6

    aput p2, v0, v1

    const/4 v1, 0x7

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[F)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[FFF)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->getKsi()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->getSmooth()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v14

    new-instance v8, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    float-to-double v5, v12

    move-object v2, v8

    move v3, v13

    move v4, v14

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;-><init>(FFDF)V

    iput-object v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    if-nez v1, :cond_23

    return-void

    :cond_23
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_14e

    move-object v15, v2

    const/4 v2, 0x0

    :goto_2c
    array-length v3, v15

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_3b

    aget v3, v1, v2

    aput v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3b
    const/4 v2, 0x0

    aget v3, v15, v2

    const/4 v4, 0x1

    aget v5, v15, v4

    const/4 v6, 0x2

    aget v7, v15, v6

    const/4 v8, 0x3

    aget v9, v15, v8

    const/4 v10, 0x4

    aget v16, v15, v10

    const/16 v17, 0x5

    aget v18, v15, v17

    const/16 v19, 0x6

    aget v20, v15, v19

    const/16 v21, 0x7

    aget v22, v15, v21

    add-float v23, v3, v7

    cmpl-float v23, v23, v13

    if-lez v23, :cond_76

    aget v23, v15, v2

    mul-float v23, v23, v13

    aget v24, v15, v2

    aget v25, v15, v6

    add-float v24, v24, v25

    div-float v3, v23, v24

    aget v23, v15, v6

    mul-float v23, v23, v13

    aget v2, v15, v2

    aget v6, v15, v6

    add-float/2addr v2, v6

    div-float v7, v23, v2

    move v6, v7

    move v7, v3

    goto :goto_78

    :cond_76
    move v6, v7

    move v7, v3

    :goto_78
    add-float v2, v9, v18

    cmpl-float v2, v2, v14

    if-lez v2, :cond_96

    aget v2, v15, v8

    mul-float/2addr v2, v14

    aget v3, v15, v8

    aget v23, v15, v17

    add-float v3, v3, v23

    div-float v9, v2, v3

    aget v2, v15, v17

    mul-float/2addr v2, v14

    aget v3, v15, v8

    aget v8, v15, v17

    add-float/2addr v3, v8

    div-float v18, v2, v3

    move/from16 v8, v18

    goto :goto_98

    :cond_96
    move/from16 v8, v18

    :goto_98
    add-float v2, v16, v20

    cmpl-float v2, v2, v13

    if-lez v2, :cond_b8

    aget v2, v15, v10

    mul-float/2addr v2, v13

    aget v3, v15, v10

    aget v17, v15, v19

    add-float v3, v3, v17

    div-float v16, v2, v3

    aget v2, v15, v19

    mul-float/2addr v2, v13

    aget v3, v15, v10

    aget v10, v15, v19

    add-float/2addr v3, v10

    div-float v20, v2, v3

    move/from16 v10, v16

    move/from16 v3, v20

    goto :goto_bc

    :cond_b8
    move/from16 v10, v16

    move/from16 v3, v20

    :goto_bc
    add-float v2, v22, v5

    cmpl-float v2, v2, v14

    if-lez v2, :cond_db

    aget v2, v15, v21

    mul-float/2addr v2, v14

    aget v16, v15, v21

    aget v17, v15, v4

    add-float v16, v16, v17

    div-float v22, v2, v16

    aget v2, v15, v4

    mul-float/2addr v2, v14

    aget v16, v15, v21

    aget v4, v15, v4

    add-float v16, v16, v4

    div-float v5, v2, v16

    move/from16 v4, v22

    goto :goto_dd

    :cond_db
    move/from16 v4, v22

    :goto_dd
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->ensureFourCornerData()V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v17, v7

    move/from16 v18, v8

    float-to-double v7, v12

    const/16 v19, 0x0

    move/from16 v26, v3

    move/from16 v3, v16

    move/from16 v27, v4

    move-object/from16 v4, p1

    move/from16 v16, v5

    move/from16 v5, p3

    move/from16 v28, v6

    move/from16 v6, p4

    move/from16 v29, v18

    move v1, v9

    move v9, v11

    move/from16 v18, v13

    move v13, v10

    move/from16 v10, v19

    invoke-virtual/range {v2 .. v10}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    move/from16 v10, v28

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-double v7, v12

    const/16 v19, 0x1

    move/from16 v20, v10

    move/from16 v10, v19

    invoke-virtual/range {v2 .. v10}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    move/from16 v10, v29

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-double v7, v12

    const/16 v19, 0x2

    move/from16 v21, v10

    move/from16 v10, v19

    invoke-virtual/range {v2 .. v10}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    move/from16 v9, v26

    move/from16 v10, v27

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-double v7, v12

    const/16 v19, 0x3

    move/from16 v22, v9

    move v9, v11

    move/from16 v23, v10

    move/from16 v10, v19

    invoke-virtual/range {v2 .. v10}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    return-void

    nop

    :array_14e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:F

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_25
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    move-object v11, v1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v13, 0x0

    cmpl-double v1, v1, v13

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x3

    if-eqz v1, :cond_f4

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v4, v4, v15

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v5, v5, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v5, v5, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v5, v5, v15

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    :cond_f4
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    invoke-static/range {v18 .. v23}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_156

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_156
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_1d8

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    :cond_1d8
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_29a

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    :cond_29a
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    invoke-static/range {v18 .. v23}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_2fc

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_2fc
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_37e

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    :cond_37e
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_43a

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    :cond_43a
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    invoke-static/range {v18 .. v23}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_49c

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_49c
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_51e

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    :cond_51e
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_5e0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v15, v15, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    :cond_5e0
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    invoke-static/range {v18 .. v23}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_642

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_642
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_6c4

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v5, v6, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v6, v6, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v12, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v12, v12, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v12, v12, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v12, v12, v17

    iget v12, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v12

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    :cond_6c4
    return-void
.end method

.method getKsi()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mKsi:F

    return v0
.end method

.method getSmooth()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mSmooth:F

    return v0
.end method

.method public getSmoothPath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .registers 16

    if-nez p1, :cond_8

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object p1, v0

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    invoke-direct {p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_25

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v2, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:F

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object p1

    :cond_25
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v0, v0, v7

    const/4 v8, 0x0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    iget-object v3, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_68

    :cond_51
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_68
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v9, 0x0

    cmpl-double v0, v0, v9

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_b7
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_ec

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_ec
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v0, v0, v9

    if-eqz v0, :cond_136

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_136
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v1, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-object v3, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_160
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v0, v0, v9

    if-eqz v0, :cond_1aa

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_1aa
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_1df

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1df
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v0, v0, v9

    if-eqz v0, :cond_229

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_229
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_24d

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v1, v2}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_24d
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v0, v0, v9

    if-eqz v0, :cond_297

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_297
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_2cc

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2cc
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v0, v0, v9

    if-eqz v0, :cond_316

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_316
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_340

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-object v3, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_340
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v0, v0, v9

    if-eqz v0, :cond_38a

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_38a
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-wide v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_3bf

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3bf
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v0, v0, v9

    if-eqz v0, :cond_409

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v13

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_409
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-object p1
.end method

.method setKsi(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mKsi:F

    return-void
.end method

.method setSmooth(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mSmooth:F

    return-void
.end method
