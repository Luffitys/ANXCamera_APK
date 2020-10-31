.class public Lmiui/notification/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Lmiui/notification/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/notification/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field static final ALPHA_FADE_END:F = 0.5f

.field public static ALPHA_FADE_START:F = 0.0f

.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEBUG:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field static final TAG:Ljava/lang/String; = "com.android.systemui.SwipeHelper"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lmiui/notification/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lmiui/notification/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    const/4 v0, 0x0

    sput v0, Lmiui/notification/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILmiui/notification/SwipeHelper$Callback;FF)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lmiui/notification/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    const/16 v0, 0xc8

    iput v0, p0, Lmiui/notification/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x190

    iput v0, p0, Lmiui/notification/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x7d0

    iput v0, p0, Lmiui/notification/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/notification/SwipeHelper;->mMinAlpha:F

    iput-object p2, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/notification/SwipeHelper;->mHandler:Landroid/os/Handler;

    iput p1, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput p3, p0, Lmiui/notification/SwipeHelper;->mDensityScale:F

    iput p4, p0, Lmiui/notification/SwipeHelper;->mPagingTouchSlop:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lmiui/notification/SwipeHelper;->mLongPressTimeout:J

    return-void
.end method

.method static synthetic access$000(Lmiui/notification/SwipeHelper;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/notification/SwipeHelper;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lmiui/notification/SwipeHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lmiui/notification/SwipeHelper;)Landroid/view/View$OnLongClickListener;
    .registers 2

    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/notification/SwipeHelper;)Lmiui/notification/SwipeHelper$Callback;
    .registers 2

    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/notification/SwipeHelper;Landroid/view/View;)F
    .registers 3

    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .registers 6

    nop

    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_8

    const-string v0, "translationX"

    goto :goto_a

    :cond_8
    const-string v0, "translationY"

    :goto_a
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .registers 9

    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    sget v4, Lmiui/notification/SwipeHelper;->ALPHA_FADE_START:F

    mul-float v5, v0, v4

    cmpl-float v5, v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v5, :cond_1e

    mul-float/2addr v4, v0

    sub-float v4, v3, v4

    div-float/2addr v4, v1

    sub-float v2, v6, v4

    goto :goto_2a

    :cond_1e
    sub-float v5, v6, v4

    mul-float/2addr v5, v0

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2a

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    div-float/2addr v4, v1

    add-float v2, v4, v6

    :cond_2a
    :goto_2a
    iget v4, p0, Lmiui/notification/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .registers 3

    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_d
    return v0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .registers 3

    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_d
    return v0
.end method

.method private getSize(Landroid/view/View;)F
    .registers 3

    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_f

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_f
    return v0
.end method

.method private getTranslation(Landroid/view/View;)F
    .registers 3

    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    :goto_d
    return v0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .registers 3

    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_d
    return v0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .registers 6

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lmiui/notification/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 7

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_40
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .registers 4

    iget v0, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_8

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_b

    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_b
    return-void
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .registers 10

    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lmiui/notification/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v1, p1}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, p2, v2

    if-ltz v3, :cond_34

    cmpl-float v3, p2, v2

    if-nez v3, :cond_1d

    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-ltz v3, :cond_34

    :cond_1d
    cmpl-float v3, p2, v2

    if-nez v3, :cond_2f

    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2f

    iget v3, p0, Lmiui/notification/SwipeHelper;->mSwipeDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    goto :goto_34

    :cond_2f
    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    goto :goto_39

    :cond_34
    :goto_34
    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    neg-float v3, v3

    :goto_39
    iget v4, p0, Lmiui/notification/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_58

    nop

    invoke-direct {p0, v0}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5a

    :cond_58
    iget v2, p0, Lmiui/notification/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    :goto_5a
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0, v0, v3}, Lmiui/notification/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v5, Lmiui/notification/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lmiui/notification/SwipeHelper$2;

    invoke-direct {v5, p0, p1, v0}, Lmiui/notification/SwipeHelper$2;-><init>(Lmiui/notification/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lmiui/notification/SwipeHelper$3;

    invoke-direct {v5, p0, v1, v0}, Lmiui/notification/SwipeHelper$3;-><init>(Lmiui/notification/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_12

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4b

    goto/16 :goto_a2

    :cond_12
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_a2

    iget-boolean v1, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    if-nez v1, :cond_a2

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v1

    iget v3, p0, Lmiui/notification/SwipeHelper;->mInitialTouchPos:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lmiui/notification/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4a

    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v5, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v4, v5}, Lmiui/notification/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    iput-boolean v2, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v4}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float/2addr v2, v4

    iput v2, p0, Lmiui/notification/SwipeHelper;->mInitialTouchPos:F

    invoke-virtual {p0}, Lmiui/notification/SwipeHelper;->removeLongPressCallback()V

    :cond_4a
    goto :goto_a2

    :cond_4b
    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    iput-object v2, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    invoke-virtual {p0}, Lmiui/notification/SwipeHelper;->removeLongPressCallback()V

    goto :goto_a2

    :cond_58
    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v1, p1}, Lmiui/notification/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_a2

    iget-object v2, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v2, v1}, Lmiui/notification/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v2, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v1, v2}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/notification/SwipeHelper;->mCanCurrViewBeDimissed:Z

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lmiui/notification/SwipeHelper;->mInitialTouchPos:F

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v1, :cond_99

    new-instance v1, Lmiui/notification/SwipeHelper$1;

    invoke-direct {v1, p0}, Lmiui/notification/SwipeHelper$1;-><init>(Lmiui/notification/SwipeHelper;)V

    iput-object v1, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_99
    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v3, p0, Lmiui/notification/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a2
    :goto_a2
    iget-boolean v1, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    iget-boolean v0, p0, Lmiui/notification/SwipeHelper;->mLongPressSent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lmiui/notification/SwipeHelper;->mDragging:Z

    const/4 v2, 0x0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lmiui/notification/SwipeHelper;->removeLongPressCallback()V

    return v2

    :cond_f
    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_26

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_26

    goto/16 :goto_113

    :cond_26
    iget-object v2, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_113

    invoke-direct {p0, p1}, Lmiui/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v4, p0, Lmiui/notification/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v5, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v4, v5}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_66

    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v4}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_56

    cmpl-float v3, v2, v3

    if-lez v3, :cond_53

    move v3, v5

    goto :goto_54

    :cond_53
    neg-float v3, v5

    :goto_54
    move v2, v3

    goto :goto_66

    :cond_56
    div-float v3, v2, v4

    float-to-double v6, v3

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float v2, v5, v3

    :cond_66
    :goto_66
    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lmiui/notification/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    iget-boolean v3, p0, Lmiui/notification/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz v3, :cond_78

    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v3}, Lmiui/notification/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_78
    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v3}, Lmiui/notification/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    goto/16 :goto_113

    :cond_7f
    iget-object v4, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v4, :cond_113

    iget v4, p0, Lmiui/notification/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v4, v4

    iget v5, p0, Lmiui/notification/SwipeHelper;->mDensityScale:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v5, p0, Lmiui/notification/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    iget v6, p0, Lmiui/notification/SwipeHelper;->mDensityScale:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v6}, Lmiui/notification/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v6

    iget-object v7, p0, Lmiui/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v7}, Lmiui/notification/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v7

    iget-object v8, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v8}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    iget-object v12, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v12}, Lmiui/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v12, v10

    cmpl-double v8, v8, v12

    if-lez v8, :cond_bf

    move v8, v1

    goto :goto_c0

    :cond_bf
    move v8, v2

    :goto_c0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v5

    if-lez v9, :cond_ec

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_ec

    cmpl-float v9, v6, v3

    if-lez v9, :cond_da

    move v9, v1

    goto :goto_db

    :cond_da
    move v9, v2

    :goto_db
    iget-object v10, p0, Lmiui/notification/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v10}, Lmiui/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v10

    cmpl-float v10, v10, v3

    if-lez v10, :cond_e7

    move v10, v1

    goto :goto_e8

    :cond_e7
    move v10, v2

    :goto_e8
    if-ne v9, v10, :cond_ec

    move v9, v1

    goto :goto_ed

    :cond_ec
    move v9, v2

    :goto_ed
    iget-object v10, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v11, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v10, v11}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_fc

    if-nez v9, :cond_fb

    if-eqz v8, :cond_fc

    :cond_fb
    move v2, v1

    :cond_fc
    if-eqz v2, :cond_107

    iget-object v10, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v9, :cond_103

    move v3, v6

    :cond_103
    invoke-virtual {p0, v10, v3}, Lmiui/notification/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto :goto_113

    :cond_107
    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    iget-object v10, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v10}, Lmiui/notification/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3, v6}, Lmiui/notification/SwipeHelper;->snapChild(Landroid/view/View;F)V

    :cond_113
    :goto_113
    return v1
.end method

.method public removeLongPressCallback()V
    .registers 3

    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_c
    return-void
.end method

.method public setDensityScale(F)V
    .registers 2

    iput p1, p0, Lmiui/notification/SwipeHelper;->mDensityScale:F

    return-void
.end method

.method public setLongPressListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setMinAlpha(F)V
    .registers 2

    iput p1, p0, Lmiui/notification/SwipeHelper;->mMinAlpha:F

    return-void
.end method

.method public setPagingTouchSlop(F)V
    .registers 2

    iput p1, p0, Lmiui/notification/SwipeHelper;->mPagingTouchSlop:F

    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .registers 9

    iget-object v0, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lmiui/notification/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/notification/SwipeHelper;->mCallback:Lmiui/notification/SwipeHelper$Callback;

    invoke-interface {v1, v0}, Lmiui/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lmiui/notification/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v3, 0x96

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/notification/SwipeHelper$4;

    invoke-direct {v4, p0, v1, v0}, Lmiui/notification/SwipeHelper$4;-><init>(Lmiui/notification/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
