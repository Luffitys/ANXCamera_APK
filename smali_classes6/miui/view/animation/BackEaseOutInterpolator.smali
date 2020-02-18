.class public Lmiui/view/animation/BackEaseOutInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final OT:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiui/view/animation/BackEaseOutInterpolator;->OT:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    .line 1
    iget p0, p0, Lmiui/view/animation/BackEaseOutInterpolator;->OT:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_a

    const p0, 0x3fd9cd60

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    add-float v2, p0, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p0

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method
