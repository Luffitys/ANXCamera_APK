.class public Lcom/android/camera/ui/HorizontalZoomView;
.super Lcom/android/camera/ui/BaseHorizontalZoomView;
.source ""


# static fields
.field private static final DEFAULT_TIME:I = 0xc8

.field private static final DIS_USED:I = -0x64

.field public static final NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HorizontalZoomView"

.field private static final TOUCH_SCROLL_THRESHOLD:I = 0xa


# instance fields
.field private mCenterYBottomMargin:F

.field private mCurrentAnimateFrom:I

.field private mCurrentInterpolation:F

.field protected mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

.field protected mDrawEndX:F

.field protected mDrawStartX:F

.field private mInitPositionRatio:F

.field private mInitSelectIndex:I

.field private mIsAdsorb:Z

.field private mIsCurrentAnimateFromDown:Z

.field private mIsEffectInProcess:Z

.field private mIsRLT:Z

.field protected mItemGap:F

.field protected mItemHalfWidth:F

.field protected mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

.field private mPositiveSpline:Landroid/util/Spline;

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field protected mSelectPointX:F

.field private mSpline:Landroid/util/Spline;

.field protected mTotalWidth:F

.field private mTouchStartTime:F

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mTouchState:I

.field protected mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

.field private mTouchX:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/HorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/BaseHorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x40800000    # -1.0f

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    const/16 p3, -0x64

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    const/high16 p3, -0x3d380000    # -100.0f

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitPositionRatio:F

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    sget-object v0, Lcom/android/camera/R$styleable;->HorizontalView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCenterYBottomMargin:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/HorizontalZoomView;)Landroid/util/Spline;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mPositiveSpline:Landroid/util/Spline;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/HorizontalZoomView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/ui/HorizontalZoomView;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/ui/HorizontalZoomView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    return p1
.end method

.method private indexToPointX(I)F
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    add-float/2addr p1, p0

    return p1
.end method

.method private isValidEvent(F)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCenterYBottomMargin:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    div-float/2addr v0, v1

    cmpl-float p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private mapIndexToValue(I)F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapPositionToValue(F)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private mapPositionToValue(F)F
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    if-eqz v0, :cond_0

    sub-float p1, v1, p1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapPositionToValue(F)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private pointXToIndex(F)I
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method private positionRatioToPointX(F)F
    .locals 4

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    sub-float/2addr v0, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->pointXToIndex(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->isSingleValueLine(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sub-int v0, p1, v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result p0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method private selectByIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p0, p1, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onPositionSelect(Landroid/view/View;IF)V

    :cond_0
    return-void
.end method

.method private selectByPointX(F)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    if-eqz v0, :cond_0

    sub-float p1, v1, p1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onPositionSelect(Landroid/view/View;IF)V

    :cond_1
    return-void
.end method

.method private setSelectPointXToEffectiveRang(F)V
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    sub-float/2addr v2, v1

    invoke-static {p1, v0, v2}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    return-void
.end method

.method private startScaleAnimator(Z)V
    .locals 4

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsCurrentAnimateFromDown:Z

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsCurrentAnimateFromDown:Z

    new-array v1, v1, [F

    if-eqz p1, :cond_3

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_0

    :cond_3
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    const-wide/16 v2, 0xc8

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x190

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/HorizontalZoomView$5;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ui/HorizontalZoomView$5;-><init>(Lcom/android/camera/ui/HorizontalZoomView;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/HorizontalZoomView$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/ui/HorizontalZoomView$6;-><init>(Lcom/android/camera/ui/HorizontalZoomView;IZ)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startScrollAnimator(FI)V
    .locals 4

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    iget-boolean p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->selectByPointX(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    :goto_0
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/HorizontalZoomView$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalZoomView$3;-><init>(Lcom/android/camera/ui/HorizontalZoomView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/HorizontalZoomView$4;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/HorizontalZoomView$4;-><init>(Lcom/android/camera/ui/HorizontalZoomView;F)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startScrollAnimatorByIndex(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->selectByIndex(I)V

    const/16 v0, 0xc8

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->mapPositionToValue(F)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->mapIndexToValue(I)F

    move-result v6

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {v2, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {v3, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    sub-float v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const-string v5, "animator_duration"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v4, v0

    move v0, v5

    move v5, v6

    goto :goto_0

    :cond_1
    move v7, v1

    move v5, v3

    move v0, v4

    move v4, v2

    :goto_0
    move-object v2, p0

    move v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/HorizontalZoomView;->startValueAnimator(IFFFZ)V

    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int p1, v2, p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->startScrollAnimator(FI)V

    return-void
.end method

.method private startScrollIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartX:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v3, v1, v2

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartY:F

    sub-float v1, v0, v2

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    add-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->startScaleAnimator(Z)V

    return p1
.end method

.method private startValueAnimator(IFFFZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/HorizontalZoomView$1;

    invoke-direct {p2, p0, p5}, Lcom/android/camera/ui/HorizontalZoomView$1;-><init>(Lcom/android/camera/ui/HorizontalZoomView;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/HorizontalZoomView$2;

    invoke-direct {p2, p0, p4}, Lcom/android/camera/ui/HorizontalZoomView$2;-><init>(Lcom/android/camera/ui/HorizontalZoomView;F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private toUpdateView(FZ)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->pointXToIndex(F)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->isSingleValueLine(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->selectByIndex(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->pointXToIndex(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->selectByPointX(F)V

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->startScaleAnimator(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-eqz p0, :cond_7

    invoke-interface {p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState()V

    goto :goto_5

    :cond_2
    iget-boolean p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-nez p2, :cond_4

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->selectByIndex(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->selectByPointX(F)V

    :goto_1
    const/16 p2, 0xc8

    goto :goto_4

    :cond_4
    iget p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {p0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->mapPositionToValue(F)F

    move-result p2

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->mapIndexToValue(I)F

    move-result v0

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->mapPositionToValue(F)F

    move-result v0

    :goto_2
    move v8, v0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, p2}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    invoke-virtual {v1, v8}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    sub-float v4, v1, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const-string v5, "animator_duration"

    invoke-static {v5, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v6, p2

    move v9, v3

    move p2, v5

    move v7, v8

    goto :goto_3

    :cond_6
    move v6, v0

    move v7, v1

    move v9, v2

    move p2, v4

    :goto_3
    move-object v4, p0

    move v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/HorizontalZoomView;->startValueAnimator(IFFFZ)V

    :goto_4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->pointXToIndex(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/HorizontalZoomView;->startScrollAnimator(FI)V

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    return-object p0
.end method

.method protected getItemWidth(I)F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result p0

    return p0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    return-void
.end method

.method public isIdle()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    const/16 v8, -0x64

    const/4 v9, -0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    if-ne v1, v9, :cond_0

    iput v8, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCenterYBottomMargin:F

    sub-float v10, v1, v2

    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1, v13}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result v1

    div-float/2addr v1, v11

    iput v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    sub-float/2addr v2, v1

    sub-float/2addr v2, v1

    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v12

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    :cond_2
    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setItemGap(F)V

    iget-boolean v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v12

    move v14, v2

    goto :goto_0

    :cond_3
    move v14, v13

    :goto_0
    if-eqz v1, :cond_4

    move v15, v13

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v12

    move v15, v2

    :goto_1
    if-eqz v1, :cond_5

    move/from16 v16, v9

    goto :goto_2

    :cond_5
    move/from16 v16, v12

    :goto_2
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    if-eq v2, v8, :cond_a

    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v2, :cond_a

    move v11, v1

    move v15, v13

    :goto_3
    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v1

    if-ge v15, v1, :cond_7

    mul-int v1, v15, v16

    add-int v2, v14, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    iget v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    if-ne v3, v2, :cond_6

    move v4, v12

    goto :goto_4

    :cond_6
    move v4, v13

    :goto_4
    iget v5, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    iget v6, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    add-float/2addr v11, v1

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    if-eq v1, v9, :cond_9

    iget-boolean v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mIsRLT:Z

    if-eqz v2, :cond_8

    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v12

    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    sub-int/2addr v1, v2

    :cond_8
    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->indexToPointX(I)F

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    iput v8, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    :cond_9
    return-void

    :cond_a
    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitPositionRatio:F

    const/high16 v3, -0x3d380000    # -100.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_b

    invoke-direct {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->positionRatioToPointX(F)F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    iput v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mInitPositionRatio:F

    :cond_b
    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setSelectPointXToEffectiveRang(F)V

    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v2, :cond_12

    move v8, v1

    move v3, v12

    move v6, v13

    :goto_5
    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v1

    if-ge v6, v1, :cond_11

    mul-int v1, v6, v16

    add-int v2, v14, v1

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v1

    iget v4, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    sub-float v5, v8, v4

    if-eqz v3, :cond_f

    iget v12, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    iget v13, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemHalfWidth:F

    add-float/2addr v12, v13

    cmpg-float v12, v4, v12

    if-gtz v12, :cond_c

    move v12, v14

    :goto_6
    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    iget v12, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    sub-float/2addr v12, v13

    cmpl-float v4, v4, v12

    if-ltz v4, :cond_d

    move v12, v15

    goto :goto_6

    :cond_d
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v1, v11

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_e

    :goto_7
    move v12, v2

    goto :goto_6

    :cond_e
    iget-boolean v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    if-eqz v1, :cond_f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    div-float/2addr v4, v11

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_f

    goto :goto_7

    :cond_f
    move v12, v9

    move v9, v3

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-nez v9, :cond_10

    if-ne v12, v2, :cond_10

    const/4 v4, 0x1

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    :goto_9
    iget v5, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    iget v13, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    move-object/from16 v3, p1

    move/from16 v17, v6

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    add-float/2addr v8, v1

    add-int/lit8 v6, v17, 0x1

    move v3, v9

    move v9, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_5

    :cond_11
    if-eqz v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {v7, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v2, -0x1

    iget v4, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentAnimateFrom:I

    iget v5, v0, Lcom/android/camera/ui/HorizontalZoomView;->mCurrentInterpolation:F

    move-object v0, v1

    move v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p1, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->updateSelectColor()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    goto/16 :goto_2

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_a

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchX:F

    sub-float/2addr v2, v4

    add-float/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->selectByPointX(F)V

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-float v0, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartTime:F

    sub-float/2addr v0, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-eq v0, v2, :cond_5

    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    return v3

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchX:F

    sub-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->toUpdateView(FZ)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->toUpdateView(FZ)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-nez v2, :cond_7

    invoke-interface {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState()V

    :cond_7
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    goto :goto_2

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-float v0, v4

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartTime:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartY:F

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->isValidEvent(F)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-eq v0, v2, :cond_a

    iput v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchX:F

    return v3
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsEffectInProcess:Z

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 p3, 0xa3

    if-ne p1, p3, :cond_0

    sget-object p1, Lcom/android/camera/HybridZoomingSystem;->SAT_ZOOM_RATIO_X:[F

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/HybridZoomingSystem;->VIDEO_SAT_ZOOM_RATIO_X:[F

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    if-ne v0, p3, :cond_1

    sget-object p3, Lcom/android/camera/HybridZoomingSystem;->SAT_ZOOM_RATIO_Y:[F

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/android/camera/HybridZoomingSystem;->VIDEO_SAT_ZOOM_RATIO_Y:[F

    :goto_1
    invoke-static {p1, p3}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSpline:Landroid/util/Spline;

    invoke-static {p3, p1}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mPositiveSpline:Landroid/util/Spline;

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setRotate(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    iput-object p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    return-void
.end method

.method public setRotate(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setRotate(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelection(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitPositionRatio:F

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->positionRatioToPointX(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    :goto_0
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelection   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HorizontalZoomView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mInitSelectIndex:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mIsAdsorb:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->startScrollAnimatorByIndex(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    :cond_2
    return-void
.end method
