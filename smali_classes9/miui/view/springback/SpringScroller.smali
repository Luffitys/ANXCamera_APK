.class public Lmiui/view/springback/SpringScroller;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_DELTA_TIME:F = 0.016f

.field private static final VALUE_THRESHOLD:F = 1.0f


# instance fields
.field private mCurrX:D

.field private mCurrY:D

.field private mCurrentTime:J

.field private mEndX:D

.field private mEndY:D

.field private mFinished:Z

.field private mFirstStep:I

.field private mLastStep:Z

.field private mOrientation:I

.field private mOriginStartX:D

.field private mOriginStartY:D

.field private mOriginVelocity:D

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

    iput-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 14

    iget-object v0, p0, Lmiui/view/springback/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lmiui/view/springback/SpringScroller;->mFirstStep:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lmiui/view/springback/SpringScroller;->mOrientation:I

    if-ne v3, v2, :cond_1

    int-to-double v3, v0

    iput-wide v3, p0, Lmiui/view/springback/SpringScroller;->mCurrX:D

    int-to-double v3, v0

    iput-wide v3, p0, Lmiui/view/springback/SpringScroller;->mStartX:D

    goto :goto_0

    :cond_1
    int-to-double v3, v0

    iput-wide v3, p0, Lmiui/view/springback/SpringScroller;->mCurrY:D

    int-to-double v3, v0

    iput-wide v3, p0, Lmiui/view/springback/SpringScroller;->mStartY:D

    :goto_0
    iput v1, p0, Lmiui/view/springback/SpringScroller;->mFirstStep:I

    return v2

    :cond_2
    iget-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mLastStep:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    return v2

    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrentTime:J

    iget-wide v3, p0, Lmiui/view/springback/SpringScroller;->mStartTime:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const v1, 0x3c83126f    # 0.016f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    iget-wide v3, p0, Lmiui/view/springback/SpringScroller;->mCurrentTime:J

    iput-wide v3, p0, Lmiui/view/springback/SpringScroller;->mStartTime:J

    iget v0, p0, Lmiui/view/springback/SpringScroller;->mOrientation:I

    const/4 v3, 0x2

    iget-object v4, p0, Lmiui/view/springback/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    iget-wide v5, p0, Lmiui/view/springback/SpringScroller;->mVelocity:D

    if-ne v0, v3, :cond_6

    iget-wide v8, p0, Lmiui/view/springback/SpringScroller;->mEndY:D

    iget-wide v10, p0, Lmiui/view/springback/SpringScroller;->mStartY:D

    move v7, v1

    invoke-virtual/range {v4 .. v11}, Lmiui/view/springback/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiui/view/springback/SpringScroller;->mStartY:D

    float-to-double v0, v1

    mul-double/2addr v0, v3

    add-double v8, v5, v0

    iput-wide v8, p0, Lmiui/view/springback/SpringScroller;->mCurrY:D

    iput-wide v3, p0, Lmiui/view/springback/SpringScroller;->mVelocity:D

    iget-wide v10, p0, Lmiui/view/springback/SpringScroller;->mOriginStartY:D

    iget-wide v12, p0, Lmiui/view/springback/SpringScroller;->mEndY:D

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lmiui/view/springback/SpringScroller;->isAtEquilibrium(DDD)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lmiui/view/springback/SpringScroller;->mLastStep:Z

    iget-wide v0, p0, Lmiui/view/springback/SpringScroller;->mEndY:D

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrY:D

    goto :goto_2

    :cond_5
    iget-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrY:D

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mStartY:D

    goto :goto_2

    :cond_6
    iget-wide v8, p0, Lmiui/view/springback/SpringScroller;->mEndX:D

    iget-wide v10, p0, Lmiui/view/springback/SpringScroller;->mStartX:D

    move v7, v1

    invoke-virtual/range {v4 .. v11}, Lmiui/view/springback/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiui/view/springback/SpringScroller;->mStartX:D

    float-to-double v0, v1

    mul-double/2addr v0, v3

    add-double v8, v5, v0

    iput-wide v8, p0, Lmiui/view/springback/SpringScroller;->mCurrX:D

    iput-wide v3, p0, Lmiui/view/springback/SpringScroller;->mVelocity:D

    iget-wide v10, p0, Lmiui/view/springback/SpringScroller;->mOriginStartX:D

    iget-wide v12, p0, Lmiui/view/springback/SpringScroller;->mEndX:D

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lmiui/view/springback/SpringScroller;->isAtEquilibrium(DDD)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lmiui/view/springback/SpringScroller;->mLastStep:Z

    iget-wide v0, p0, Lmiui/view/springback/SpringScroller;->mEndX:D

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrX:D

    goto :goto_2

    :cond_7
    iget-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrX:D

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mStartX:D

    :goto_2
    return v2

    :cond_8
    :goto_3
    return v1
.end method

.method public final forceStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/springback/SpringScroller;->mFirstStep:I

    return-void
.end method

.method public final getCurrX()I
    .locals 2

    iget-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrX:D

    double-to-int p0, v0

    return p0
.end method

.method public final getCurrY()I
    .locals 2

    iget-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrY:D

    double-to-int p0, v0

    return p0
.end method

.method public isAtEquilibrium(DDD)Z
    .locals 4

    cmpg-double v0, p3, p5

    const/4 v1, 0x1

    if-gez v0, :cond_0

    cmpl-double v0, p1, p5

    if-lez v0, :cond_0

    return v1

    :cond_0
    cmpl-double p3, p3, p5

    if-lez p3, :cond_1

    cmpg-double p4, p1, p5

    if-gez p4, :cond_1

    return v1

    :cond_1
    if-nez p3, :cond_2

    iget-wide p3, p0, Lmiui/view/springback/SpringScroller;->mOriginVelocity:D

    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    move-result-wide p3

    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    cmpl-double p0, p3, v2

    if-eqz p0, :cond_2

    return v1

    :cond_2
    sub-double/2addr p1, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, p2

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isFinished()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    return p0
.end method

.method public scrollByFling(FFFFFIZ)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    iput-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mLastStep:Z

    float-to-double v0, p1

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mStartX:D

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mOriginStartX:D

    float-to-double p1, p2

    iput-wide p1, p0, Lmiui/view/springback/SpringScroller;->mEndX:D

    float-to-double p1, p3

    iput-wide p1, p0, Lmiui/view/springback/SpringScroller;->mStartY:D

    iput-wide p1, p0, Lmiui/view/springback/SpringScroller;->mOriginStartY:D

    double-to-int p1, p1

    int-to-double p1, p1

    iput-wide p1, p0, Lmiui/view/springback/SpringScroller;->mCurrY:D

    float-to-double p1, p4

    iput-wide p1, p0, Lmiui/view/springback/SpringScroller;->mEndY:D

    float-to-double p1, p5

    iput-wide p1, p0, Lmiui/view/springback/SpringScroller;->mOriginVelocity:D

    iput-wide p1, p0, Lmiui/view/springback/SpringScroller;->mVelocity:D

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p3, 0x40b3880000000000L    # 5000.0

    cmpg-double p1, p1, p3

    const/high16 p2, 0x3f800000    # 1.0f

    if-lez p1, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmiui/view/springback/SpringOperator;

    const p3, 0x3f0ccccd    # 0.55f

    invoke-direct {p1, p2, p3}, Lmiui/view/springback/SpringOperator;-><init>(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Lmiui/view/springback/SpringOperator;

    const p3, 0x3ecccccd    # 0.4f

    invoke-direct {p1, p2, p3}, Lmiui/view/springback/SpringOperator;-><init>(FF)V

    :goto_1
    iput-object p1, p0, Lmiui/view/springback/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    iput p6, p0, Lmiui/view/springback/SpringScroller;->mOrientation:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiui/view/springback/SpringScroller;->mStartTime:J

    return-void
.end method
