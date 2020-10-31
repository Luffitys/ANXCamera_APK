.class public Lmiui/view/springback/SpringBackLayout;
.super Landroid/view/ViewGroup;
.source "SpringBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/springback/SpringBackLayout$OnScrollListener;,
        Lmiui/view/springback/SpringBackLayout$OnSpringListener;
    }
.end annotation


# static fields
.field public static final ANGLE:I = 0x4

.field public static final HORIZONTAL:I = 0x1

.field private static final INVALID_ID:I = -0x1

.field private static final INVALID_POINTER:I = -0x1

.field public static final SPRING_BACK_BOTTOM:I = 0x2

.field public static final SPRING_BACK_TOP:I = 0x1

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpringBackLayout"

.field public static final UNCHECK_ORIENTATION:I = 0x0

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mActivePointerId:I

.field private mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/view/springback/SpringBackLayout$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSpringListener:Lmiui/view/springback/SpringBackLayout$OnSpringListener;

.field private mOriginScrollOrientation:I

.field private final mScreenHeight:I

.field private final mScreenWith:I

.field private mScrollOrientation:I

.field private mScrollState:I

.field private mSpringBackEnable:Z

.field private mSpringBackMode:I

.field private mSpringScroller:Lmiui/view/springback/SpringScroller;

.field private mTarget:Landroid/view/View;

.field private mTargetId:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/springback/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackEnable:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mTouchSlop:I

    sget-object v2, Lmiui/R$styleable;->SpringBackLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lmiui/R$styleable;->SpringBackLayout_scrollableView:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mTargetId:I

    sget v0, Lmiui/R$styleable;->SpringBackLayout_scrollOrientation:I

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    sget v0, Lmiui/R$styleable;->SpringBackLayout_springBackMode:I

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackMode:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lmiui/view/springback/SpringScroller;

    invoke-direct {v0}, Lmiui/view/springback/SpringScroller;-><init>()V

    iput-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    new-instance v0, Lmiui/view/springback/SpringBackLayoutHelper;

    iget v3, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    invoke-direct {v0, p0, v3}, Lmiui/view/springback/SpringBackLayoutHelper;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mScreenWith:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mScreenHeight:I

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->isInternationalBuild()Z

    move-result v4

    if-eqz v4, :cond_74

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackEnable:Z

    :cond_74
    return-void
.end method

.method private checkHorizontalScrollStart()V
    .registers 4

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollX()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eqz v0, :cond_33

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lmiui/view/springback/SpringBackLayout;->obtainTouchDistance(FI)F

    move-result v1

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollX()I

    move-result v2

    if-gez v2, :cond_29

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v2, v1

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    goto :goto_2e

    :cond_29
    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    add-float/2addr v2, v1

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    :goto_2e
    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    goto :goto_35

    :cond_33
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    :goto_35
    return-void
.end method

.method private checkOrientation(Landroid/view/MotionEvent;)V
    .registers 7

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    invoke-virtual {v0, p1}, Lmiui/view/springback/SpringBackLayoutHelper;->checkOrientation(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3e

    if-eq v0, v3, :cond_2e

    if-eq v0, v2, :cond_1d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_19

    goto :goto_77

    :cond_19
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_77

    :cond_1d
    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    if-nez v1, :cond_77

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    iget v1, v1, Lmiui/view/springback/SpringBackLayoutHelper;->mScrollOrientation:I

    if-eqz v1, :cond_77

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    iget v1, v1, Lmiui/view/springback/SpringBackLayoutHelper;->mScrollOrientation:I

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    goto :goto_77

    :cond_2e
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3a

    invoke-direct {p0, v2}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    goto :goto_77

    :cond_3a
    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    goto :goto_77

    :cond_3e
    iget-object v4, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    iget v4, v4, Lmiui/view/springback/SpringBackLayoutHelper;->mInitialDownY:F

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iget-object v4, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    iget v4, v4, Lmiui/view/springback/SpringBackLayoutHelper;->mInitialDownX:F

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iget-object v4, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    iget v4, v4, Lmiui/view/springback/SpringBackLayoutHelper;->mActivePointerId:I

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollY()I

    move-result v4

    if-eqz v4, :cond_5c

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    invoke-virtual {p0, v3}, Lmiui/view/springback/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    goto :goto_6a

    :cond_5c
    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollX()I

    move-result v4

    if-eqz v4, :cond_68

    iput v3, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    invoke-virtual {p0, v3}, Lmiui/view/springback/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    goto :goto_6a

    :cond_68
    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    :goto_6a
    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_73

    invoke-direct {p0, v2}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    goto :goto_77

    :cond_73
    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    nop

    :cond_77
    :goto_77
    return-void
.end method

.method private checkScrollStart(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->checkVerticalScrollStart()V

    goto :goto_a

    :cond_7
    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->checkHorizontalScrollStart()V

    :goto_a
    return-void
.end method

.method private checkVerticalScrollStart()V
    .registers 4

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollY()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eqz v0, :cond_33

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lmiui/view/springback/SpringBackLayout;->obtainTouchDistance(FI)F

    move-result v1

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollY()I

    move-result v2

    if-gez v2, :cond_29

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v2, v1

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    goto :goto_2e

    :cond_29
    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    add-float/2addr v2, v1

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    :goto_2e
    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_35

    :cond_33
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    :goto_35
    return-void
.end method

.method private disallowParentInterceptTouchEvent(Z)V
    .registers 3

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return-void
.end method

.method private dispatchScrollState(I)V
    .registers 5

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    if-eq v0, p1, :cond_1e

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/springback/SpringBackLayout$OnScrollListener;

    invoke-interface {v2, v0, p1}, Lmiui/view/springback/SpringBackLayout$OnScrollListener;->onStateChanged(II)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private ensureTarget()V
    .registers 3

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_18

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mTargetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p0, v0}, Lmiui/view/springback/SpringBackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    goto :goto_18

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid target Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_18
    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_28
    return-void

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fail to get target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isInternationalBuild()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_INTERNATIONAL_BUILD"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move v0, v3

    goto :goto_1d

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpringBackLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return v0
.end method

.method private isTargetScrollOrientation(I)Z
    .registers 3

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isTargetScrollToBottom(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_18

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_12

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v1, v0}, Lmiui/view/springback/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_12
    invoke-virtual {v1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_18
    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private isTargetScrollToTop(I)Z
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1a

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_13

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v1, v0}, Lmiui/view/springback/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_13
    invoke-virtual {v1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1a
    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private moveTarget(FI)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_a

    neg-float v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lmiui/view/springback/SpringBackLayout;->scrollTo(II)V

    goto :goto_f

    :cond_a
    neg-float v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1, v0}, Lmiui/view/springback/SpringBackLayout;->scrollTo(II)V

    :goto_f
    return-void
.end method

.method private obtainDampingDistance(FI)F
    .registers 10

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenHeight:I

    goto :goto_8

    :cond_6
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenWith:I

    :goto_8
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    div-double/2addr v1, v3

    float-to-double v3, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-float v1, v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    return v1
.end method

.method private obtainSpringBackDistance(FI)F
    .registers 6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenHeight:I

    goto :goto_8

    :cond_6
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenWith:I

    :goto_8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {p0, v1, p2}, Lmiui/view/springback/SpringBackLayout;->obtainDampingDistance(FI)F

    move-result v2

    return v2
.end method

.method private obtainTouchDistance(FI)F
    .registers 12

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenHeight:I

    goto :goto_8

    :cond_6
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenWith:I

    :goto_8
    int-to-double v1, v0

    int-to-double v3, v0

    const-wide v5, 0x3fe5555555555555L    # 0.6666666666666666

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-float v5, v0

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method private onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_ae

    const/4 v3, -0x1

    if-eq v1, v0, :cond_a9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_42

    const/4 v0, 0x3

    if-eq v1, v0, :cond_a9

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3d

    goto/16 :goto_d1

    :cond_3d
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_d1

    :cond_42
    iget v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    const-string v5, "SpringBackLayout"

    if-ne v4, v3, :cond_4e

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4e
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_5a

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v6

    if-eqz v6, :cond_6c

    move v2, v0

    :cond_6c
    if-nez v2, :cond_74

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v6

    if-nez v6, :cond_7c

    :cond_74
    if-eqz v2, :cond_93

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_93

    :cond_7c
    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float v5, v4, v6

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_d1

    iget-boolean v6, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_d1

    iput-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    goto :goto_d1

    :cond_93
    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v6, v4

    iget v5, p0, Lmiui/view/springback/SpringBackLayout;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_d1

    iget-boolean v5, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v5, :cond_d1

    iput-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    goto :goto_d1

    :cond_a9
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    iput v3, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto :goto_d1

    :cond_ae
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_bb

    return v2

    :cond_bb
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollX()I

    move-result v4

    if-eqz v4, :cond_ce

    iput-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    goto :goto_d1

    :cond_ce
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    nop

    :cond_d1
    :goto_d1
    iget-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    return v0
.end method

.method private onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v1, 0x0

    return v1

    :cond_13
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result v1

    return v1

    :cond_24
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    move-result v1

    return v1

    :cond_2f
    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    move-result v1

    return v1
.end method

.method private onScrollDownEvent(Landroid/view/MotionEvent;II)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d9

    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_be

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6e

    const/4 v4, 0x3

    if-eq p2, v4, :cond_be

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1b

    const/4 v1, 0x6

    if-eq p2, v1, :cond_16

    goto/16 :goto_e3

    :cond_16
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_e3

    :cond_1b
    iget v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_29

    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_29
    const-string v5, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_4a

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float v6, v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-gez v4, :cond_3f

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3f
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float v2, v1, v6

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_66

    :cond_4a
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float v6, v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-gez v4, :cond_5c

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5c
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float v2, v1, v6

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    :goto_66
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto/16 :goto_e3

    :cond_6e
    iget v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_7c

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7c
    iget-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_e3

    const/4 v2, 0x0

    if-ne p3, v3, :cond_99

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v5, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    sub-float v6, v3, v6

    invoke-direct {p0, v6, p3}, Lmiui/view/springback/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v6

    mul-float/2addr v5, v6

    goto :goto_ae

    :cond_99
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    sub-float v6, v3, v6

    invoke-direct {p0, v6, p3}, Lmiui/view/springback/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v6

    mul-float/2addr v5, v6

    :goto_ae
    const/4 v2, 0x0

    cmpl-float v3, v5, v2

    if-lez v3, :cond_ba

    invoke-virtual {p0, v0}, Lmiui/view/springback/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    invoke-direct {p0, v5, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    goto :goto_e3

    :cond_ba
    invoke-direct {p0, v2, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    return v1

    :cond_be
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_cc

    const-string v3, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_cc
    iget-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_d5

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    :cond_d5
    const/4 v2, -0x1

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_d9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    nop

    :cond_e3
    :goto_e3
    return v0
.end method

.method private onScrollEvent(Landroid/view/MotionEvent;II)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d0

    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_b5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6e

    const/4 v4, 0x3

    if-eq p2, v4, :cond_6d

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1b

    const/4 v1, 0x6

    if-eq p2, v1, :cond_16

    goto/16 :goto_da

    :cond_16
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_da

    :cond_1b
    iget v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_29

    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_29
    const-string v5, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_4a

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float v6, v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-gez v4, :cond_3f

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3f
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float v2, v1, v6

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_66

    :cond_4a
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float v6, v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-gez v4, :cond_5c

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5c
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float v2, v1, v6

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    :goto_66
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto :goto_da

    :cond_6d
    return v1

    :cond_6e
    iget v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_7c

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7c
    iget-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_da

    const/4 v1, 0x0

    if-ne p3, v3, :cond_99

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v5, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    sub-float v5, v2, v5

    invoke-direct {p0, v5, p3}, Lmiui/view/springback/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v5

    mul-float/2addr v3, v5

    goto :goto_ae

    :cond_99
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v5, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    sub-float v5, v2, v5

    invoke-direct {p0, v5, p3}, Lmiui/view/springback/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v5

    mul-float/2addr v3, v5

    :goto_ae
    invoke-virtual {p0, v0}, Lmiui/view/springback/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    invoke-direct {p0, v3, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    goto :goto_da

    :cond_b5
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_c3

    const-string v3, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c3
    iget-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_cc

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    :cond_cc
    const/4 v2, -0x1

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_d0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    nop

    :cond_da
    :goto_da
    return v0
.end method

.method private onScrollUpEvent(Landroid/view/MotionEvent;II)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d4

    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_b9

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6d

    const/4 v4, 0x3

    if-eq p2, v4, :cond_b9

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1b

    const/4 v1, 0x6

    if-eq p2, v1, :cond_16

    goto/16 :goto_de

    :cond_16
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_de

    :cond_1b
    iget v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_29

    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_29
    const-string v5, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_4a

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float v6, v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-gez v4, :cond_3f

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3f
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float v2, v1, v6

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_66

    :cond_4a
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float v6, v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-gez v4, :cond_5c

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5c
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float v2, v1, v6

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    :goto_66
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto :goto_de

    :cond_6d
    iget v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_7b

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7b
    iget-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_de

    if-ne p3, v3, :cond_95

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v5, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr v5, v2

    invoke-direct {p0, v5, p3}, Lmiui/view/springback/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v5

    mul-float/2addr v3, v5

    goto :goto_a8

    :cond_95
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v5, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr v5, v2

    invoke-direct {p0, v5, p3}, Lmiui/view/springback/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v5

    mul-float/2addr v3, v5

    :goto_a8
    const/4 v2, 0x0

    cmpl-float v5, v3, v2

    if-lez v5, :cond_b5

    invoke-virtual {p0, v0}, Lmiui/view/springback/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    neg-float v1, v3

    invoke-direct {p0, v1, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    goto :goto_de

    :cond_b5
    invoke-direct {p0, v2, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    return v1

    :cond_b9
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_c7

    const-string v3, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c7
    iget-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_d0

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    :cond_d0
    const/4 v2, -0x1

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_d4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    nop

    :cond_de
    :goto_de
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_17

    if-nez v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    :cond_17
    return-void
.end method

.method private onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_ae

    const/4 v4, -0x1

    if-eq v1, v3, :cond_a9

    if-eq v1, v0, :cond_42

    const/4 v0, 0x3

    if-eq v1, v0, :cond_a9

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3d

    goto/16 :goto_d1

    :cond_3d
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_d1

    :cond_42
    iget v5, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    const-string v6, "SpringBackLayout"

    if-ne v5, v4, :cond_4e

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4e
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_5a

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5a
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v7

    if-eqz v7, :cond_6c

    move v2, v3

    :cond_6c
    if-nez v2, :cond_74

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-nez v0, :cond_7c

    :cond_74
    if-eqz v2, :cond_93

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    cmpl-float v0, v5, v0

    if-lez v0, :cond_93

    :cond_7c
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float v0, v5, v0

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_d1

    iget-boolean v6, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_d1

    iput-boolean v3, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    iput v5, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_d1

    :cond_93
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v0, v5

    iget v6, p0, Lmiui/view/springback/SpringBackLayout;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_d1

    iget-boolean v6, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_d1

    iput-boolean v3, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    iput v5, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_d1

    :cond_a9
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto :goto_d1

    :cond_ae
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_bb

    return v2

    :cond_bb
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollY()I

    move-result v4

    if-eqz v4, :cond_ce

    iput-boolean v3, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_d1

    :cond_ce
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    nop

    :cond_d1
    :goto_d1
    iget-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    return v0
.end method

.method private onVerticalTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v1, 0x0

    return v1

    :cond_13
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result v1

    return v1

    :cond_24
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    move-result v1

    return v1

    :cond_2f
    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    move-result v1

    return v1
.end method

.method private springBack(FIZ)V
    .registers 13

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mOnSpringListener:Lmiui/view/springback/SpringBackLayout$OnSpringListener;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lmiui/view/springback/SpringBackLayout$OnSpringListener;->onSpringBack()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->forceStop()V

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollX()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollY()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v8}, Lmiui/view/springback/SpringScroller;->scrollByFling(FFFFFIZ)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    if-eqz p3, :cond_2d

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->postInvalidateOnAnimation()V

    :cond_2d
    return-void
.end method

.method private springBack(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lmiui/view/springback/SpringBackLayout;->springBack(FIZ)V

    return-void
.end method

.method private supportBottomSpringBackMode()Z
    .registers 2

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private supportTopSpringBackMode()Z
    .registers 3

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method


# virtual methods
.method public addOnScrollListener(Lmiui/view/springback/SpringBackLayout$OnScrollListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeScroll()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v1}, Lmiui/view/springback/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/view/springback/SpringBackLayout;->scrollTo(II)V

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->postInvalidateOnAnimation()V

    goto :goto_2a

    :cond_26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_f

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    if-ne v0, v1, :cond_f

    invoke-direct {p0, v2}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    :cond_f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v2, :cond_21

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    if-eq v2, v1, :cond_21

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    :cond_21
    return v0
.end method

.method public internalRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v2, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v2}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_19

    if-nez v0, :cond_19

    iget-object v2, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v2}, Lmiui/view/springback/SpringScroller;->forceStop()V

    :cond_19
    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a4

    iget-object v2, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v2}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_a4

    :cond_29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_38

    iget-object v2, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    return v1

    :cond_38
    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v2

    if-nez v2, :cond_45

    return v1

    :cond_45
    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_8b

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->checkOrientation(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v4}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_66

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_66

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_66

    return v1

    :cond_66
    invoke-direct {p0, v5}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_7b

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_7b

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_7b

    return v1

    :cond_7b
    invoke-direct {p0, v4}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v2

    if-nez v2, :cond_87

    invoke-direct {p0, v5}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_8d

    :cond_87
    invoke-direct {p0, v5}, Lmiui/view/springback/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    goto :goto_8d

    :cond_8b
    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    :cond_8d
    :goto_8d
    invoke-direct {p0, v4}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_98
    invoke-direct {p0, v5}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_a3
    return v1

    :cond_a4
    :goto_a4
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getPaddingLeft()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getPaddingTop()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    add-int v7, v2, v4

    add-int v8, v3, v5

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->ensureTarget()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget-object v4, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v4, p1, p2}, Lmiui/view/springback/SpringBackLayout;->measureChild(Landroid/view/View;II)V

    iget-object v4, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-le v2, v4, :cond_26

    iget-object v4, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :cond_26
    iget-object v4, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v3, v4, :cond_34

    iget-object v4, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :cond_34
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_3a

    move v5, v2

    goto :goto_40

    :cond_3a
    iget-object v5, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    :goto_40
    if-ne v1, v4, :cond_44

    move v4, v3

    goto :goto_4a

    :cond_44
    iget-object v4, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_4a
    invoke-virtual {p0, v5, v4}, Lmiui/view/springback/SpringBackLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/springback/SpringBackLayout$OnScrollListener;

    sub-int v2, p1, p3

    sub-int v3, p2, p4

    invoke-interface {v1, p0, v2, v3}, Lmiui/view/springback/SpringBackLayout$OnScrollListener;->onScrolled(Lmiui/view/springback/SpringBackLayout;II)V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v1}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_13

    if-nez v0, :cond_13

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v1}, Lmiui/view/springback/SpringScroller;->forceStop()V

    :cond_13
    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v1}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_4b

    :cond_23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_32

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    return v2

    :cond_32
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onVerticalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_3e
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_4a
    return v2

    :cond_4b
    :goto_4b
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v0, :cond_d

    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d
    return-void
.end method

.method public requestDisallowParentInterceptTouchEvent(Z)V
    .registers 4

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_7
    if-eqz v0, :cond_18

    instance-of v1, v0, Lmiui/view/springback/SpringBackLayout;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v1, p1}, Lmiui/view/springback/SpringBackLayout;->internalRequestDisallowInterceptTouchEvent(Z)V

    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_7

    :cond_18
    return-void
.end method

.method public setOnSpringListener(Lmiui/view/springback/SpringBackLayout$OnSpringListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mOnSpringListener:Lmiui/view/springback/SpringBackLayout$OnSpringListener;

    return-void
.end method

.method public setScrollOrientation(I)V
    .registers 3

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    iput p1, v0, Lmiui/view/springback/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    return-void
.end method

.method public smoothScrollTo(II)V
    .registers 12

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollY()I

    move-result v0

    sub-int v0, p2, v0

    if-eqz v0, :cond_30

    :cond_10
    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->forceStop()V

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollX()I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, p1

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->getScrollY()I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lmiui/view/springback/SpringScroller;->scrollByFling(FFFFFIZ)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    invoke-virtual {p0}, Lmiui/view/springback/SpringBackLayout;->postInvalidateOnAnimation()V

    :cond_30
    return-void
.end method
