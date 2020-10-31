.class public Lcom/miui/mishare/app/view/OverScrollLayout;
.super Landroid/widget/RelativeLayout;
.source "OverScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/view/OverScrollLayout$PhysicBasedInterpolator;,
        Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x190


# instance fields
.field private abortScroller:Z

.field private canOverScrollHorizontally:Z

.field private canOverScrollVertical:Z

.field private checkScrollDirectionFinish:Z

.field private child:Landroid/view/View;

.field private configuration:Landroid/view/ViewConfiguration;

.field private dealtX:I

.field private dealtY:I

.field private downX:F

.field private downY:F

.field private finishOverScroll:Z

.field private isHorizontallyMove:Z

.field private isOverScrollBottom:Z

.field private isOverScrollLeft:Z

.field private isOverScrollRight:Z

.field private isOverScrollTop:Z

.field private isVerticalMove:Z

.field private mScroller:Landroid/widget/Scroller;

.field private oldX:F

.field private oldY:F

.field private overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

.field private shouldSetScrollerStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->init()V

    return-void
.end method

.method private canChildScrollDown()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method private canChildScrollLeft()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method private canChildScrollRight()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method private canChildScrollUp()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method private canOverScroll()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private checkCanOverScrollDirection()V
    .registers 7

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->checkScrollDirectionFinish:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    instance-of v1, v0, Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2c

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    const/4 v4, -0x1

    instance-of v5, v1, Lcom/android/internal/widget/LinearLayoutManager;

    if-eqz v5, :cond_1f

    move-object v5, v1

    check-cast v5, Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    :cond_1f
    if-nez v4, :cond_23

    move v5, v3

    goto :goto_24

    :cond_23
    move v5, v2

    :goto_24
    iput-boolean v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    if-ne v3, v4, :cond_29

    move v2, v3

    :cond_29
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    goto :goto_42

    :cond_2c
    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_35

    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    goto :goto_42

    :cond_35
    instance-of v0, v0, Lcom/android/internal/widget/ViewPager;

    if-eqz v0, :cond_3e

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    goto :goto_42

    :cond_3e
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    :goto_42
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    if-eqz v0, :cond_52

    new-instance v0, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;-><init>(I)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    goto :goto_5d

    :cond_52
    new-instance v0, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;-><init>(I)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    :goto_5d
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->checkScrollDirectionFinish:Z

    return-void
.end method

.method private checkMoveDirection(FF)V
    .registers 8

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    if-eqz v0, :cond_9

    goto :goto_45

    :cond_9
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    goto :goto_43

    :cond_27
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    if-eqz v0, :cond_43

    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    goto :goto_44

    :cond_43
    :goto_43
    nop

    :goto_44
    return-void

    :cond_45
    :goto_45
    return-void
.end method

.method private getDealt(FF)F
    .registers 5

    sub-float v0, p2, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    sub-float v1, p2, p1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    return v0

    :cond_11
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    sub-float v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private init()V
    .registers 6

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->configuration:Landroid/view/ViewConfiguration;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/mishare/app/view/OverScrollLayout$PhysicBasedInterpolator;

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Lcom/miui/mishare/app/view/OverScrollLayout$PhysicBasedInterpolator;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private isBottomOverScroll(F)Z
    .registers 6

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    :cond_c
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    sub-float/2addr v0, p1

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1b

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollDown()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1
.end method

.method private isChildCanScrollHorizontally()Z
    .registers 2

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollLeft()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollRight()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private isChildCanScrollVertical()Z
    .registers 2

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollDown()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollUp()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private isLeftOverScroll(F)Z
    .registers 6

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    :cond_c
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    sub-float/2addr v0, p1

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1b

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollLeft()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1
.end method

.method private isRightOverScroll(F)Z
    .registers 5

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    sub-float/2addr v0, p1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_15

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollRight()Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private isTopOverScroll(F)Z
    .registers 6

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    :cond_c
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    sub-float/2addr v0, p1

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1b

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollUp()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1
.end method

.method private overScroll(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/view/OverScrollLayout;->smoothScrollTo(II)V

    return-void
.end method

.method private resetHorizontally(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-object p1
.end method

.method private resetVertical(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-object p1
.end method

.method private smoothScrollBy(II)V
    .registers 6

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->invalidate()V

    return-void
.end method

.method private smoothScrollTo(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->smoothScrollBy(II)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->postInvalidate()V

    goto :goto_31

    :cond_1b
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->abortScroller:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->abortScroller:Z

    return-void

    :cond_23
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->finishOverScroll:Z

    if-eqz v0, :cond_31

    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->finishOverScroll:Z

    :cond_31
    :goto_31
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_212

    if-eq v0, v3, :cond_20c

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v0, v4, :cond_21

    if-eq v0, v5, :cond_20c

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1b

    goto/16 :goto_263

    :cond_1b
    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    goto/16 :goto_263

    :cond_21
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScroll()Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_2c
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    if-eqz v4, :cond_11c

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-nez v4, :cond_9f

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-eqz v4, :cond_39

    goto :goto_9f

    :cond_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/miui/mishare/app/view/OverScrollLayout;->checkMoveDirection(FF)V

    iget v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_51

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    return v3

    :cond_51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->isTopOverScroll(F)Z

    move-result v1

    iget-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-nez v2, :cond_72

    if-eqz v1, :cond_72

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    iget v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    :cond_72
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/OverScrollLayout;->isBottomOverScroll(F)Z

    move-result v2

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-nez v4, :cond_95

    if-eqz v2, :cond_95

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    :cond_95
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    goto/16 :goto_263

    :cond_9f
    :goto_9f
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    if-eqz v4, :cond_b2

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    iget-object v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    iget v6, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    iget v7, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x190

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_b2
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_bf

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    return v3

    :cond_bf
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/miui/mishare/app/view/OverScrollLayout;->getDealt(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-eqz v4, :cond_dc

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    if-lez v4, :cond_dc

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    :cond_dc
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-eqz v4, :cond_e6

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    if-gez v4, :cond_e6

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    :cond_e6
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    iget v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    invoke-direct {p0, v4, v5}, Lcom/miui/mishare/app/view/OverScrollLayout;->overScroll(II)V

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-eqz v4, :cond_f9

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    if-nez v4, :cond_f9

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-eqz v4, :cond_105

    :cond_f9
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-eqz v4, :cond_11b

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    if-nez v4, :cond_11b

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-nez v4, :cond_11b

    :cond_105
    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->isChildCanScrollVertical()Z

    move-result v1

    if-nez v1, :cond_112

    return v3

    :cond_112
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/OverScrollLayout;->resetVertical(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_11b
    return v3

    :cond_11c
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    if-eqz v4, :cond_263

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-nez v4, :cond_18f

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v4, :cond_129

    goto :goto_18f

    :cond_129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/miui/mishare/app/view/OverScrollLayout;->checkMoveDirection(FF)V

    iget v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_141

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    return v3

    :cond_141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->isLeftOverScroll(F)Z

    move-result v1

    iget-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-nez v2, :cond_162

    if-eqz v1, :cond_162

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    iget v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    :cond_162
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/OverScrollLayout;->isRightOverScroll(F)Z

    move-result v2

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-nez v4, :cond_185

    if-eqz v2, :cond_185

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    :cond_185
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    goto/16 :goto_263

    :cond_18f
    :goto_18f
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    if-eqz v4, :cond_1a2

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    iget-object v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    iget v6, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    iget v7, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x190

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_1a2
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1af

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    return v3

    :cond_1af
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/miui/mishare/app/view/OverScrollLayout;->getDealt(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-eqz v4, :cond_1cc

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    if-lez v4, :cond_1cc

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    :cond_1cc
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v4, :cond_1d6

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    if-gez v4, :cond_1d6

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    :cond_1d6
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    iget v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    invoke-direct {p0, v4, v5}, Lcom/miui/mishare/app/view/OverScrollLayout;->overScroll(II)V

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-eqz v4, :cond_1e9

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    if-nez v4, :cond_1e9

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v4, :cond_1f5

    :cond_1e9
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v4, :cond_20b

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    if-nez v4, :cond_20b

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-nez v4, :cond_20b

    :cond_1f5
    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->isChildCanScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_202

    return v3

    :cond_202
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/OverScrollLayout;->resetHorizontally(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_20b
    return v3

    :cond_20c
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->finishOverScroll:Z

    invoke-direct {p0, v2, v2}, Lcom/miui/mishare/app/view/OverScrollLayout;->smoothScrollTo(II)V

    goto :goto_263

    :cond_212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iget-object v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    if-nez v4, :cond_227

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    goto :goto_230

    :cond_227
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->abortScroller:Z

    iget-object v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    :goto_230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    iget-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    if-nez v1, :cond_245

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    goto :goto_24e

    :cond_245
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->abortScroller:Z

    iget-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :goto_24e
    iget-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-nez v1, :cond_268

    iget-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-nez v1, :cond_268

    iget-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-nez v1, :cond_268

    iget-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v1, :cond_25f

    goto :goto_268

    :cond_25f
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->checkCanOverScrollDirection()V

    nop

    :cond_263
    :goto_263
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_268
    :goto_268
    return v3
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_12
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method
