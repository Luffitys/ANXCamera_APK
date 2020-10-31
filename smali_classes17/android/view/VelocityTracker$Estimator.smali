.class public final Landroid/view/VelocityTracker$Estimator;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Estimator"
.end annotation


# static fields
.field private static final MAX_DEGREE:I = 0x4


# instance fields
.field public confidence:F

.field public degree:I

.field public final xCoeff:[F

.field public final yCoeff:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    return-void
.end method

.method private estimate(F[F)F
    .registers 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt v2, v3, :cond_10

    aget v3, p2, v2

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    mul-float/2addr v1, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return v0
.end method


# virtual methods
.method public estimateX(F)F
    .registers 3

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method

.method public estimateY(F)F
    .registers 3

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method

.method public getXCoeff(I)F
    .registers 3

    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt p1, v0, :cond_9

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    aget v0, v0, p1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getYCoeff(I)F
    .registers 3

    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt p1, v0, :cond_9

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    aget v0, v0, p1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
