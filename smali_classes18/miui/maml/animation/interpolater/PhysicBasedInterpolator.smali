.class public Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;
.super Ljava/lang/Object;
.source "PhysicBasedInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private k:F

.field private m:F

.field private mDamping:F

.field private mDampingExp:Lmiui/maml/data/Expression;

.field private mInitial:F

.field private mNeedEvaluate:Z

.field private mResponse:F

.field private mResponseExp:Lmiui/maml/data/Expression;

.field private r:F

.field private w:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    iput p1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    iput p2, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    return-void
.end method

.method public constructor <init>([Lmiui/maml/data/Expression;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    if-eqz p1, :cond_2b

    array-length v1, p1

    if-lez v1, :cond_24

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lmiui/maml/data/Expression;

    :cond_24
    array-length v1, p1

    if-le v1, v0, :cond_2b

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lmiui/maml/data/Expression;

    :cond_2b
    return-void
.end method

.method private evaluate()V
    .registers 8

    iget-boolean v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    if-eqz v0, :cond_53

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    iget v2, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->k:F

    const-wide v3, 0x402921fb54442d18L    # 12.566370614359172

    iget v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    float-to-double v5, v1

    mul-double/2addr v5, v3

    float-to-double v3, v2

    mul-double/2addr v5, v3

    iget v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    float-to-double v3, v1

    div-double/2addr v5, v3

    double-to-float v1, v5

    iput v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v1, v1

    sub-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    iget v3, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    neg-float v1, v3

    iput v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    const/4 v2, 0x0

    iget v3, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    :cond_53
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 10

    iget-object v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lmiui/maml/data/Expression;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_14

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    iput-boolean v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    :cond_14
    iget-object v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_27

    iput v0, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    iput-boolean v1, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    :cond_27
    invoke-direct {p0}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->evaluate()V

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    iget v2, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    float-to-double v2, v2

    iget v4, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    float-to-double v4, v4

    iget v6, p0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

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
