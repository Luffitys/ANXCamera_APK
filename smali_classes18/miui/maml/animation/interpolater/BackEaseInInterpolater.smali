.class public Lmiui/maml/animation/interpolater/BackEaseInInterpolater;
.super Ljava/lang/Object;
.source "BackEaseInInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mFactor:F

.field private mFactorExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    iput v0, p0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    iput v0, p0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    iput p1, p0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>([Lmiui/maml/data/Expression;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    iput v0, p0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    if-eqz p1, :cond_12

    array-length v0, p1

    if-lez v0, :cond_12

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;->mFactorExp:Lmiui/maml/data/Expression;

    :cond_12
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    iget-object v0, p0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;->mFactorExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    :cond_b
    mul-float v0, p1, p1

    iget v1, p0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    mul-float/2addr v2, p1

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    return v0
.end method
