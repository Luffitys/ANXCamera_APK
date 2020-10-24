.class public Lcom/android/camera/ui/zoom/ScaleGestureDetector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mFocusX:F

.field private mFocusY:F

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mSpanSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mSpanSlop:I

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getScaledMinimumScalingSpan(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mMinSpan:I

    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    return p0
.end method

.method public getCurrentSpanX()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    return p0
.end method

.method public getCurrentSpanY()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    return p0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mFocusX:F

    return p0
.end method

.method public getFocusY()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mFocusY:F

    return p0
.end method

.method public getPreviousSpan()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    return p0
.end method

.method public getPreviousSpanX()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanX:F

    return p0
.end method

.method public getPreviousSpanY()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanY:F

    return p0
.end method

.method public getScaleFactor()F
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method protected getScaledMinimumScalingSpan()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mMinSpan:I

    return p0
.end method

.method public getTimeDelta()J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    const/4 v7, 0x0

    if-eqz v2, :cond_2

    if-eqz v6, :cond_4

    :cond_2
    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, p0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)V

    iput-boolean v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInitialSpan:F

    :cond_3
    if-eqz v6, :cond_4

    return v5

    :cond_4
    const/4 v6, 0x6

    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_6

    const/4 v8, 0x5

    if-ne v2, v8, :cond_5

    goto :goto_2

    :cond_5
    move v8, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v8, v5

    :goto_3
    if-ne v2, v6, :cond_7

    move v6, v5

    goto :goto_4

    :cond_7
    move v6, v4

    :goto_4
    if-eqz v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_5

    :cond_8
    const/4 v9, -0x1

    :goto_5
    if-eqz v6, :cond_9

    add-int/lit8 v6, v3, -0x1

    goto :goto_6

    :cond_9
    move v6, v3

    :goto_6
    move v10, v4

    move v11, v7

    move v12, v11

    :goto_7
    if-ge v10, v3, :cond_b

    if-ne v9, v10, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v11, v13

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    int-to-float v6, v6

    div-float/2addr v11, v6

    div-float/2addr v12, v6

    move v13, v4

    move v10, v7

    :goto_9
    if-ge v13, v3, :cond_d

    if-ne v9, v13, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float/2addr v14, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v7, v14

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v10, v14

    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_d
    div-float/2addr v7, v6

    div-float/2addr v10, v6

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v7, v1

    mul-float/2addr v10, v1

    float-to-double v13, v7

    float-to-double v5, v10

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v3, v5

    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    iput v11, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mFocusX:F

    iput v12, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mFocusY:F

    if-eqz v5, :cond_e

    if-eqz v8, :cond_e

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)V

    iput-boolean v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    iput v3, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInitialSpan:F

    :cond_e
    if-eqz v8, :cond_f

    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanX:F

    iput v10, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    iput v10, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanY:F

    iput v3, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    iput v3, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    iput v3, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInitialSpan:F

    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getScaledMinimumScalingSpan()I

    move-result v4

    iget-boolean v6, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    if-nez v6, :cond_11

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_11

    if-nez v5, :cond_10

    iget v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInitialSpan:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_11

    :cond_10
    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanX:F

    iput v10, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    iput v10, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanY:F

    iput v3, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    iput v3, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    iget-wide v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    iput-wide v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevTime:J

    iget-object v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    :cond_11
    const/4 v4, 0x2

    if-ne v2, v4, :cond_13

    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    iput v10, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    iput v3, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v2, p0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)Z

    move-result v2

    goto :goto_b

    :cond_12
    const/4 v2, 0x1

    :goto_b
    if-eqz v2, :cond_13

    iget v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    iput v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanX:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    iput v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanY:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    iput v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    iget-wide v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    iput-wide v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevTime:J

    :cond_13
    const/4 v0, 0x1

    return v0
.end method
