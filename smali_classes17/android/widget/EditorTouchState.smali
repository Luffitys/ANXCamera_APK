.class public Landroid/widget/EditorTouchState;
.super Ljava/lang/Object;
.source "EditorTouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditorTouchState$MultiTapStatus;
    }
.end annotation


# instance fields
.field private mIsDragCloseToVertical:Z

.field private mIsOnHandle:Z

.field private mLastDownMillis:J

.field private mLastDownX:F

.field private mLastDownY:F

.field private mLastUpMillis:J

.field private mLastUpX:F

.field private mLastUpY:F

.field private mMovedEnoughForDrag:Z

.field private mMultiTapInSameArea:Z

.field private mMultiTapStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    return-void
.end method

.method public static isDistanceWithin(FFFFI)Z
    .registers 9

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    mul-int v3, p4, p4

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3
.end method


# virtual methods
.method public getLastDownX()F
    .registers 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    return v0
.end method

.method public getLastDownY()F
    .registers 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    return v0
.end method

.method public getLastUpX()F
    .registers 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    return v0
.end method

.method public getLastUpY()F
    .registers 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    return v0
.end method

.method public isDoubleTap()Z
    .registers 3

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isDragCloseToVertical()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mIsDragCloseToVertical:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isMovedEnoughForDrag()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    return v0
.end method

.method public isMultiTap()Z
    .registers 3

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isMultiTapInSameArea()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOnHandle()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return v0
.end method

.method public isTripleClick()Z
    .registers 3

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setIsOnHandle(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return-void
.end method

.method public update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V
    .registers 15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_6f

    const/16 v5, 0x2002

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    sub-long/2addr v6, v8

    iget-wide v10, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    sub-long/2addr v8, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v6, v10

    if-gtz v10, :cond_54

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gtz v10, :cond_54

    iget v10, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-eq v10, v3, :cond_34

    if-ne v10, v2, :cond_54

    if-eqz v5, :cond_54

    :cond_34
    iget v10, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-ne v10, v3, :cond_3b

    iput v2, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    goto :goto_3d

    :cond_3b
    iput v1, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    :goto_3d
    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    iget v2, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v11

    invoke-static {v1, v2, v3, v10, v11}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    goto :goto_58

    :cond_54
    iput v3, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    :goto_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mIsDragCloseToVertical:Z

    goto :goto_d4

    :cond_6f
    if-ne v0, v3, :cond_88

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mIsDragCloseToVertical:Z

    goto :goto_d4

    :cond_88
    if-ne v0, v2, :cond_c4

    iget-boolean v1, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-nez v1, :cond_d4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    sub-float/2addr v2, v5

    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v6, v5

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    mul-int v8, v7, v7

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-lez v8, :cond_ae

    move v8, v3

    goto :goto_af

    :cond_ae
    move v8, v4

    :goto_af
    iput-boolean v8, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-eqz v8, :cond_c3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_c0

    goto :goto_c1

    :cond_c0
    move v3, v4

    :goto_c1
    iput-boolean v3, p0, Landroid/widget/EditorTouchState;->mIsDragCloseToVertical:Z

    :cond_c3
    goto :goto_d4

    :cond_c4
    if-ne v0, v1, :cond_d4

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iput v4, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mIsDragCloseToVertical:Z

    :cond_d4
    :goto_d4
    return-void
.end method
