.class Landroid/inputmethodservice/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# static fields
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .registers 16

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v2, 0x0

    :goto_4
    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    if-ge v2, v5, :cond_1e

    aget-wide v6, v1, v2

    cmp-long v6, v6, v3

    if-nez v6, :cond_10

    goto :goto_1e

    :cond_10
    aget-wide v3, v1, v2

    const-wide/16 v5, 0xc8

    sub-long v5, p3, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1b

    move v0, v2

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1e
    :goto_1e
    if-ne v2, v5, :cond_23

    if-gez v0, :cond_23

    const/4 v0, 0x0

    :cond_23
    if-ne v0, v2, :cond_27

    add-int/lit8 v0, v0, -0x1

    :cond_27
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    if-ltz v0, :cond_40

    add-int/lit8 v8, v0, 0x1

    rsub-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    invoke-static {v6, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v8, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v8, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v0, 0x1

    sub-int/2addr v2, v10

    :cond_40
    aput p1, v6, v2

    aput p2, v7, v2

    aput-wide p3, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_4c

    aput-wide v3, v1, v2

    :cond_4c
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1d

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    return-void
.end method

.method public clear()V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v6, 0x0

    aget v7, v3, v6

    aget v8, v4, v6

    aget-wide v9, v5, v6

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_16
    const/4 v13, 0x4

    if-ge v12, v13, :cond_25

    aget-wide v13, v5, v12

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_25
    :goto_25
    const/4 v13, 0x1

    :goto_26
    if-ge v13, v12, :cond_6b

    aget-wide v15, v5, v13

    sub-long v14, v15, v9

    long-to-int v14, v14

    if-nez v14, :cond_34

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    goto :goto_64

    :cond_34
    aget v15, v3, v13

    sub-float/2addr v15, v7

    move-object/from16 v16, v3

    int-to-float v3, v14

    div-float v3, v15, v3

    move-object/from16 v17, v5

    int-to-float v5, v1

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    cmpl-float v18, v6, v5

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v18, :cond_49

    move v6, v3

    goto :goto_4d

    :cond_49
    add-float v18, v6, v3

    mul-float v6, v18, v5

    :goto_4d
    aget v18, v4, v13

    sub-float v18, v18, v8

    int-to-float v15, v14

    div-float v15, v18, v15

    int-to-float v5, v1

    mul-float/2addr v15, v5

    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-nez v3, :cond_5e

    move v3, v15

    move v11, v3

    goto :goto_64

    :cond_5e
    add-float v3, v11, v15

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    move v11, v3

    :goto_64
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    goto :goto_26

    :cond_6b
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    const/4 v3, 0x0

    cmpg-float v5, v6, v3

    if-gez v5, :cond_7a

    neg-float v3, v2

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_7e

    :cond_7a
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_7e
    iput v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    const/4 v3, 0x0

    cmpg-float v3, v11, v3

    if-gez v3, :cond_8b

    neg-float v3, v2

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_8f

    :cond_8b
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_8f
    iput v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return-void
.end method

.method public getXVelocity()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
