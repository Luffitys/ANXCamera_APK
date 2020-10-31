.class public Landroid/view/animation/RadiusAnimation;
.super Landroid/view/animation/Animation;
.source "RadiusAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadiusAnimation"


# instance fields
.field private mFromRadius:F

.field private mToRadius:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Landroid/view/animation/RadiusAnimation;->mFromRadius:F

    iput p2, p0, Landroid/view/animation/RadiusAnimation;->mToRadius:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    iget v0, p0, Landroid/view/animation/RadiusAnimation;->mFromRadius:F

    instance-of v1, p2, Landroid/view/animation/MiuiTransformation;

    if-eqz v1, :cond_12

    move-object v1, p2

    check-cast v1, Landroid/view/animation/MiuiTransformation;

    iget v2, p0, Landroid/view/animation/RadiusAnimation;->mToRadius:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/animation/MiuiTransformation;->setRadius(F)V

    goto :goto_19

    :cond_12
    const-string v1, "RadiusAnimation"

    const-string v2, "RadiusAnimation must use for MiuiTransformation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
