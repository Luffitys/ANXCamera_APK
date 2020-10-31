.class public Landroid/view/animation/MiuiTransformation;
.super Landroid/view/animation/Transformation;
.source "MiuiTransformation.java"


# instance fields
.field protected mRadius:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/animation/Transformation;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-super {p0}, Landroid/view/animation/Transformation;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/MiuiTransformation;->mRadius:F

    return-void
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    instance-of v0, p1, Landroid/view/animation/MiuiTransformation;

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/view/animation/MiuiTransformation;->mRadius:F

    move-object v1, p1

    check-cast v1, Landroid/view/animation/MiuiTransformation;

    invoke-virtual {v1}, Landroid/view/animation/MiuiTransformation;->getRadius()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/MiuiTransformation;->mRadius:F

    :cond_13
    return-void
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Landroid/view/animation/MiuiTransformation;->mRadius:F

    return v0
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    instance-of v0, p1, Landroid/view/animation/MiuiTransformation;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Landroid/view/animation/MiuiTransformation;

    invoke-virtual {v0}, Landroid/view/animation/MiuiTransformation;->getRadius()F

    move-result v0

    iput v0, p0, Landroid/view/animation/MiuiTransformation;->mRadius:F

    :cond_10
    return-void
.end method

.method public setRadius(F)V
    .registers 2

    iput p1, p0, Landroid/view/animation/MiuiTransformation;->mRadius:F

    return-void
.end method
