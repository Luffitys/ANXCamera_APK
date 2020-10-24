.class public Lmiui/view/SpringScroller;
.super Ljava/lang/Object;
.source ""


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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    return-void
.end method


# virtual methods
.method public final abortAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 12

    iget-object v0, p0, Lmiui/view/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lmiui/view/SpringScroller;->mLastStep:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lmiui/view/SpringScroller;->mFinished:Z

    iget-wide v2, p0, Lmiui/view/SpringScroller;->mEndY:D

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mCurrY:D

    iget-wide v2, p0, Lmiui/view/SpringScroller;->mEndX:D

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mCurrX:D

    return v1

    :cond_1
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

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    iget-wide v3, p0, Lmiui/view/SpringScroller;->mCurrentTime:J

    iput-wide v3, p0, Lmiui/view/SpringScroller;->mStartTime:J

    iget v0, p0, Lmiui/view/SpringScroller;->mOrientation:I

    const/4 v3, 0x2

    iget-object v4, p0, Lmiui/view/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    iget-wide v5, p0, Lmiui/view/SpringScroller;->mVelocity:D

    if-ne v0, v3, :cond_4

    iget-wide v8, p0, Lmiui/view/SpringScroller;->mEndY:D

    iget-wide v10, p0, Lmiui/view/SpringScroller;->mStartY:D

    move v7, v2

    invoke-virtual/range {v4 .. v11}, Lmiui/view/springback/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiui/view/SpringScroller;->mStartY:D

    float-to-double v7, v2

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iput-wide v5, p0, Lmiui/view/SpringScroller;->mCurrY:D

    iput-wide v3, p0, Lmiui/view/SpringScroller;->mVelocity:D

    iget-wide v2, p0, Lmiui/view/SpringScroller;->mEndY:D

    invoke-virtual {p0, v5, v6, v2, v3}, Lmiui/view/SpringScroller;->isAtEquilibrium(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lmiui/view/SpringScroller;->mCurrY:D

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mStartY:D

    goto :goto_2

    :cond_4
    iget-wide v8, p0, Lmiui/view/SpringScroller;->mEndX:D

    iget-wide v10, p0, Lmiui/view/SpringScroller;->mStartX:D

    move v7, v2

    invoke-virtual/range {v4 .. v11}, Lmiui/view/springback/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiui/view/SpringScroller;->mStartX:D

    float-to-double v7, v2

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iput-wide v5, p0, Lmiui/view/SpringScroller;->mCurrX:D

    iput-wide v3, p0, Lmiui/view/SpringScroller;->mVelocity:D

    iget-wide v2, p0, Lmiui/view/SpringScroller;->mEndX:D

    invoke-virtual {p0, v5, v6, v2, v3}, Lmiui/view/SpringScroller;->isAtEquilibrium(DD)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    iput-boolean v1, p0, Lmiui/view/SpringScroller;->mLastStep:Z

    goto :goto_2

    :cond_5
    iget-wide v2, p0, Lmiui/view/SpringScroller;->mCurrX:D

    iput-wide v2, p0, Lmiui/view/SpringScroller;->mStartX:D

    :goto_2
    return v1

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrX()I
    .locals 2

    iget-wide v0, p0, Lmiui/view/SpringScroller;->mCurrX:D

    double-to-int p0, v0

    return p0
.end method

.method public final getCurrY()I
    .locals 2

    iget-wide v0, p0, Lmiui/view/SpringScroller;->mCurrY:D

    double-to-int p0, v0

    return p0
.end method

.method public final getFinalX()I
    .locals 2

    iget-wide v0, p0, Lmiui/view/SpringScroller;->mEndX:D

    double-to-int p0, v0

    return p0
.end method

.method public final getStartX()I
    .locals 2

    iget-wide v0, p0, Lmiui/view/SpringScroller;->mStartX:D

    double-to-int p0, v0

    return p0
.end method

.method public isAtEquilibrium(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFinished()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    return p0
.end method

.method public setFinalX(I)V
    .locals 2

    int-to-double v0, p1

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mEndX:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/view/SpringScroller;->mFinished:Z

    return-void
.end method

.method public startScroll(FFFFF)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/SpringScroller;->mFinished:Z

    iput-boolean v0, p0, Lmiui/view/SpringScroller;->mLastStep:Z

    float-to-double v0, p1

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mStartX:D

    float-to-double v0, p2

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mEndX:D

    float-to-double v0, p3

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mStartY:D

    iput-wide v0, p0, Lmiui/view/SpringScroller;->mOriginStartY:D

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

    cmpg-double p5, v0, v2

    const v0, 0x3eb33333    # 0.35f

    const v1, 0x3f666666    # 0.9f

    if-gtz p5, :cond_0

    new-instance p5, Lmiui/view/springback/SpringOperator;

    invoke-direct {p5, v1, v0}, Lmiui/view/springback/SpringOperator;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p5, Lmiui/view/springback/SpringOperator;

    invoke-direct {p5, v1, v0}, Lmiui/view/springback/SpringOperator;-><init>(FF)V

    :goto_0
    iput-object p5, p0, Lmiui/view/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    sub-float/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Lmiui/view/SpringScroller;->mOrientation:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiui/view/SpringScroller;->mStartTime:J

    return-void
.end method
