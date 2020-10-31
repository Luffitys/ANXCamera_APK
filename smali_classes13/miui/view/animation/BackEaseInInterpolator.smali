.class public Lmiui/view/animation/BackEaseInInterpolator;
.super Ljava/lang/Object;
.source "BackEaseInInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mOvershot:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/animation/BackEaseInInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/view/animation/BackEaseInInterpolator;->mOvershot:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    iget v0, p0, Lmiui/view/animation/BackEaseInInterpolator;->mOvershot:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_a

    const v0, 0x3fd9cd60

    :cond_a
    mul-float v1, p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    return v1
.end method
