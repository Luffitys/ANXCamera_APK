.class public Lmiui/view/animation/BounceEaseInInterpolator;
.super Ljava/lang/Object;
.source "BounceEaseInInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    new-instance v0, Lmiui/view/animation/BounceEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/BounceEaseOutInterpolator;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Lmiui/view/animation/BounceEaseOutInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v1, v0

    return v1
.end method
