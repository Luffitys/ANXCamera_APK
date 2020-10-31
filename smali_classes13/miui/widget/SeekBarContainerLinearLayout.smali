.class public Lmiui/widget/SeekBarContainerLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SeekBarContainerLinearLayout.java"


# static fields
.field public static final FROM_TOUCH_ANIM:Ljava/lang/String; = "from_touch_anim"


# instance fields
.field private mCurrentProgress:I

.field private mIsInClickableRect:Z

.field private mIsInThumb:Z

.field private mProgress:F

.field private mProgressAnim:Lmiui/animation/physics/SpringAnimation;

.field private mProgressProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lmiui/widget/SeekBarContainerLinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iput-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    new-instance v0, Lmiui/widget/SeekBarContainerLinearLayout$1;

    const-string v1, "Progress"

    invoke-direct {v0, p0, v1}, Lmiui/widget/SeekBarContainerLinearLayout$1;-><init>(Lmiui/widget/SeekBarContainerLinearLayout;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iput-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    new-instance v0, Lmiui/widget/SeekBarContainerLinearLayout$1;

    const-string v1, "Progress"

    invoke-direct {v0, p0, v1}, Lmiui/widget/SeekBarContainerLinearLayout$1;-><init>(Lmiui/widget/SeekBarContainerLinearLayout;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iput-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    new-instance v0, Lmiui/widget/SeekBarContainerLinearLayout$1;

    const-string v1, "Progress"

    invoke-direct {v0, p0, v1}, Lmiui/widget/SeekBarContainerLinearLayout$1;-><init>(Lmiui/widget/SeekBarContainerLinearLayout;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->initAnim()V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/SeekBarContainerLinearLayout;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private attemptClaimDrag()V
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    return-void
.end method

.method private getThumbLeft()I
    .registers 6

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

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method

.method private getThumbRight()I
    .registers 6

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

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method

.method private initAnim()V
    .registers 4

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

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    new-instance v1, Lmiui/widget/SeekBarContainerLinearLayout$2;

    invoke-direct {v1, p0}, Lmiui/widget/SeekBarContainerLinearLayout$2;-><init>(Lmiui/widget/SeekBarContainerLinearLayout;)V

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    return-void
.end method

.method private isInExtendThumb(FFI)Z
    .registers 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getThumbLeft()I

    move-result v1

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getThumbRight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, p3

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_34

    add-int v5, v2, p3

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_34

    sub-int v5, v3, p3

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_34

    add-int v5, v4, p3

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_34

    const/4 v5, 0x1

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    :goto_35
    return v5
.end method

.method private isInThumbXRange(FI)Z
    .registers 7

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getThumbLeft()I

    move-result v0

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getThumbRight()I

    move-result v2

    sub-int v3, v0, p2

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_21

    add-int v3, v2, p2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method private onTouchSeekBar(Landroid/view/MotionEvent;)V
    .registers 4

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

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private releaseClaimDrag()V
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 13

    iget-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->onTouchSeekBar(Landroid/view/MotionEvent;)V

    goto/16 :goto_ce

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5a

    iget-object v4, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getRight()I

    move-result v4

    iget-object v6, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getLeft()I

    move-result v6

    iget-object v7, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v7, v4

    cmpl-float v7, v0, v7

    if-lez v7, :cond_4b

    const/4 v7, 0x0

    goto :goto_88

    :cond_4b
    int-to-float v7, v6

    cmpg-float v7, v0, v7

    if-gez v7, :cond_53

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_88

    :cond_53
    int-to-float v7, v2

    sub-float/2addr v7, v0

    int-to-float v8, v6

    add-float/2addr v7, v8

    int-to-float v8, v2

    div-float/2addr v7, v8

    goto :goto_88

    :cond_5a
    iget-object v4, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLeft()I

    move-result v4

    iget-object v6, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getRight()I

    move-result v6

    iget-object v7, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v7, v4

    cmpg-float v7, v0, v7

    if-gez v7, :cond_7b

    const/4 v7, 0x0

    goto :goto_88

    :cond_7b
    int-to-float v7, v6

    cmpl-float v7, v0, v7

    if-lez v7, :cond_83

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_88

    :cond_83
    int-to-float v7, v4

    sub-float v7, v0, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    :goto_88
    iget-object v8, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v8}, Lmiui/widget/ProgressBarHelper;->getRange(Landroid/widget/ProgressBar;)I

    move-result v8

    int-to-float v9, v8

    mul-float/2addr v9, v7

    iget-object v10, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v10}, Lmiui/widget/ProgressBarHelper;->getMin(Landroid/widget/ProgressBar;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v3, v9

    const/4 v9, 0x0

    invoke-direct {p0, v0, v9}, Lmiui/widget/SeekBarContainerLinearLayout;->isInThumbXRange(FI)Z

    move-result v9

    if-eqz v9, :cond_b1

    iget-object v9, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v9}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    iget-object v9, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    iput-boolean v5, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    goto :goto_ce

    :cond_b1
    iget-object v5, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v5}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/animation/physics/SpringForce;->setFinalPosition(F)Lmiui/animation/physics/SpringForce;

    iget-object v5, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v5}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v5

    if-nez v5, :cond_ce

    iget-object v5, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v5}, Lmiui/animation/physics/SpringAnimation;->start()V

    iget-object v5, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    const-string v9, "from_touch_anim"

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    :cond_ce
    :goto_ce
    return-void
.end method


# virtual methods
.method public getProgress()F
    .registers 2

    iget v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgress:F

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v0}, Lmiui/widget/SeekBarContainerLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/SeekBar;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_20

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fail to get seek bar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Lmiui/widget/SeekBarContainerLinearLayout;->isInExtendThumb(FFI)Z

    move-result v2

    return v2
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->setParentClipChildren()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_59

    if-eq v0, v2, :cond_44

    if-eq v0, v1, :cond_28

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    goto/16 :goto_b4

    :cond_12
    iget-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setPressed(Z)V

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->releaseClaimDrag()V

    invoke-direct {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->onTouchSeekBar(Landroid/view/MotionEvent;)V

    goto/16 :goto_b4

    :cond_28
    iget-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_3f
    invoke-direct {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_b4

    :cond_44
    iget-boolean v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setPressed(Z)V

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->releaseClaimDrag()V

    invoke-direct {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->onTouchSeekBar(Landroid/view/MotionEvent;)V

    goto :goto_b4

    :cond_59
    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    mul-int/2addr v6, v1

    invoke-direct {p0, v4, v5, v6}, Lmiui/widget/SeekBarContainerLinearLayout;->isInExtendThumb(FFI)Z

    move-result v1

    invoke-direct {p0, v4, v5, v3}, Lmiui/widget/SeekBarContainerLinearLayout;->isInExtendThumb(FFI)Z

    move-result v7

    iput-boolean v7, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    if-eqz v1, :cond_ac

    iget-object v7, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_ac

    iput-boolean v2, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iget-object v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setPressed(Z)V

    iget-object v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mCurrentProgress:I

    int-to-float v3, v3

    iput v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgress:F

    iget-boolean v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    if-eqz v3, :cond_9c

    invoke-direct {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->onTouchSeekBar(Landroid/view/MotionEvent;)V

    goto :goto_a8

    :cond_9c
    iget-object v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v3}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v3

    iget v7, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mCurrentProgress:I

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Lmiui/animation/physics/SpringForce;->setFinalPosition(F)Lmiui/animation/physics/SpringForce;

    :goto_a8
    invoke-direct {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->attemptClaimDrag()V

    goto :goto_ae

    :cond_ac
    iput-boolean v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    :goto_ae
    goto :goto_b4

    :cond_af
    iput-boolean v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInClickableRect:Z

    iput-boolean v3, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mIsInThumb:Z

    nop

    :cond_b4
    :goto_b4
    return v2
.end method

.method public setParentClipChildren()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/SeekBarContainerLinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_14

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_14
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    int-to-float v0, p1

    iput v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mProgress:F

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
