.class Landroid/graphics/ColorSpace$Connector$Rgb;
.super Landroid/graphics/ColorSpace$Connector;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rgb"
.end annotation


# instance fields
.field private final mDestination:Landroid/graphics/ColorSpace$Rgb;

.field private final mSource:Landroid/graphics/ColorSpace$Rgb;

.field private final mTransform:[F


# direct methods
.method constructor <init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V
    .registers 12

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[FLandroid/graphics/ColorSpace$1;)V

    iput-object p1, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {p1, p2, p3}, Landroid/graphics/ColorSpace$Connector$Rgb;->computeTransform(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mTransform:[F

    return-void
.end method

.method private static computeTransform(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)[F
    .registers 11

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v0

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v1

    # invokes: Landroid/graphics/ColorSpace;->compare([F[F)Z
    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->access$1700([F[F)Z

    move-result v0

    if-eqz v0, :cond_1b

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$2700(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v0

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mTransform:[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v0

    return-object v0

    :cond_1b
    # getter for: Landroid/graphics/ColorSpace$Rgb;->mTransform:[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v0

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$2700(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v1

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v2

    # invokes: Landroid/graphics/ColorSpace;->xyYToXyz([F)[F
    invoke-static {v2}, Landroid/graphics/ColorSpace;->access$2300([F)[F

    move-result-object v2

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v3

    # invokes: Landroid/graphics/ColorSpace;->xyYToXyz([F)[F
    invoke-static {v3}, Landroid/graphics/ColorSpace;->access$2300([F)[F

    move-result-object v3

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v4

    sget-object v5, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    # invokes: Landroid/graphics/ColorSpace;->compare([F[F)Z
    invoke-static {v4, v5}, Landroid/graphics/ColorSpace;->access$1700([F[F)Z

    move-result v4

    const/4 v5, 0x3

    if-nez v4, :cond_58

    sget-object v4, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v4, v4, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    # getter for: Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1000()[F

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    # invokes: Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F
    invoke-static {v4, v2, v6}, Landroid/graphics/ColorSpace;->access$2800([F[F[F)[F

    move-result-object v4

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mTransform:[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v4, v6}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v0

    :cond_58
    # getter for: Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v4

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    # invokes: Landroid/graphics/ColorSpace;->compare([F[F)Z
    invoke-static {v4, v6}, Landroid/graphics/ColorSpace;->access$1700([F[F)Z

    move-result v4

    if-nez v4, :cond_80

    sget-object v4, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v4, v4, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    # getter for: Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1000()[F

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    # invokes: Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F
    invoke-static {v4, v3, v6}, Landroid/graphics/ColorSpace;->access$2800([F[F[F)[F

    move-result-object v4

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mTransform:[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v4, v6}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v6

    # invokes: Landroid/graphics/ColorSpace;->inverse3x3([F)[F
    invoke-static {v6}, Landroid/graphics/ColorSpace;->access$1200([F)[F

    move-result-object v1

    :cond_80
    sget-object v4, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    if-ne p2, v4, :cond_a2

    new-array v4, v5, [F

    const/4 v5, 0x0

    aget v6, v2, v5

    aget v7, v3, v5

    div-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    aget v6, v2, v5

    aget v7, v3, v5

    div-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    aget v6, v2, v5

    aget v7, v3, v5

    div-float/2addr v6, v7

    aput v6, v4, v5

    # invokes: Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F
    invoke-static {v4, v0}, Landroid/graphics/ColorSpace;->access$2900([F[F)[F

    move-result-object v0

    :cond_a2
    invoke-static {v1, v0}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public transform([F)[F
    .registers 8

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2500(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2500(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    const/4 v2, 0x1

    aget v3, p1, v2

    float-to-double v3, v3

    invoke-interface {v0, v3, v4}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2500(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    const/4 v3, 0x2

    aget v4, p1, v3

    float-to-double v4, v4

    invoke-interface {v0, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, p1, v3

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mTransform:[F

    # invokes: Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F
    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->access$1500([F[F)[F

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2600(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v4, p1, v1

    float-to-double v4, v4

    invoke-interface {v0, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2600(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v2

    float-to-double v4, v1

    invoke-interface {v0, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    # getter for: Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2600(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v3

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v3

    return-object p1
.end method
