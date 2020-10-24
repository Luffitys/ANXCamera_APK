.class public Lmiui/widget/SeekBarContainerLinearLayout;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final FROM_TOUCH_ANIM:Ljava/lang/String; = "from_touch_anim"


# instance fields
.field private mCurrentProgress:I

.field private mIsInClickableRect:Z

.field private mIsInThumb:Z

.field private mProgress:F

.field private mProgressAnim:Lmiui/animation/physics/SpringAnimation;

.field private mProgressProperty:Lmiui/animation/property/FloatProperty;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iput-boolean p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    new-instance p1, Lmiui/widget/SeekBarContainerLinearLayout$1;

    const-string v0, "Progress"

    invoke-direct {p1, p0, v0}, Lmiui/widget/SeekBarContainerLinearLayout$1;-><init>(Lmiui/widget/SeekBarContainerLinearLayout;Ljava/lang/String;)V

    iput-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iput-boolean p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    new-instance p1, Lmiui/widget/SeekBarContainerLinearLayout$1;

    const-string p2, "Progress"

    invoke-direct {p1, p0, p2}, Lmiui/widget/SeekBarContainerLinearLayout$1;-><init>(Lmiui/widget/SeekBarContainerLinearLayout;Ljava/lang/String;)V

    iput-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iput-boolean p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    new-instance p1, Lmiui/widget/SeekBarContainerLinearLayout$1;

    const-string p2, "Progress"

    invoke-direct {p1, p0, p2}, Lmiui/widget/SeekBarContainerLinearLayout$1;-><init>(Lmiui/widget/SeekBarContainerLinearLayout;Ljava/lang/String;)V

    iput-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->initAnim()V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/SeekBarContainerLinearLayout;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private attemptClaimDrag()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private getThumbLeft()I
    .locals 3

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLeft()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private getThumbRight()I
    .locals 3

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLeft()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private initAnim()V
    .locals 3

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressProperty:Lmiui/animation/property/FloatProperty;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1, v2}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v1}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    new-instance v1, Lmiui/widget/SeekBarContainerLinearLayout$2;

    invoke-direct {v1, p0}, Lmiui/widget/SeekBarContainerLinearLayout$2;-><init>(Lmiui/widget/SeekBarContainerLinearLayout;)V

    invoke-virtual {v0, v1}, Lmiui/animation/physics/DynamicAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    return-void
.end method

.method private isInExtendThumb(FFI)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getThumbLeft()I

    move-result v1

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getThumbRight()I

    move-result p0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p3

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    add-int/2addr p0, p3

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    sub-int/2addr v2, p3

    int-to-float p0, v2

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    add-int/2addr v0, p3

    int-to-float p0, v0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInThumbXRange(FI)Z
    .locals 2

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getThumbLeft()I

    move-result v0

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getThumbRight()I

    move-result p0

    sub-int/2addr v0, p2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    add-int/2addr p0, p2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private onTouchSeekBar(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private releaseClaimDrag()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    iget-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->onTouchSeekBar(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getRight()I

    move-result v1

    iget-object v5, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    iget-object v5, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getLeft()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v1, v5

    cmpg-float v5, p1, v1

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    sub-float v2, v0, p1

    add-float/2addr v2, v1

    div-float/2addr v2, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLeft()I

    move-result v1

    iget-object v5, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getRight()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v1, v1

    cmpg-float v6, p1, v1

    if-gez v6, :cond_4

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_4
    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_5

    goto :goto_1

    :cond_5
    sub-float v1, p1, v1

    int-to-float v0, v0

    div-float v2, v1, v0

    :goto_1
    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v0}, Lmiui/widget/ProgressBarHelper;->getRange(Landroid/widget/ProgressBar;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v0}, Lmiui/widget/ProgressBarHelper;->getMin(Landroid/widget/ProgressBar;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    add-float/2addr v4, v2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SeekBarContainerLinearLayout;->isInThumbXRange(FI)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    iget-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iput-boolean v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v4}, Lmiui/animation/physics/SpringForce;->setFinalPosition(F)Lmiui/animation/physics/SpringForce;

    iget-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/SpringAnimation;->start()V

    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    const-string p1, "from_touch_anim"

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 0

    iget p0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgress:F

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "fail to get seek bar"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, p1, v0}, Lmiui/widget/SeekBarContainerLinearLayout;->isInExtendThumb(FFI)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->setParentClipChildren()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_2
    invoke-direct {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    if-eqz v0, :cond_8

    :goto_0
    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setPressed(Z)V

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->releaseClaimDrag()V

    invoke-direct {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->onTouchSeekBar(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/2addr v0, v1

    invoke-direct {p0, v4, v5, v0}, Lmiui/widget/SeekBarContainerLinearLayout;->isInExtendThumb(FFI)Z

    move-result v0

    invoke-direct {p0, v4, v5, v3}, Lmiui/widget/SeekBarContainerLinearLayout;->isInExtendThumb(FFI)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setPressed(Z)V

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mCurrentProgress:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgress:F

    iget-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->onTouchSeekBar(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object p1

    iget v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mCurrentProgress:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lmiui/animation/physics/SpringForce;->setFinalPosition(F)Lmiui/animation/physics/SpringForce;

    :goto_1
    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->attemptClaimDrag()V

    goto :goto_2

    :cond_6
    iput-boolean v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    goto :goto_2

    :cond_7
    iput-boolean v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iput-boolean v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    :cond_8
    :goto_2
    return v2
.end method

.method public setParentClipChildren()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgress:F

    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
