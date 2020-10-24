.class public Lmiui/view/animation/BackEaseInOutInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mOvershot:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/animation/BackEaseInOutInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/view/animation/BackEaseInOutInterpolator;->mOvershot:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8

    iget p0, p0, Lmiui/view/animation/BackEaseInOutInterpolator;->mOvershot:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const p0, 0x3fd9cd60

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    const-wide v4, 0x3ff8666666666666L    # 1.525

    if-gez v2, :cond_1

    float-to-double v6, p0

    mul-double/2addr v6, v4

    double-to-float p0, v6

    mul-float v0, p1, p1

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    return v0

    :cond_1
    sub-float/2addr p1, v0

    float-to-double v6, p0

    mul-double/2addr v6, v4

    double-to-float p0, v6

    mul-float v2, p1, p1

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    add-float/2addr v1, p0

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    mul-float/2addr v2, v3

    return v2
.end method
