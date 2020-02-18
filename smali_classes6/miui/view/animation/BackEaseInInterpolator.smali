.class public Lmiui/view/animation/BackEaseInInterpolator;
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
    invoke-direct {p0, v0}, Lmiui/view/animation/BackEaseInInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiui/view/animation/BackEaseInInterpolator;->OT:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    .line 1
    iget p0, p0, Lmiui/view/animation/BackEaseInInterpolator;->OT:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_a

    const p0, 0x3fd9cd60

    :cond_a
    mul-float v0, p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    return v0
.end method
