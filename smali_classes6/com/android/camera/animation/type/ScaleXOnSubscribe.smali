.class public Lcom/android/camera/animation/type/ScaleXOnSubscribe;
.super Lcom/android/camera/animation/type/BaseOnSubScribe;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mOriginScaleX:F

.field private mTargetScaleX:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getAnimation()Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/animation/type/ScaleXOnSubscribe;->mOriginScaleX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/animation/type/ScaleXOnSubscribe;->mTargetScaleX:F

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    return-object p0
.end method

.method public setScaleX(FF)Lcom/android/camera/animation/type/ScaleXOnSubscribe;
    .locals 0

    iput p1, p0, Lcom/android/camera/animation/type/ScaleXOnSubscribe;->mOriginScaleX:F

    iput p2, p0, Lcom/android/camera/animation/type/ScaleXOnSubscribe;->mTargetScaleX:F

    return-object p0
.end method
