.class public Lmiui/view/animation/CirclularEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gez v1, :cond_18

    const/high16 p0, -0x41000000    # -0.5f

    mul-float/2addr p1, p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v2

    :goto_15
    double-to-float p1, v0

    mul-float/2addr p1, p0

    return p1

    :cond_18
    sub-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr p1, p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    goto :goto_15
.end method
