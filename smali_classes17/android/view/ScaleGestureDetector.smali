.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    nop

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumScalingSpan()I

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-le v1, v2, :cond_3c

    invoke-virtual {p0, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_3c
    const/16 v2, 0x16

    if-le v1, v2, :cond_43

    invoke-virtual {p0, v3}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_43
    return-void
.end method

.method static synthetic access$002(Landroid/view/ScaleGestureDetector;F)F
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return p1
.end method

.method static synthetic access$102(Landroid/view/ScaleGestureDetector;F)F
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return p1
.end method

.method static synthetic access$202(Landroid/view/ScaleGestureDetector;I)I
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return p1
.end method

.method private inAnchoredScaleMode()Z
    .registers 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public getCurrentSpan()F
    .registers 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .registers 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .registers 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .registers 3

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .registers 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .registers 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .registers 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .registers 6

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_20

    :cond_14
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v0, :cond_22

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3b

    goto :goto_40

    :cond_3b
    if-eqz v0, :cond_3f

    add-float/2addr v1, v2

    goto :goto_40

    :cond_3f
    sub-float/2addr v1, v2

    :goto_40
    return v1

    :cond_41
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4b

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    div-float/2addr v1, v0

    :cond_4b
    return v1
.end method

.method public getTimeDelta()J
    .registers 5

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v4, :cond_1f

    iget-object v4, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_2f

    move v5, v6

    goto :goto_30

    :cond_2f
    move v5, v3

    :goto_30
    iget v7, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_39

    if-nez v5, :cond_39

    move v7, v6

    goto :goto_3a

    :cond_39
    move v7, v3

    :goto_3a
    if-eq v2, v6, :cond_44

    const/4 v9, 0x3

    if-eq v2, v9, :cond_44

    if-eqz v7, :cond_42

    goto :goto_44

    :cond_42
    move v9, v3

    goto :goto_45

    :cond_44
    :goto_44
    move v9, v6

    :goto_45
    const/4 v10, 0x0

    if-eqz v2, :cond_4a

    if-eqz v9, :cond_6b

    :cond_4a
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v11, :cond_5a

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_68

    :cond_5a
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_68

    if-eqz v9, :cond_68

    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_68
    :goto_68
    if-eqz v9, :cond_6b

    return v6

    :cond_6b
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v11, :cond_8d

    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_8d

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_8d

    if-nez v9, :cond_8d

    if-eqz v5, :cond_8d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iput v11, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_8d
    const/4 v10, 0x6

    if-eqz v2, :cond_9a

    if-eq v2, v10, :cond_9a

    const/4 v11, 0x5

    if-eq v2, v11, :cond_9a

    if-eqz v7, :cond_98

    goto :goto_9a

    :cond_98
    move v11, v3

    goto :goto_9b

    :cond_9a
    :goto_9a
    move v11, v6

    :goto_9b
    if-ne v2, v10, :cond_9f

    move v10, v6

    goto :goto_a0

    :cond_9f
    move v10, v3

    :goto_a0
    if-eqz v10, :cond_a7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    goto :goto_a8

    :cond_a7
    const/4 v12, -0x1

    :goto_a8
    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v10, :cond_af

    add-int/lit8 v15, v4, -0x1

    goto :goto_b0

    :cond_af
    move v15, v4

    :goto_b0
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v16

    if-eqz v16, :cond_c9

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    iget v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    cmpg-float v18, v18, v3

    if-gez v18, :cond_c5

    iput-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_e2

    :cond_c5
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_e2

    :cond_c9
    const/4 v3, 0x0

    :goto_ca
    if-ge v3, v4, :cond_dc

    if-ne v12, v3, :cond_cf

    goto :goto_d9

    :cond_cf
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v13, v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v14, v6

    :goto_d9
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    :cond_dc
    int-to-float v3, v15

    div-float v8, v13, v3

    int-to-float v3, v15

    div-float v3, v14, v3

    :goto_e2
    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v27, v20

    move/from16 v20, v5

    move/from16 v5, v27

    :goto_ed
    if-ge v5, v4, :cond_10d

    if-ne v12, v5, :cond_f2

    goto :goto_10a

    :cond_f2
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    sub-float v21, v21, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    add-float v6, v6, v21

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    sub-float v21, v21, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    add-float v19, v19, v21

    :goto_10a
    add-int/lit8 v5, v5, 0x1

    goto :goto_ed

    :cond_10d
    int-to-float v5, v15

    div-float v5, v6, v5

    int-to-float v1, v15

    div-float v1, v19, v1

    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v22, v4

    mul-float v4, v5, v21

    move/from16 v23, v5

    mul-float v5, v1, v21

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v21

    if-eqz v21, :cond_130

    move/from16 v21, v5

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v6, v21

    move/from16 v21, v7

    goto :goto_13f

    :cond_130
    move/from16 v24, v6

    move/from16 v21, v7

    float-to-double v6, v4

    move/from16 v25, v9

    move/from16 v26, v10

    float-to-double v9, v5

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    :goto_13f
    iget-boolean v7, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    iput v3, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v9

    if-nez v9, :cond_162

    iget-boolean v9, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v9, :cond_162

    iget v9, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-ltz v9, :cond_158

    if-eqz v11, :cond_162

    :cond_158
    iget-object v9, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v9, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/4 v9, 0x0

    iput-boolean v9, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_162
    if-eqz v11, :cond_172

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_172
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v9

    if-eqz v9, :cond_17b

    iget v9, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    goto :goto_17d

    :cond_17b
    iget v9, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    :goto_17d
    iget-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v10, :cond_1ba

    int-to-float v10, v9

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_1ba

    if-nez v7, :cond_19d

    iget v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move/from16 v17, v1

    iget v1, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v1, v1

    cmpl-float v1, v10, v1

    if-lez v1, :cond_19a

    goto :goto_19f

    :cond_19a
    move v10, v7

    move v1, v8

    goto :goto_1be

    :cond_19d
    move/from16 v17, v1

    :goto_19f
    iput v4, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move v10, v7

    move v1, v8

    iget-wide v7, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v7, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    iget-object v7, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    iput-boolean v7, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    goto :goto_1be

    :cond_1ba
    move/from16 v17, v1

    move v10, v7

    move v1, v8

    :goto_1be
    const/4 v7, 0x2

    if-ne v2, v7, :cond_1ec

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    const/4 v7, 0x1

    iget-boolean v8, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_1d2

    iget-object v8, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    :cond_1d2
    if-eqz v7, :cond_1e8

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v16, v1

    move v8, v2

    iget-wide v1, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v1, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto :goto_1ef

    :cond_1e8
    move/from16 v16, v1

    move v8, v2

    goto :goto_1ef

    :cond_1ec
    move/from16 v16, v1

    move v8, v2

    :goto_1ef
    const/4 v1, 0x1

    return v1
.end method

.method public setQuickScaleEnabled(Z)V
    .registers 6

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz p1, :cond_18

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_18

    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_18
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method
