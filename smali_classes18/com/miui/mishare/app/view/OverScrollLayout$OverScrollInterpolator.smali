.class Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;
.super Ljava/lang/Object;
.source "OverScrollLayout.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/OverScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverScrollInterpolator"
.end annotation


# instance fields
.field range:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;->range:I

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 9

    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;->range:I

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v1, v0

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    div-double/2addr v1, v3

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    float-to-double v3, v0

    add-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;->range:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    return v1
.end method
