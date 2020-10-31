.class public final Landroid/view/WindowInsetsAnimation;
.super Ljava/lang/Object;
.source "WindowInsetsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsetsAnimation$Callback;,
        Landroid/view/WindowInsetsAnimation$Bounds;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private final mDurationMillis:J

.field private mFraction:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mTypeMask:I


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    iput-object p2, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    return v0
.end method

.method public getDurationMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    return-wide v0
.end method

.method public getFraction()F
    .registers 2

    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return v0
.end method

.method public getInterpolatedFraction()F
    .registers 3

    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_b

    iget v1, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_b
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getTypeMask()I
    .registers 2

    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    return v0
.end method

.method public setAlpha(F)V
    .registers 2

    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    return-void
.end method

.method public setFraction(F)V
    .registers 2

    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return-void
.end method
