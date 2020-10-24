.class public Lmiui/view/springback/SpringBackLayout;
.super Landroid/view/ViewGroup;
.source ""


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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/springback/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

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

    move-result-object p2

    sget v2, Lmiui/R$styleable;->SpringBackLayout_scrollableView:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mTargetId:I

    sget v0, Lmiui/R$styleable;->SpringBackLayout_scrollOrientation:I

    const/4 v2, 0x2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    sget v0, Lmiui/R$styleable;->SpringBackLayout_springBackMode:I

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackMode:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lmiui/view/springback/SpringScroller;

    invoke-direct {p2}, Lmiui/view/springback/SpringScroller;-><init>()V

    iput-object p2, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    new-instance p2, Lmiui/view/springback/SpringBackLayoutHelper;

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    invoke-direct {p2, p0, v0}, Lmiui/view/springback/SpringBackLayoutHelper;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p2, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mScreenWith:I

    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mScreenHeight:I

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->isInternationalBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackEnable:Z

    :cond_0
    return-void
.end method

.method private checkHorizontalScrollStart()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lmiui/view/springback/SpringBackLayout;->obtainTouchDistance(FI)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    if-gez v1, :cond_1

    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    add-float/2addr v1, v0

    :goto_1
    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    goto :goto_2

    :cond_2
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    :goto_2
    return-void
.end method

.method private checkOrientation(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    invoke-virtual {v0, p1}, Lmiui/view/springback/SpringBackLayoutHelper;->checkOrientation(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_1
    iget p1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    if-nez p1, :cond_8

    iget-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    iget p1, p1, Lmiui/view/springback/SpringBackLayoutHelper;->mScrollOrientation:I

    if-eqz p1, :cond_8

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    iget p1, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    invoke-direct {p0, v2}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    iget v0, p1, Lmiui/view/springback/SpringBackLayoutHelper;->mInitialDownY:F

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iget v0, p1, Lmiui/view/springback/SpringBackLayoutHelper;->mInitialDownX:F

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iget p1, p1, Lmiui/view/springback/SpringBackLayoutHelper;->mActivePointerId:I

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_5

    iput v2, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    :goto_0
    invoke-virtual {p0, v3}, Lmiui/view/springback/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_6

    iput v3, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    goto :goto_0

    :cond_6
    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    :goto_1
    iget p1, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    invoke-direct {p0, v2}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private checkScrollStart(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->checkVerticalScrollStart()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->checkHorizontalScrollStart()V

    :goto_0
    return-void
.end method

.method private checkVerticalScrollStart()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lmiui/view/springback/SpringBackLayout;->obtainTouchDistance(FI)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    if-gez v1, :cond_1

    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    add-float/2addr v1, v0

    :goto_1
    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_2

    :cond_2
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    :goto_2
    return-void
.end method

.method private disallowParentInterceptTouchEvent(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private dispatchScrollState(I)V
    .locals 2

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    iget-object p0, p0, Lmiui/view/springback/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/springback/SpringBackLayout$OnScrollListener;

    invoke-interface {v1, v0, p1}, Lmiui/view/springback/SpringBackLayout$OnScrollListener;->onStateChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureTarget()V
    .locals 2

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mTargetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid target Id"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "fail to get target"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isInternationalBuild()Z
    .locals 1

    :try_start_0
    const-string p0, "miui.os.Build"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "IS_INTERNATIONAL_BUILD"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SpringBackLayout"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTargetScrollOrientation(I)Z
    .locals 0

    iget p0, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTargetScrollToBottom(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-object p0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    if-ne p1, v1, :cond_1

    instance-of p1, p0, Landroid/widget/ListView;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/widget/ListView;

    invoke-static {p0, v0}, Lmiui/view/springback/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private isTargetScrollToTop(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    iget-object p0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    if-ne p1, v1, :cond_1

    instance-of p1, p0, Landroid/widget/ListView;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/widget/ListView;

    invoke-static {p0, v0}, Lmiui/view/springback/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private moveTarget(FI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    neg-float p1, p1

    float-to-int p1, p1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method private obtainDampingDistance(FI)F
    .locals 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget p0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenWith:I

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v2, v0

    add-double/2addr v2, p1

    double-to-float p1, v2

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1
.end method

.method private obtainSpringBackDistance(FI)F
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenWith:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1, p2}, Lmiui/view/springback/SpringBackLayout;->obtainDampingDistance(FI)F

    move-result p0

    return p0
.end method

.method private obtainTouchDistance(FI)F
    .locals 6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget p0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lmiui/view/springback/SpringBackLayout;->mScreenWith:I

    :goto_0
    int-to-double v0, p0

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-float p0, p0

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    float-to-double p0, p0

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method private onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v3, -0x1

    if-eq v1, v0, :cond_b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_b

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_4
    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    const-string v4, "SpringBackLayout"

    if-ne v1, v3, :cond_5

    const-string p0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    :goto_0
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v2, v0

    :cond_7
    if-nez v2, :cond_8

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    if-eqz v2, :cond_a

    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_a

    :cond_9
    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float v1, p1, v1

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    iget-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_f

    goto :goto_1

    :cond_a
    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v1, p1

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    iget-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_f

    :goto_1
    iput-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_2

    :cond_b
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    iput v3, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto :goto_3

    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_d

    return v2

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    iget p1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    :goto_2
    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    goto :goto_3

    :cond_e
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    :cond_f
    :goto_3
    iget-boolean p0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    return p0
.end method

.method private onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0
.end method

.method private onScrollDownEvent(Landroid/view/MotionEvent;II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_a

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    const/4 v4, 0x3

    if-eq p2, v4, :cond_a

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_1
    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_2

    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    iget p3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    iget p3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_5

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto :goto_2

    :cond_6
    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_7

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_e

    if-ne p3, v3, :cond_8

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_1

    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    :goto_1
    sub-float/2addr p1, v2

    invoke-direct {p0, p1, p3}, Lmiui/view/springback/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    mul-float/2addr p2, p1

    const/4 p1, 0x0

    cmpl-float v2, p2, p1

    if-lez v2, :cond_9

    invoke-virtual {p0, v0}, Lmiui/view/springback/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    invoke-direct {p0, p2, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    goto :goto_2

    :cond_9
    invoke-direct {p0, p1, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    return v1

    :cond_a
    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_b

    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    iget-boolean p1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    :cond_c
    const/4 p1, -0x1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    :cond_e
    :goto_2
    return v0
.end method

.method private onScrollEvent(Landroid/view/MotionEvent;II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_a

    const/4 v3, 0x2

    if-eq p2, v3, :cond_7

    const/4 v4, 0x3

    if-eq p2, v4, :cond_6

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_1
    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_2

    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    iget p3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    iget p3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_5

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto :goto_2

    :cond_6
    return v1

    :cond_7
    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_8

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    iget-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_e

    if-ne p3, v3, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_1

    :cond_9
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    :goto_1
    sub-float/2addr p1, v1

    invoke-direct {p0, p1, p3}, Lmiui/view/springback/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    mul-float/2addr p2, p1

    invoke-virtual {p0, v0}, Lmiui/view/springback/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    invoke-direct {p0, p2, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    goto :goto_2

    :cond_a
    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_b

    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    iget-boolean p1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    :cond_c
    const/4 p1, -0x1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    :cond_e
    :goto_2
    return v0
.end method

.method private onScrollUpEvent(Landroid/view/MotionEvent;II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_a

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    const/4 v4, 0x3

    if-eq p2, v4, :cond_a

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_1
    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_2

    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    iget p3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    iget p3, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_5

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownX:F

    iput v1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto :goto_2

    :cond_6
    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_7

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_e

    if-ne p3, v3, :cond_8

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_1

    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionX:F

    :goto_1
    sub-float/2addr v2, p1

    invoke-direct {p0, v2, p3}, Lmiui/view/springback/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    mul-float/2addr p2, p1

    const/4 p1, 0x0

    cmpl-float v2, p2, p1

    if-lez v2, :cond_9

    invoke-virtual {p0, v0}, Lmiui/view/springback/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    neg-float p1, p2

    invoke-direct {p0, p1, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    goto :goto_2

    :cond_9
    invoke-direct {p0, p1, p3}, Lmiui/view/springback/SpringBackLayout;->moveTarget(FI)V

    return v1

    :cond_a
    iget p2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_b

    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    iget-boolean p1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->springBack(I)V

    :cond_c
    const/4 p1, -0x1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-direct {p0, p3}, Lmiui/view/springback/SpringBackLayout;->checkScrollStart(I)V

    :cond_e
    :goto_2
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    const/4 v4, -0x1

    if-eq v1, v3, :cond_b

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_b

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_4
    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    const-string v5, "SpringBackLayout"

    if-ne v1, v4, :cond_5

    const-string p0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    :goto_0
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    if-nez v2, :cond_8

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    if-eqz v2, :cond_a

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    :cond_9
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float v0, p1, v0

    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    iget-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_f

    goto :goto_1

    :cond_a
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v0, p1

    iget v1, p0, Lmiui/view/springback/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    iget-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_f

    :goto_1
    iput-boolean v3, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_2

    :cond_b
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    iput v4, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    goto :goto_3

    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_d

    return v2

    :cond_d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v3, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    iget p1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialDownY:F

    :goto_2
    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mInitialMotionY:F

    goto :goto_3

    :cond_e
    iput-boolean v2, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    :cond_f
    :goto_3
    iget-boolean p0, p0, Lmiui/view/springback/SpringBackLayout;->mIsBeingDragged:Z

    return p0
.end method

.method private onVerticalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, v1}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lmiui/view/springback/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0
.end method

.method private springBack(FIZ)V
    .locals 9

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mOnSpringListener:Lmiui/view/springback/SpringBackLayout$OnSpringListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/view/springback/SpringBackLayout$OnSpringListener;->onSpringBack()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->forceStop()V

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v8}, Lmiui/view/springback/SpringScroller;->scrollByFling(FFFFFIZ)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method private springBack(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lmiui/view/springback/SpringBackLayout;->springBack(FIZ)V

    return-void
.end method

.method private supportBottomSpringBackMode()Z
    .locals 0

    iget p0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackMode:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private supportTopSpringBackMode()Z
    .locals 1

    iget p0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackMode:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addOnScrollListener(Lmiui/view/springback/SpringBackLayout$OnScrollListener;)V
    .locals 0

    iget-object p0, p0, Lmiui/view/springback/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v1}, Lmiui/view/springback/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_1

    iget p1, p0, Lmiui/view/springback/SpringBackLayout;->mScrollState:I

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    :cond_1
    return v0
.end method

.method public internalRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v2, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v2}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->forceStop()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lmiui/view/springback/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->checkOrientation(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-direct {p0, v4}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v4}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    invoke-direct {p0, v4}, Lmiui/view/springback/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_8
    iput v0, p0, Lmiui/view/springback/SpringBackLayout;->mScrollOrientation:I

    :cond_9
    :goto_0
    invoke-direct {p0, v3}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_a
    invoke-direct {p0, v4}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_b
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p1, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p5

    sub-int/2addr p1, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    sub-int/2addr p2, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p2, p5

    iget-object p0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

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

    invoke-virtual {p0, v4, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-le v2, p1, :cond_0

    iget-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :cond_0
    iget-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-le v3, p1, :cond_1

    iget-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :goto_1
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/springback/SpringBackLayout$OnScrollListener;

    sub-int v2, p1, p3

    sub-int v3, p2, p4

    invoke-interface {v1, p0, v2, v3}, Lmiui/view/springback/SpringBackLayout$OnScrollListener;->onScrolled(Lmiui/view/springback/SpringBackLayout;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v1}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->forceStop()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onVerticalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/springback/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public requestDisallowParentInterceptTouchEvent(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lmiui/view/springback/SpringBackLayout;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lmiui/view/springback/SpringBackLayout;

    invoke-virtual {v0, p1}, Lmiui/view/springback/SpringBackLayout;->internalRequestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnSpringListener(Lmiui/view/springback/SpringBackLayout$OnSpringListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mOnSpringListener:Lmiui/view/springback/SpringBackLayout$OnSpringListener;

    return-void
.end method

.method public setScrollOrientation(I)V
    .locals 0

    iput p1, p0, Lmiui/view/springback/SpringBackLayout;->mOriginScrollOrientation:I

    iget-object p0, p0, Lmiui/view/springback/SpringBackLayout;->mHelper:Lmiui/view/springback/SpringBackLayoutHelper;

    iput p1, p0, Lmiui/view/springback/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/springback/SpringBackLayout;->mTarget:Landroid/view/View;

    return-void
.end method

.method public smoothScrollTo(II)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    sub-int v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/springback/SpringScroller;->forceStop()V

    iget-object v1, p0, Lmiui/view/springback/SpringBackLayout;->mSpringScroller:Lmiui/view/springback/SpringScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lmiui/view/springback/SpringScroller;->scrollByFling(FFFFFIZ)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lmiui/view/springback/SpringBackLayout;->dispatchScrollState(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method
