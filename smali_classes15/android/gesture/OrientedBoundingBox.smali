.class public Landroid/gesture/OrientedBoundingBox;
.super Ljava/lang/Object;
.source "OrientedBoundingBox.java"


# instance fields
.field public final centerX:F

.field public final centerY:F

.field public final height:F

.field public final orientation:F

.field public final squareness:F

.field public final width:F


# direct methods
.method constructor <init>(FFFFF)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    iput p5, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    iput p2, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    iput p3, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    div-float v0, p4, p5

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_19

    div-float/2addr v1, v0

    iput v1, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    goto :goto_1b

    :cond_19
    iput v0, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    :goto_1b
    return-void
.end method


# virtual methods
.method public toPath()Landroid/graphics/Path;
    .registers 9

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v2, v3

    const/4 v5, 0x1

    aput v2, v1, v5

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    iget v7, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v4

    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v5

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v6, v3

    aput v6, v1, v4

    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v5

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v6, v3

    aput v6, v1, v4

    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v6, v3

    aput v6, v1, v5

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v1, v4

    aget v4, v1, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method
