.class public Lmiui/view/SpringScroller;
.super Ljava/lang/Object;
.source "SpringScroller.java"


# static fields
.field private static final HORIZONTAL:I = 0x1

.field private static final MAX_DELTA_TIME:F = 0.016f

.field private static final VALUE_THRESHOLD:F = 1.0f

.field private static final VERTICAL:I = 0x2


# instance fields
.field private mCurrX:D

.field private mCurrY:D

.field private mCurrentTime:J

.field private mEndX:D

.field private mEndY:D

.field private mFinished:Z

.field private mLastStep:Z

.field private mOrientation:I

.field private mOriginStartY:D

.field private mSpringOperator:Lmiui/view/springback/SpringOperator;

.field private mStartTime:J

.field private mStartX:D

.field private mStartY:D

.field private mVelocity:D


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    return-void
.end method


# virtual methods
.method public final abortAnimation()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 12

    iget-object v0, p0, Lmiui/view/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    if-eqz v0, :cond_8b

    iget-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    if-eqz v0, :cond_a

    goto/16 :goto_8b

    :cond_a
    iget-boolean v0, p0, Lmiui/view/SpringScroller;->mLastStep:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lmiui/view/SpringScroller;->mFinished:Z

    iget-wide v2, p0, Lmiui/view/SpringScroller;->mEndY:D

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mCurrY:D

    iget-wide v2, p0, Lmiui/view/SpringScroller;->mEndX:D

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mCurrX:D

    return v1

    :cond_1a
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mCurrentTime:J

    iget-wide v4, p0, Lmiui/view/SpringScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const v2, 0x3c83126f    # 0.016f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v2, v0

    :goto_35
    move v0, v2

    iget-wide v2, p0, Lmiui/view/SpringScroller;->mCurrentTime:J

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mStartTime:J

    iget v2, p0, Lmiui/view/SpringScroller;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    iget-object v3, p0, Lmiui/view/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    iget-wide v4, p0, Lmiui/view/SpringScroller;->mVelocity:D

    iget-wide v7, p0, Lmiui/view/SpringScroller;->mEndY:D

    iget-wide v9, p0, Lmiui/view/SpringScroller;->mStartY:D

    move v6, v0

    invoke-virtual/range {v3 .. v10}, Lmiui/view/springback/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/view/SpringScroller;->mStartY:D

    float-to-double v6, v0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iput-wide v4, p0, Lmiui/view/SpringScroller;->mCurrY:D

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mVelocity:D

    iget-wide v6, p0, Lmiui/view/SpringScroller;->mEndY:D

    invoke-virtual {p0, v4, v5, v6, v7}, Lmiui/view/SpringScroller;->isAtEquilibrium(DD)Z

    move-result v4

    if-eqz v4, :cond_60

    iput-boolean v1, p0, Lmiui/view/SpringScroller;->mLastStep:Z

    goto :goto_64

    :cond_60
    iget-wide v4, p0, Lmiui/view/SpringScroller;->mCurrY:D

    iput-wide v4, p0, Lmiui/view/SpringScroller;->mStartY:D

    :goto_64
    goto :goto_8a

    :cond_65
    iget-object v3, p0, Lmiui/view/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    iget-wide v4, p0, Lmiui/view/SpringScroller;->mVelocity:D

    iget-wide v7, p0, Lmiui/view/SpringScroller;->mEndX:D

    iget-wide v9, p0, Lmiui/view/SpringScroller;->mStartX:D

    move v6, v0

    invoke-virtual/range {v3 .. v10}, Lmiui/view/springback/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/view/SpringScroller;->mStartX:D

    float-to-double v6, v0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iput-wide v4, p0, Lmiui/view/SpringScroller;->mCurrX:D

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mVelocity:D

    iget-wide v6, p0, Lmiui/view/SpringScroller;->mEndX:D

    invoke-virtual {p0, v4, v5, v6, v7}, Lmiui/view/SpringScroller;->isAtEquilibrium(DD)Z

    move-result v4

    if-eqz v4, :cond_86

    iput-boolean v1, p0, Lmiui/view/SpringScroller;->mLastStep:Z

    goto :goto_8a

    :cond_86
    iget-wide v4, p0, Lmiui/view/SpringScroller;->mCurrX:D

    iput-wide v4, p0, Lmiui/view/SpringScroller;->mStartX:D

    :goto_8a
    return v1

    :cond_8b
    :goto_8b
    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrX()I
    .registers 3

    iget-wide v0, p0, Lmiui/view/SpringScroller;->mCurrX:D

    double-to-int v0, v0

    return v0
.end method

.method public final getCurrY()I
    .registers 3

    iget-wide v0, p0, Lmiui/view/SpringScroller;->mCurrY:D

    double-to-int v0, v0

    return v0
.end method

.method public final getFinalX()I
    .registers 3

    iget-wide v0, p0, Lmiui/view/SpringScroller;->mEndX:D

    double-to-int v0, v0

    return v0
.end method

.method public final getStartX()I
    .registers 3

    iget-wide v0, p0, Lmiui/view/SpringScroller;->mStartX:D

    double-to-int v0, v0

    return v0
.end method

.method public isAtEquilibrium(DD)Z
    .registers 9

    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final isFinished()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .registers 4

    int-to-double v0, p1

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mEndX:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    return-void
.end method

.method public startScroll(FFFFF)V
    .registers 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    iput-boolean v0, p0, Lmiui/view/SpringScroller;->mLastStep:Z

    float-to-double v0, p1

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mStartX:D

    float-to-double v0, p2

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mEndX:D

    float-to-double v0, p3

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mStartY:D

    float-to-double v2, p3

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mOriginStartY:D

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mCurrY:D

    float-to-double v0, p4

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mEndY:D

    float-to-double v0, p5

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L    # 5000.0

    cmpg-double v0, v0, v2

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f666666    # 0.9f

    if-gtz v0, :cond_36

    new-instance v0, Lmiui/view/springback/SpringOperator;

    invoke-direct {v0, v2, v1}, Lmiui/view/springback/SpringOperator;-><init>(FF)V

    iput-object v0, p0, Lmiui/view/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    goto :goto_3d

    :cond_36
    new-instance v0, Lmiui/view/springback/SpringOperator;

    invoke-direct {v0, v2, v1}, Lmiui/view/springback/SpringOperator;-><init>(FF)V

    iput-object v0, p0, Lmiui/view/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    :goto_3d
    sub-float v0, p4, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4f

    const/4 v0, 0x2

    goto :goto_50

    :cond_4f
    const/4 v0, 0x1

    :goto_50
    iput v0, p0, Lmiui/view/SpringScroller;->mOrientation:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mStartTime:J

    return-void
.end method
