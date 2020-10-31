.class public Lmiui/view/springback/SpringScroller;
.super Ljava/lang/Object;
.source "SpringScroller.java"


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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .registers 18

    move-object/from16 v7, p0

    iget-object v0, v7, Lmiui/view/springback/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    const/4 v1, 0x0

    if-eqz v0, :cond_b8

    iget-boolean v0, v7, Lmiui/view/springback/SpringScroller;->mFinished:Z

    if-eqz v0, :cond_d

    goto/16 :goto_b8

    :cond_d
    iget v0, v7, Lmiui/view/springback/SpringScroller;->mFirstStep:I

    const/4 v8, 0x1

    if-eqz v0, :cond_26

    iget v2, v7, Lmiui/view/springback/SpringScroller;->mOrientation:I

    if-ne v2, v8, :cond_1d

    int-to-double v2, v0

    iput-wide v2, v7, Lmiui/view/springback/SpringScroller;->mCurrX:D

    int-to-double v2, v0

    iput-wide v2, v7, Lmiui/view/springback/SpringScroller;->mStartX:D

    goto :goto_23

    :cond_1d
    int-to-double v2, v0

    iput-wide v2, v7, Lmiui/view/springback/SpringScroller;->mCurrY:D

    int-to-double v2, v0

    iput-wide v2, v7, Lmiui/view/springback/SpringScroller;->mStartY:D

    :goto_23
    iput v1, v7, Lmiui/view/springback/SpringScroller;->mFirstStep:I

    return v8

    :cond_26
    iget-boolean v0, v7, Lmiui/view/springback/SpringScroller;->mLastStep:Z

    if-eqz v0, :cond_2d

    iput-boolean v8, v7, Lmiui/view/springback/SpringScroller;->mFinished:Z

    return v8

    :cond_2d
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lmiui/view/springback/SpringScroller;->mCurrentTime:J

    iget-wide v2, v7, Lmiui/view/springback/SpringScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const v1, 0x3c83126f    # 0.016f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_47

    goto :goto_48

    :cond_47
    move v1, v0

    :goto_48
    move v5, v1

    iget-wide v0, v7, Lmiui/view/springback/SpringScroller;->mCurrentTime:J

    iput-wide v0, v7, Lmiui/view/springback/SpringScroller;->mStartTime:J

    iget v0, v7, Lmiui/view/springback/SpringScroller;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_85

    iget-object v9, v7, Lmiui/view/springback/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    iget-wide v10, v7, Lmiui/view/springback/SpringScroller;->mVelocity:D

    iget-wide v13, v7, Lmiui/view/springback/SpringScroller;->mEndY:D

    iget-wide v0, v7, Lmiui/view/springback/SpringScroller;->mStartY:D

    move v12, v5

    move-wide v15, v0

    invoke-virtual/range {v9 .. v16}, Lmiui/view/springback/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v9

    iget-wide v0, v7, Lmiui/view/springback/SpringScroller;->mStartY:D

    float-to-double v2, v5

    mul-double/2addr v2, v9

    add-double v1, v0, v2

    iput-wide v1, v7, Lmiui/view/springback/SpringScroller;->mCurrY:D

    iput-wide v9, v7, Lmiui/view/springback/SpringScroller;->mVelocity:D

    iget-wide v3, v7, Lmiui/view/springback/SpringScroller;->mOriginStartY:D

    iget-wide v11, v7, Lmiui/view/springback/SpringScroller;->mEndY:D

    move-object/from16 v0, p0

    move v15, v5

    move-wide v5, v11

    invoke-virtual/range {v0 .. v6}, Lmiui/view/springback/SpringScroller;->isAtEquilibrium(DDD)Z

    move-result v0

    if-eqz v0, :cond_7f

    iput-boolean v8, v7, Lmiui/view/springback/SpringScroller;->mLastStep:Z

    iget-wide v0, v7, Lmiui/view/springback/SpringScroller;->mEndY:D

    iput-wide v0, v7, Lmiui/view/springback/SpringScroller;->mCurrY:D

    goto :goto_83

    :cond_7f
    iget-wide v0, v7, Lmiui/view/springback/SpringScroller;->mCurrY:D

    iput-wide v0, v7, Lmiui/view/springback/SpringScroller;->mStartY:D

    :goto_83
    move v13, v15

    goto :goto_b7

    :cond_85
    move v15, v5

    iget-object v9, v7, Lmiui/view/springback/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    iget-wide v10, v7, Lmiui/view/springback/SpringScroller;->mVelocity:D

    iget-wide v13, v7, Lmiui/view/springback/SpringScroller;->mEndX:D

    iget-wide v0, v7, Lmiui/view/springback/SpringScroller;->mStartX:D

    move v12, v15

    move-wide v15, v0

    invoke-virtual/range {v9 .. v16}, Lmiui/view/springback/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v9

    iget-wide v0, v7, Lmiui/view/springback/SpringScroller;->mStartX:D

    float-to-double v2, v5

    mul-double/2addr v2, v9

    add-double v1, v0, v2

    iput-wide v1, v7, Lmiui/view/springback/SpringScroller;->mCurrX:D

    iput-wide v9, v7, Lmiui/view/springback/SpringScroller;->mVelocity:D

    iget-wide v3, v7, Lmiui/view/springback/SpringScroller;->mOriginStartX:D

    iget-wide v11, v7, Lmiui/view/springback/SpringScroller;->mEndX:D

    move-object/from16 v0, p0

    move v13, v5

    move-wide v5, v11

    invoke-virtual/range {v0 .. v6}, Lmiui/view/springback/SpringScroller;->isAtEquilibrium(DDD)Z

    move-result v0

    if-eqz v0, :cond_b3

    iput-boolean v8, v7, Lmiui/view/springback/SpringScroller;->mLastStep:Z

    iget-wide v0, v7, Lmiui/view/springback/SpringScroller;->mEndX:D

    iput-wide v0, v7, Lmiui/view/springback/SpringScroller;->mCurrX:D

    goto :goto_b7

    :cond_b3
    iget-wide v0, v7, Lmiui/view/springback/SpringScroller;->mCurrX:D

    iput-wide v0, v7, Lmiui/view/springback/SpringScroller;->mStartX:D

    :goto_b7
    return v8

    :cond_b8
    :goto_b8
    return v1
.end method

.method public final forceStop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/springback/SpringScroller;->mFirstStep:I

    return-void
.end method

.method public final getCurrX()I
    .registers 3

    iget-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrX:D

    double-to-int v0, v0

    return v0
.end method

.method public final getCurrY()I
    .registers 3

    iget-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrY:D

    double-to-int v0, v0

    return v0
.end method

.method public isAtEquilibrium(DDD)Z
    .registers 13

    cmpg-double v0, p3, p5

    const/4 v1, 0x1

    if-gez v0, :cond_a

    cmpl-double v0, p1, p5

    if-lez v0, :cond_a

    return v1

    :cond_a
    cmpl-double v0, p3, p5

    if-lez v0, :cond_13

    cmpg-double v0, p1, p5

    if-gez v0, :cond_13

    return v1

    :cond_13
    cmpl-double v0, p3, p5

    if-nez v0, :cond_26

    iget-wide v2, p0, Lmiui/view/springback/SpringScroller;->mOriginVelocity:D

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_26

    return v1

    :cond_26
    sub-double v2, p1, p5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    return v1
.end method

.method public final isFinished()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    return v0
.end method

.method public scrollByFling(FFFFFIZ)V
    .registers 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mFinished:Z

    iput-boolean v0, p0, Lmiui/view/springback/SpringScroller;->mLastStep:Z

    float-to-double v0, p1

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mStartX:D

    float-to-double v0, p1

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mOriginStartX:D

    float-to-double v0, p2

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mEndX:D

    float-to-double v0, p3

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mStartY:D

    float-to-double v2, p3

    iput-wide v2, p0, Lmiui/view/springback/SpringScroller;->mOriginStartY:D

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mCurrY:D

    float-to-double v0, p4

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mEndY:D

    float-to-double v0, p5

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mOriginVelocity:D

    float-to-double v0, p5

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L    # 5000.0

    cmpg-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_3e

    if-eqz p7, :cond_33

    goto :goto_3e

    :cond_33
    new-instance v0, Lmiui/view/springback/SpringOperator;

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v1, v2}, Lmiui/view/springback/SpringOperator;-><init>(FF)V

    iput-object v0, p0, Lmiui/view/springback/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    goto :goto_48

    :cond_3e
    :goto_3e
    new-instance v0, Lmiui/view/springback/SpringOperator;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lmiui/view/springback/SpringOperator;-><init>(FF)V

    iput-object v0, p0, Lmiui/view/springback/SpringScroller;->mSpringOperator:Lmiui/view/springback/SpringOperator;

    :goto_48
    iput p6, p0, Lmiui/view/springback/SpringScroller;->mOrientation:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/springback/SpringScroller;->mStartTime:J

    return-void
.end method
