.class public Landroid/view/animation/SpringInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "SpringInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field private static final DEFAULT_DAMPING:F = 0.95f

.field private static final DEFAULT_RESPONSE:F = 0.6f


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private damping:F

.field private initial:F

.field private k:F

.field private m:F

.field private r:F

.field private response:F

.field private w:F


# direct methods
.method public constructor <init>()V
    .registers 10

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v2, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v5, v4

    mul-double/2addr v2, v5

    double-to-float v2, v2

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->k:F

    iget v3, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    float-to-double v5, v3

    const-wide v7, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v5, v7

    float-to-double v7, v4

    mul-double/2addr v5, v7

    iget v3, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v7, v3

    div-double/2addr v5, v7

    double-to-float v3, v5

    iput v3, p0, Landroid/view/animation/SpringInterpolator;->c:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    mul-float/2addr v3, v3

    sub-float/2addr v4, v3

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Landroid/view/animation/SpringInterpolator;->m:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    div-float/2addr v2, v5

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->w:F

    iget v5, p0, Landroid/view/animation/SpringInterpolator;->c:F

    div-float/2addr v5, v4

    mul-float/2addr v5, v3

    neg-float v3, v5

    iput v3, p0, Landroid/view/animation/SpringInterpolator;->r:F

    iget v4, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    iput v4, p0, Landroid/view/animation/SpringInterpolator;->c1:F

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    sub-float/2addr v4, v3

    div-float/2addr v4, v2

    iput v4, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 10

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->response:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->k:F

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    float-to-double v3, v1

    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v3, v5

    float-to-double v5, v2

    mul-double/2addr v3, v5

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->c:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v1, v1

    sub-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->w:F

    iget v3, p0, Landroid/view/animation/SpringInterpolator;->c:F

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    neg-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->r:F

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->c1:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    iput p1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    iput p2, p0, Landroid/view/animation/SpringInterpolator;->response:F

    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/SpringInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 12

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v1, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v3, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v3, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v4, v3

    mul-double/2addr v1, v4

    double-to-float v1, v1

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->k:F

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    float-to-double v4, v2

    const-wide v6, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v4, v6

    float-to-double v6, v3

    mul-double/2addr v4, v6

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v6, v2

    div-double/2addr v4, v6

    double-to-float v2, v4

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->c:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    mul-float/2addr v2, v2

    sub-float/2addr v3, v2

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->m:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v2, v3

    div-float/2addr v1, v4

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->w:F

    iget v4, p0, Landroid/view/animation/SpringInterpolator;->c:F

    div-float/2addr v4, v3

    mul-float/2addr v4, v2

    neg-float v2, v4

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->r:F

    iget v3, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    iput v3, p0, Landroid/view/animation/SpringInterpolator;->c1:F

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    iput v3, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    const/4 v1, 0x0

    if-eqz p2, :cond_6b

    sget-object v2, Lcom/android/internal/R$styleable;->SpringInterpolator:[I

    invoke-virtual {p2, p3, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_71

    :cond_6b
    sget-object v2, Lcom/android/internal/R$styleable;->SpringInterpolator:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    :goto_71
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->response:F

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    return-void
.end method

.method private refreshParams()V
    .registers 8

    iget v0, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->k:F

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    float-to-double v3, v1

    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v3, v5

    float-to-double v5, v2

    mul-double/2addr v3, v5

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->c:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v1, v1

    sub-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->w:F

    iget v3, p0, Landroid/view/animation/SpringInterpolator;->c:F

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    neg-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->r:F

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    return-void
.end method


# virtual methods
.method public getDamping()F
    .registers 2

    iget v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    return v0
.end method

.method public getInterpolation(F)F
    .registers 10

    iget v0, p0, Landroid/view/animation/SpringInterpolator;->r:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->c1:F

    float-to-double v2, v2

    iget v4, p0, Landroid/view/animation/SpringInterpolator;->w:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    float-to-double v4, v4

    iget v6, p0, Landroid/view/animation/SpringInterpolator;->w:F

    mul-float/2addr v6, p1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getResponse()F
    .registers 2

    iget v0, p0, Landroid/view/animation/SpringInterpolator;->response:F

    return v0
.end method

.method public setDamping(F)Landroid/view/animation/SpringInterpolator;
    .registers 2

    iput p1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    return-object p0
.end method

.method public setResponse(F)Landroid/view/animation/SpringInterpolator;
    .registers 2

    iput p1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    return-object p0
.end method
