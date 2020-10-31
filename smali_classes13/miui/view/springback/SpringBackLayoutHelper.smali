.class public Lmiui/view/springback/SpringBackLayoutHelper;
.super Ljava/lang/Object;
.source "SpringBackLayoutHelper.java"


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field mActivePointerId:I

.field mInitialDownX:F

.field mInitialDownY:F

.field mScrollOrientation:I

.field private mTarget:Landroid/view/ViewGroup;

.field mTargetScrollOrientation:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mActivePointerId:I

    iput-object p1, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    iput p2, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method checkOrientation(Landroid/view/MotionEvent;)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_55

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 v2, 0x3

    if-eq v0, v2, :cond_55

    goto :goto_79

    :cond_11
    iget v1, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mActivePointerId:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_17

    return-void

    :cond_17
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v6, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mInitialDownY:F

    sub-float v6, v4, v6

    iget v7, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mInitialDownX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_44

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_79

    :cond_44
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_51

    goto :goto_52

    :cond_51
    move v2, v3

    :goto_52
    iput v2, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mScrollOrientation:I

    goto :goto_79

    :cond_55
    iput v1, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mScrollOrientation:I

    iget-object v2, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_79

    :cond_5d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_6a

    return-void

    :cond_6a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mInitialDownY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mInitialDownX:F

    iput v1, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mScrollOrientation:I

    nop

    :cond_79
    :goto_79
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p0, p1}, Lmiui/view/springback/SpringBackLayoutHelper;->checkOrientation(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mScrollOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    iget v3, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    if-eq v0, v3, :cond_13

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    :cond_13
    iget-object v0, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return v1
.end method
