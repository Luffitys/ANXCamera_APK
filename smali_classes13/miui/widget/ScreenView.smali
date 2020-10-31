.class public Lmiui/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScreenView$ScaleDetectorListener;,
        Lmiui/widget/ScreenView$SliderTouchListener;,
        Lmiui/widget/ScreenView$SlideBar;,
        Lmiui/widget/ScreenView$SeekBarIndicator;,
        Lmiui/widget/ScreenView$ArrowIndicator;,
        Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;,
        Lmiui/widget/ScreenView$GestureVelocityTracker;,
        Lmiui/widget/ScreenView$SavedState;,
        Lmiui/widget/ScreenView$Indicator;,
        Lmiui/widget/ScreenView$SnapScreenOnceNotification;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_ANIMATION_DURATION:I = 0x1f4

.field private static final AUTO_HIDE_TIMEOUT_DURATION:I = 0x3e8

.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DEFAULT_OVER_SHOOT_TENSION:F = 1.3f

.field private static final DEFAULT_SCREEN_SNAP_DURATION:I = 0x12c

.field public static final FLING_ALIGN:I = 0x4

.field public static final FLING_CANCEL:I = 0x3

.field public static final FLING_LEFT:I = 0x1

.field public static final FLING_RIGHT:I = 0x2

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

.field private static final INVALID_POINTER:I = -0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final NANOTIME_DIV:F = 1.0E9f

.field public static final SCREEN_ALIGN_CENTER:I = 0x2

.field public static final SCREEN_ALIGN_CUSTOMIZED:I = 0x0

.field public static final SCREEN_ALIGN_LEFT:I = 0x1

.field public static final SCREEN_ALIGN_RIGHT:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field private static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final SMOOTHING_CONSTANT:F

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3

.field private static final ViewClass:Lcom/miui/internal/variable/Android_View_View_class;


# instance fields
.field private final DEFAULT_CAMERA_DISTANCE:F

.field private mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field private mAutoHideTimer:Ljava/lang/Runnable;

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field private mFirstLayout:Z

.field private mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

.field private mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field private mIsSlideBarAutoHide:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOverScrollRatio:F

.field private mOvershootTension:F

.field private mPrevScreenWidth:I

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScreenAlignment:I

.field private mScreenCounter:I

.field protected mScreenOffset:I

.field private mScreenPaddingBottom:I

.field private mScreenPaddingTop:I

.field private mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field private mScreenWidth:I

.field private mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

.field private mScrollLeftBound:I

.field private mScrollOffset:I

.field private mScrollRightBound:I

.field private mScrollWholeScreen:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field private mSlideBar:Lmiui/widget/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVisibleExtentionRatio:F

.field protected mVisibleRange:I

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    nop

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f90624dd2f1a9fcL    # 0.016

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput v1, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput v1, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput v1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    new-instance v1, Lmiui/widget/ScreenView$1;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    iput v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/ScreenView;->mPrevScreenWidth:I

    iput v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    const/4 v2, -0x1

    iput v2, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const v3, 0x3eaaaaab

    iput v3, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    iput v2, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iput v3, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    iput v1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput v1, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput v1, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput v1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    new-instance v1, Lmiui/widget/ScreenView$1;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    iput v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/ScreenView;->mPrevScreenWidth:I

    iput v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    const/4 v2, -0x1

    iput v2, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const v3, 0x3eaaaaab

    iput v3, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    iput v2, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iput v3, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    iput v1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/ScreenView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/ScreenView;->startHideSlideBar()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1200(Lmiui/widget/ScreenView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    return-void
.end method

.method static synthetic access$1300(Lmiui/widget/ScreenView;)I
    .registers 2

    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    return v0
.end method

.method static synthetic access$1400(Lmiui/widget/ScreenView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    return-void
.end method

.method static synthetic access$1500(Lmiui/widget/ScreenView;)I
    .registers 2

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method static synthetic access$500(Lmiui/widget/ScreenView;)Lmiui/widget/ScreenView$SlideBar;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/ScreenView;)I
    .registers 2

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$800(Lmiui/widget/ScreenView;)F
    .registers 2

    iget v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic access$900()Lcom/miui/internal/variable/Android_View_View_class;
    .registers 1

    sget-object v0, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    return-object v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .registers 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private doGetScreen(IZ)Landroid/view/View;
    .registers 4

    if-ltz p1, :cond_12

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private doScrollToScreen(IZ)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result v0

    iget-boolean v1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    iget v2, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lmiui/widget/ScreenView;->measure(II)V

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmiui/widget/ScreenView;->scrollTo(II)V

    return-void
.end method

.method private doSetCurrentScreen(IZ)V
    .registers 7

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    goto :goto_2a

    :cond_1a
    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_2a
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-nez v2, :cond_4a

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_42
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v2, v1}, Lmiui/widget/ScreenView;->doScrollToScreen(IZ)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    :cond_4a
    return-void
.end method

.method private initScreenView()V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setClipToPadding(Z)V

    new-instance v0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setMaximumSnapVelocity(I)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lmiui/widget/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private isRTL()Z
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v0, :cond_c

    const/4 v1, 0x4

    if-ne v1, v0, :cond_11

    :cond_c
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_11
    return-void
.end method

.method private refreshScrollBound()V
    .registers 4

    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    neg-int v1, v0

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    iget-boolean v1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-nez v1, :cond_26

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    goto :goto_3e

    :cond_26
    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    :goto_3e
    return-void
.end method

.method private revertIndex(I)I
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2c

    iget v3, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    nop

    :goto_2d
    return v0
.end method

.method private setCameraDistance(Landroid/view/View;F)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getCameraDistance()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    return-void
.end method

.method private setCurrentScreenInner(I)V
    .registers 3

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    iput p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    return-void
.end method

.method private setTouchState(Landroid/view/MotionEvent;I)V
    .registers 7

    iput p2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_21

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->recycle()V

    goto :goto_5a

    :cond_21
    if-eqz p1, :cond_33

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    :cond_33
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    if-eqz v0, :cond_44

    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_44
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v2, :cond_5a

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    :cond_5a
    :goto_5a
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    return-void
.end method

.method private showSlideBar()V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_9

    goto :goto_30

    :cond_9
    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAlpha(F)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_2f

    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/ScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    return-void

    :cond_30
    :goto_30
    return-void
.end method

.method private snapByVelocity(I)V
    .registers 5

    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_25

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_25

    :cond_b
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v0, v1, v2, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->snapByVelocity(II)V

    return-void

    :cond_25
    :goto_25
    return-void
.end method

.method private startHideSlideBar()V
    .registers 4

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_12

    const-wide/16 v1, 0x1f4

    goto :goto_14

    :cond_12
    const-wide/16 v1, 0x0

    :goto_14
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/widget/ScreenView$2;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$2;-><init>(Lmiui/widget/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private toInnerIndex(IZ)I
    .registers 4

    if-nez p2, :cond_e

    invoke-direct {p0}, Lmiui/widget/ScreenView;->isRTL()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->revertIndex(I)I

    move-result v0

    goto :goto_f

    :cond_e
    :goto_e
    move v0, p1

    :goto_f
    return v0
.end method

.method private toOuterIndex(I)I
    .registers 3

    invoke-direct {p0}, Lmiui/widget/ScreenView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->revertIndex(I)I

    move-result v0

    goto :goto_c

    :cond_b
    move v0, p1

    :goto_c
    return v0
.end method

.method private updateArrowIndicatorResource(I)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_28

    nop

    if-gtz p1, :cond_a

    iget v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    goto :goto_c

    :cond_a
    iget v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    :goto_c
    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_23

    iget v1, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    goto :goto_25

    :cond_23
    iget v1, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    :goto_25
    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    :cond_28
    return-void
.end method

.method private updateChildStaticTransformation(Landroid/view/View;)V
    .registers 14

    instance-of v0, p1, Lmiui/widget/ScreenView$Indicator;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float v4, v0, v3

    div-float v3, v1, v3

    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sub-float/2addr v5, v4

    div-float/2addr v5, v0

    iget v6, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    const v7, 0x459c4000    # 5000.0f

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    packed-switch v6, :pswitch_data_1d0

    :pswitch_38
    goto/16 :goto_1cf

    :pswitch_3a
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_1cf

    :pswitch_3f
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_7b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_4c

    goto :goto_7b

    :cond_4c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    mul-float v6, v0, v5

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    const/high16 v6, 0x42b40000    # 90.0f

    neg-float v8, v5

    mul-float/2addr v8, v6

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    invoke-direct {p0, p1, v7}, Lmiui/widget/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    goto/16 :goto_1cf

    :cond_7b
    :goto_7b
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_1cf

    :pswitch_80
    cmpg-float v6, v5, v10

    if-gtz v6, :cond_89

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_1cf

    :cond_89
    sub-float v6, v9, v5

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3ecccccd    # 0.4f

    sub-float v8, v9, v5

    mul-float/2addr v8, v7

    add-float/2addr v8, v6

    sub-float v6, v9, v8

    mul-float/2addr v6, v0

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    sub-float/2addr v9, v8

    mul-float/2addr v9, v1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v9, v6

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationY(F)V

    iget v6, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0, p1, v6}, Lmiui/widget/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    goto/16 :goto_1cf

    :pswitch_c5
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_10a

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_d2

    goto :goto_10a

    :cond_d2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    mul-float v6, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v0

    mul-float/2addr v11, v8

    sub-float/2addr v6, v11

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v8, v5

    add-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    const/high16 v6, 0x42340000    # 45.0f

    neg-float v9, v5

    mul-float/2addr v9, v6

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    invoke-direct {p0, p1, v7}, Lmiui/widget/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    goto/16 :goto_1cf

    :cond_10a
    :goto_10a
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_1cf

    :pswitch_10f
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_149

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_11c

    goto :goto_149

    :cond_11c
    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    cmpg-float v6, v5, v10

    if-gez v6, :cond_131

    move v6, v10

    goto :goto_132

    :cond_131
    move v6, v0

    :goto_132
    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    const/high16 v6, -0x3d4c0000    # -90.0f

    mul-float/2addr v6, v5

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotationY(F)V

    invoke-direct {p0, p1, v7}, Lmiui/widget/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    goto/16 :goto_1cf

    :cond_149
    :goto_149
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_1cf

    :pswitch_14e
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_183

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_15b

    goto :goto_183

    :cond_15b
    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    neg-float v6, v5

    const/high16 v7, 0x41f00000    # 30.0f

    mul-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationY(F)V

    iget v6, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0, p1, v6}, Lmiui/widget/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    goto :goto_1cf

    :cond_183
    :goto_183
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_1cf

    :pswitch_187
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_1c3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_194

    goto :goto_1c3

    :cond_194
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationY(F)V

    iget v6, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0, p1, v6}, Lmiui/widget/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    goto :goto_1cf

    :cond_1c3
    :goto_1c3
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_1cf

    :pswitch_1c7
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_1cf

    :pswitch_1cb
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    nop

    :goto_1cf
    return-void

    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_1cb
        :pswitch_1c7
        :pswitch_187
        :pswitch_14e
        :pswitch_10f
        :pswitch_c5
        :pswitch_38
        :pswitch_80
        :pswitch_3f
        :pswitch_3a
    .end packed-switch
.end method

.method private updateIndicatorPositions(IZ)V
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v1

    if-lez v1, :cond_ab

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    :goto_15
    iget v5, v0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v4, v5, :cond_a8

    add-int v5, v4, v1

    invoke-virtual {v0, v5}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_86

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getLayoutDirection()I

    move-result v12

    invoke-static {v11, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v12

    and-int/lit8 v12, v12, 0x7

    and-int/lit8 v13, v11, 0x70

    const/4 v14, 0x1

    if-eq v12, v14, :cond_57

    const/4 v14, 0x3

    if-eq v12, v14, :cond_54

    const/4 v14, 0x5

    if-eq v12, v14, :cond_4d

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_62

    :cond_4d
    sub-int v14, v2, v7

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    move v9, v14

    goto :goto_62

    :cond_54
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_62

    :cond_57
    sub-int v14, v2, v7

    div-int/lit8 v14, v14, 0x2

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    move v9, v14

    :goto_62
    const/16 v14, 0x10

    if-eq v13, v14, :cond_7b

    const/16 v14, 0x30

    if-eq v13, v14, :cond_78

    const/16 v14, 0x50

    if-eq v13, v14, :cond_71

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_86

    :cond_71
    sub-int v14, v3, v8

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v14, v15

    goto :goto_86

    :cond_78
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_86

    :cond_7b
    sub-int v14, v3, v8

    div-int/lit8 v14, v14, 0x2

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v14, v15

    :cond_86
    :goto_86
    if-nez p2, :cond_9b

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    if-lez v12, :cond_9b

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v12

    if-lez v12, :cond_9b

    move/from16 v12, p1

    int-to-float v13, v12

    invoke-virtual {v5, v13}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_a4

    :cond_9b
    move/from16 v12, p1

    add-int v13, v9, v7

    add-int v14, v10, v8

    invoke-virtual {v5, v9, v10, v13, v14}, Landroid/view/View;->layout(IIII)V

    :goto_a4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    :cond_a8
    move/from16 v12, p1

    goto :goto_ad

    :cond_ab
    move/from16 v12, p1

    :goto_ad
    return-void
.end method

.method private updateScreenOffset()V
    .registers 4

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_28

    :cond_e
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_28

    :cond_16
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_28

    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_28

    :cond_23
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    nop

    :goto_28
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    return-void
.end method

.method private updateSeekPoints(II)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-ltz p1, :cond_22

    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_22

    add-int v2, p1, v1

    if-ge v2, v0, :cond_22

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    const/4 v1, 0x0

    :goto_23
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_3a

    add-int v2, p2, v1

    if-ge v2, v0, :cond_3a

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3a
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .registers 9

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v1, :cond_39

    if-lez v0, :cond_39

    invoke-virtual {v1}, Lmiui/widget/ScreenView$SlideBar;->getSlideWidth()I

    move-result v1

    div-int v2, v1, v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v2, v3

    const/16 v3, 0x30

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v3, v0

    if-gt v3, v1, :cond_20

    const/4 v4, 0x0

    goto :goto_26

    :cond_20
    sub-int v4, v1, v2

    mul-int/2addr v4, p1

    sub-int v5, v3, v1

    div-int/2addr v4, v5

    :goto_26
    nop

    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    add-int v6, v4, v2

    invoke-virtual {v5, v4, v6}, Lmiui/widget/ScreenView$SlideBar;->setPosition(II)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v5}, Lmiui/widget/ScreenView$SlideBar;->invalidate()V

    :cond_39
    return-void
.end method


# virtual methods
.method protected addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .registers 6

    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-ltz p3, :cond_12

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    :cond_12
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 11

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    invoke-direct {p0}, Lmiui/widget/ScreenView;->isRTL()Z

    move-result v1

    const/4 v2, 0x0

    if-gez p2, :cond_10

    if-eqz v1, :cond_e

    const/4 v2, 0x0

    :cond_e
    move p2, v0

    goto :goto_18

    :cond_10
    if-eqz v1, :cond_14

    sub-int v2, v0, p2

    :cond_14
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_18
    if-eqz v1, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, p2

    :goto_1d
    iget-object v4, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v4, :cond_2a

    invoke-direct {p0}, Lmiui/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v5

    sget-object v6, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5, v3, v6}, Lmiui/widget/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2a
    iget v4, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    invoke-direct {p0}, Lmiui/widget/ScreenView;->refreshScrollBound()V

    invoke-super {p0, p1, v3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public allowLongPress()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .registers 8

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x4e6e6b28    # 1.0E9f

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    sget-object v3, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    float-to-int v0, v0

    invoke-virtual {v3, p0, v0}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v0, v3

    div-float/2addr v0, v2

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    sget-object v0, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollYDirectly(Landroid/view/View;I)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidateOnAnimation()V

    goto :goto_94

    :cond_32
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_56

    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    iput v4, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_94

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapEnd(Lmiui/widget/ScreenView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    goto :goto_94

    :cond_56
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v3, :cond_94

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v0, v3

    div-float/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    sub-float v2, v0, v2

    sget v3, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lmiui/widget/ScreenView;->mTouchX:F

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget-object v4, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v3, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, p0, v5}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_91

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_94

    :cond_91
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidate()V

    :cond_94
    :goto_94
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->updateSlidePointPosition(I)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->updateArrowIndicatorResource(I)V

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ne p2, v2, :cond_f

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v2, :cond_23

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    return v1

    :cond_f
    const/16 v2, 0x42

    if-ne p2, v2, :cond_23

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_23

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    return v1

    :cond_23
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    invoke-direct {p0, p2}, Lmiui/widget/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .registers 3

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->doGetScreen(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .registers 3

    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    goto :goto_a

    :cond_8
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    :goto_a
    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->toOuterIndex(I)I

    move-result v1

    return v1
.end method

.method public getScreen(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->doGetScreen(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getScreenCount()I
    .registers 2

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    return v0
.end method

.method public getScreenTransitionType()I
    .registers 2

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    return v0
.end method

.method public getSeekPointView(I)Landroid/widget/ImageView;
    .registers 4

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getTouchState()I
    .registers 2

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method public getVisibleRange()I
    .registers 2

    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->computeScroll()V

    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_28

    if-eq v0, v4, :cond_24

    if-eq v0, v1, :cond_13

    if-eq v0, v2, :cond_24

    goto :goto_57

    :cond_13
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_57

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-direct {p0, p1, v4}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_57

    :cond_24
    invoke-direct {p0, p1, v3}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_57

    :cond_28
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4e

    iput-boolean v4, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    goto :goto_57

    :cond_4e
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, p1, v4}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    nop

    :cond_57
    :goto_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v1, v0, :cond_62

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    :cond_62
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-nez v0, :cond_6c

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v0, :cond_6d

    if-eq v0, v2, :cond_6d

    :cond_6c
    move v3, v4

    :cond_6d
    return v3
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_40

    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3d

    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_40
    iget-boolean v3, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v3, :cond_53

    iget v3, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v5, v3, v4

    if-lez v5, :cond_53

    rem-int v4, v3, v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v3, v1}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    goto :goto_60

    :cond_53
    iget v3, p0, Lmiui/widget/ScreenView;->mPrevScreenWidth:I

    if-lez v3, :cond_60

    iget v4, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    if-eq v3, v4, :cond_60

    iget v3, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v3, v1}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    :cond_60
    :goto_60
    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iput v1, p0, Lmiui/widget/ScreenView;->mPrevScreenWidth:I

    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    iput p1, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    iput p2, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    iget v4, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v3, v4, :cond_55

    add-int v4, v3, v2

    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v6

    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v7, v8}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_55
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_58
    if-ge v5, v2, :cond_9f

    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v8

    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v9

    iget v10, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v9, v10}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    nop

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_9f
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    nop

    invoke-static {v1, p1}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v5

    invoke-static {v0, p2}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lmiui/widget/ScreenView;->setMeasuredDimension(II)V

    const/4 v5, 0x1

    if-lez v2, :cond_fd

    iput v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    invoke-direct {p0}, Lmiui/widget/ScreenView;->updateScreenOffset()V

    iget v6, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v6, :cond_f8

    iget v7, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    int-to-float v8, v6

    iget v9, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    div-int/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    :cond_f8
    iget v6, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v6}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    :cond_fd
    iget-boolean v6, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-eqz v6, :cond_113

    iget v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-lez v6, :cond_113

    const/4 v6, 0x0

    iput-boolean v6, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    invoke-virtual {p0, v6}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    iget v6, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    :cond_113
    return-void
.end method

.method public onPause()V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_23
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lmiui/widget/ScreenView$SavedState;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    iget v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    if-eq v0, v1, :cond_89

    const/4 v3, 0x2

    if-eq v0, v3, :cond_49

    const/4 v3, 0x3

    if-eq v0, v3, :cond_89

    const/4 v3, 0x6

    if-eq v0, v3, :cond_21

    goto/16 :goto_96

    :cond_21
    nop

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    if-ne v3, v4, :cond_96

    if-nez v0, :cond_37

    move v2, v1

    :cond_37
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iget-object v5, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v5, v4}, Lmiui/widget/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_96

    :cond_49
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_56

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_56
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_96

    iget v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6c

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    iget v3, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    :cond_6c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v4, v3

    iput v3, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_85

    iget v5, p0, Lmiui/widget/ScreenView;->mTouchX:F

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v5, v2}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_88

    :cond_85
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    :goto_88
    goto :goto_96

    :cond_89
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_92

    iget v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->snapByVelocity(I)V

    :cond_92
    invoke-direct {p0, p1, v2}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    nop

    :cond_96
    :goto_96
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    return v1
.end method

.method public removeAllScreens()V
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->removeScreensInLayout(II)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method protected removeIndicator(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_14

    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :cond_14
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "The view passed through the parameter must be indicator."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeScreen(I)V
    .registers 6

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_3b

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2b

    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-nez v2, :cond_1d

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    goto :goto_2b

    :cond_1d
    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_2b

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_32

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewAt(I)V

    :cond_32
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    sub-int/2addr v0, v3

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :cond_3b
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view specified by the index must be a screen."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeScreensInLayout(II)V
    .registers 6

    invoke-direct {p0}, Lmiui/widget/ScreenView;->isRTL()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_f
    move v0, p1

    :goto_10
    if-ltz v0, :cond_2f

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    if-lt v0, v2, :cond_19

    goto :goto_2f

    :cond_19
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v2, :cond_29

    invoke-virtual {v2, v0, p2}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    :cond_29
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void

    :cond_2f
    :goto_2f
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_19

    iget-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    return v1

    :cond_19
    :goto_19
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    const/4 v1, 0x1

    return v1

    :cond_1e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    return v1
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    return-void
.end method

.method public scrollTo(II)V
    .registers 5

    iget v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float v0, p1

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method public scrollToScreen(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->doScrollToScreen(IZ)V

    return-void
.end method

.method public setAllowLongPress(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .registers 8

    if-eqz p1, :cond_63

    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-nez v0, :cond_40

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x13

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    invoke-virtual {v1, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    iget-object v1, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v2, Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_4f

    :cond_40
    nop

    invoke-virtual {v0}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {v1}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    :goto_4f
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_75

    :cond_63
    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_75

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    iput-object v0, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    goto :goto_76

    :cond_75
    :goto_75
    nop

    :goto_76
    return-void
.end method

.method public setArrowIndicatorResource(IIII)V
    .registers 5

    iput p1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    iput p2, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    iput p3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    iput p4, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .registers 2

    iput p1, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    return-void
.end method

.method public setCurrentScreen(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSlideBarVisibility(I)V

    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public setOverScrollRatio(F)V
    .registers 2

    iput p1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    invoke-direct {p0}, Lmiui/widget/ScreenView;->refreshScrollBound()V

    return-void
.end method

.method public setOvershootTension(F)V
    .registers 3

    iput p1, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz v0, :cond_9

    # setter for: Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F
    invoke-static {v0, p1}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->access$202(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F

    :cond_9
    return-void
.end method

.method public setScreenAlignment(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    return-void
.end method

.method public setScreenOffset(I)V
    .registers 3

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .registers 5

    if-eqz p1, :cond_13

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lmiui/widget/ScreenView;->setPadding(IIII)V

    return-void

    :cond_13
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The padding parameter can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScreenSnapDuration(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    return-void
.end method

.method public setScreenTransitionType(I)V
    .registers 7

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    if-eq p1, v0, :cond_44

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    const/16 v0, 0x10e

    const/16 v1, 0x12c

    const/16 v2, 0x14a

    const v3, 0x3fa66666    # 1.3f

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_46

    :pswitch_13
    goto :goto_44

    :pswitch_14
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_44

    :pswitch_1b
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_44

    :pswitch_22
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_44

    :pswitch_29
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_44

    :pswitch_30
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_44

    :pswitch_37
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_44

    :pswitch_3e
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    :cond_44
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_37
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_22
        :pswitch_13
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method

.method public setScrollWholeScreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6

    if-eqz p1, :cond_4e

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_3c

    new-instance v0, Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setLayoutDirection(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lmiui/widget/ScreenView$SeekBarIndicator;->setGravity(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setAnimationCacheEnabled(Z)V

    const/4 v0, 0x0

    :goto_22
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_36

    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_36
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_58

    :cond_3c
    invoke-virtual {v0}, Lmiui/widget/ScreenView$SeekBarIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_58

    :cond_48
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_58

    :cond_4e
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_58

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    :cond_58
    :goto_58
    return-void
.end method

.method public setSeekBarVisibility(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setVisibility(I)V

    return-void
.end method

.method public setSeekPointResource(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_slide_bar:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_slide_bar_bg:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/widget/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .registers 8

    iput-boolean p4, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    iget-object v1, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v1, :cond_28

    new-instance v1, Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2, p3}, Lmiui/widget/ScreenView$SlideBar;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    new-instance v2, Lmiui/widget/ScreenView$SliderTouchListener;

    invoke-direct {v2, p0, v0}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView$SlideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAnimationCacheEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_35

    :cond_28
    invoke-virtual {v1, p1}, Lmiui/widget/ScreenView$SlideBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_35

    :cond_2c
    iget-object v1, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v1, :cond_35

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    :cond_35
    :goto_35
    return-void
.end method

.method public setSlideBarVisibility(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    return-void
.end method

.method public setTouchSlop(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    if-nez p1, :cond_5

    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setVisibleExtentionRatio(F)V
    .registers 2

    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    return-void
.end method

.method protected snapByVelocity(II)V
    .registers 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_e

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_45

    :cond_e
    const/4 v1, 0x2

    if-ne p2, v1, :cond_23

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_23

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_45

    :cond_23
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2c

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_45

    :cond_2c
    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v2, :cond_35

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    goto :goto_36

    :cond_35
    move v2, v0

    :goto_36
    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v2

    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    :goto_45
    return-void
.end method

.method public snapToScreen(I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result v1

    invoke-virtual {p0, v1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    return-void
.end method

.method protected snapToScreen(IIZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    return-void
.end method

.method protected snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .registers 15

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    goto :goto_35

    :cond_23
    nop

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    :goto_35
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v1, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v1, :cond_51

    invoke-interface {v1, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapCancelled(Lmiui/widget/ScreenView;)V

    :cond_51
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_56
    iput-object p4, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-eqz p3, :cond_64

    iget-object v1, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v1, v0, p2}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    goto :goto_69

    :cond_64
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v1}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    :goto_69
    iget v1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v3

    iget v3, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v3

    sub-int v3, v1, v3

    if-nez v3, :cond_7a

    return-void

    :cond_7a
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v4, v5

    iget v5, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    div-int/2addr v4, v5

    if-lez p2, :cond_93

    int-to-float v5, v4

    int-to-float v6, p2

    const v7, 0x451c4000    # 2500.0f

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    :cond_93
    iget v5, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gt v0, v2, :cond_a5

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    goto :goto_a6

    :cond_a5
    move v2, v4

    :goto_a6
    iget-object v4, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v7, v3

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    return-void
.end method

.method public snapToScreen(ILmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result v1

    invoke-virtual {p0, v1, v0, v0, p2}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    return-void
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .registers 3

    return-void
.end method
