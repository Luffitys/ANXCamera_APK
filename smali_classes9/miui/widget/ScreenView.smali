.class public Lmiui/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source ""


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
    .locals 4

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
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x44a00000    # 1280.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput v0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mPrevScreenWidth:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const v2, 0x3eaaaaab

    iput v2, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iput v2, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    const/16 p1, 0x12c

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    const p1, 0x3fa66666    # 1.3f

    iput p1, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    new-instance p1, Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object p1, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x44a00000    # 1280.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput p2, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput p2, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput p2, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput p2, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput p2, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    new-instance p2, Lmiui/widget/ScreenView$1;

    invoke-direct {p2, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object p2, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    const/4 p2, 0x0

    iput p2, p0, Lmiui/widget/ScreenView;->mPrevScreenWidth:I

    iput p2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    const/4 p3, -0x1

    iput p3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    iput p2, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    iput p2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    iput p3, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iput v0, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    const/16 p1, 0x12c

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    iput p2, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    const p1, 0x3fa66666    # 1.3f

    iput p1, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    new-instance p1, Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object p1, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/ScreenView;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/ScreenView;->startHideSlideBar()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1100(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1200(Lmiui/widget/ScreenView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    return-void
.end method

.method static synthetic access$1300(Lmiui/widget/ScreenView;)I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    return p0
.end method

.method static synthetic access$1400(Lmiui/widget/ScreenView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    return-void
.end method

.method static synthetic access$1500(Lmiui/widget/ScreenView;)I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return p0
.end method

.method static synthetic access$500(Lmiui/widget/ScreenView;)Lmiui/widget/ScreenView$SlideBar;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    return-object p0
.end method

.method static synthetic access$700(Lmiui/widget/ScreenView;)I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    return p0
.end method

.method static synthetic access$800(Lmiui/widget/ScreenView;)F
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    return p0
.end method

.method static synthetic access$900()Lcom/miui/internal/variable/Android_View_View_class;
    .locals 1

    sget-object v0, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    return-object v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget p0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private doGetScreen(IZ)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private doScrollToScreen(IZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result p1

    iget-boolean p2, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int p2, p1, p2

    sub-int/2addr p1, p2

    :cond_0
    iget p2, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    iget v0, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->measure(II)V

    iget p2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr p2, p1

    iget p1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    return-void
.end method

.method private doSetCurrentScreen(IZ)V
    .locals 4

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result p1

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    iget-boolean p1, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->doScrollToScreen(IZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    return-void
.end method

.method private initScreenView()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setMaximumSnapVelocity(I)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lmiui/widget/ScreenView$ScaleDetectorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private isRTL()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method private refreshScrollBound()V
    .locals 3

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

    if-nez v1, :cond_0

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

    goto :goto_0

    :cond_0
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

    :goto_0
    iput v0, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    return-void
.end method

.method private revertIndex(I)I
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 4

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

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget p0, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    mul-int/2addr p0, p1

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setCameraDistance(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getCameraDistance()F

    move-result p0

    cmpl-float p0, p0, p2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    return-void
.end method

.method private setCurrentScreenInner(I)V
    .locals 1

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    iput p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    return-void
.end method

.method private setTouchState(Landroid/view/MotionEvent;I)V
    .locals 3

    iput p2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget p2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez p2, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iput-boolean v2, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    iget-object p1, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->recycle()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    :cond_2
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    :cond_3
    iget p1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiui/widget/ScreenView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    :cond_4
    :goto_1
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    return-void
.end method

.method private showSlideBar()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private snapByVelocity(I)V
    .locals 3

    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v0, v1, v2, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/ScreenView;->snapByVelocity(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startHideSlideBar()V
    .locals 3

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
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
    .locals 0

    if-nez p2, :cond_1

    invoke-direct {p0}, Lmiui/widget/ScreenView;->isRTL()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->revertIndex(I)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private toOuterIndex(I)I
    .locals 1

    invoke-direct {p0}, Lmiui/widget/ScreenView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->revertIndex(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_2

    if-gtz p1, :cond_0

    iget v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    iget p0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method private updateChildStaticTransformation(Landroid/view/View;)V
    .locals 10

    instance-of v0, p1, Lmiui/widget/ScreenView$Indicator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float v4, v0, v3

    div-float v3, v1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    sub-float/2addr v5, v4

    div-float/2addr v5, v0

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    const v6, 0x459c4000    # 5000.0f

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_5

    :pswitch_2
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v8, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    const/high16 v0, 0x42b40000    # 90.0f

    goto/16 :goto_2

    :pswitch_3
    cmpg-float v2, v5, v9

    if-gtz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    sub-float v2, v8, v5

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    sub-float/2addr v8, v2

    mul-float/2addr v0, v8

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v1, v8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    :goto_1
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    iget v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    goto/16 :goto_5

    :pswitch_4
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v8, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    mul-float v1, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v7, v5

    add-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    const/high16 v0, 0x42340000    # 45.0f

    :goto_2
    neg-float v1, v5

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    :goto_3
    invoke-direct {p0, p1, v6}, Lmiui/widget/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    goto/16 :goto_5

    :pswitch_5
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    cmpg-float v1, v5, v9

    if-gez v1, :cond_5

    move v0, v9

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/view/View;->setRotationY(F)V

    goto :goto_3

    :pswitch_6
    cmpl-float v0, v5, v9

    if-eqz v0, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    neg-float v0, v5

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_1

    :pswitch_7
    cmpl-float v0, v5, v9

    if-eqz v0, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v8, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    add-float/2addr v0, v7

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_0

    :cond_8
    :goto_4
    :pswitch_8
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateIndicatorPositions(IZ)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v4, v5, :cond_8

    add-int v5, v4, v0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    and-int/lit8 v9, v9, 0x70

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    const/4 v11, 0x5

    if-eq v10, v11, :cond_1

    :cond_0
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_1
    sub-int v10, v1, v7

    goto :goto_1

    :cond_2
    sub-int v10, v1, v7

    div-int/lit8 v10, v10, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    :goto_1
    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    :goto_2
    const/16 v11, 0x10

    if-eq v9, v11, :cond_5

    const/16 v11, 0x30

    if-eq v9, v11, :cond_4

    const/16 v11, 0x50

    if-eq v9, v11, :cond_3

    goto :goto_3

    :cond_3
    sub-int v9, v2, v8

    goto :goto_4

    :cond_4
    :goto_3
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_5
    sub-int v9, v2, v8

    div-int/lit8 v9, v9, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v11

    :goto_4
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v6, v9, v6

    goto :goto_5

    :cond_6
    move v6, v3

    move v10, v6

    :goto_5
    if-nez p2, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    if-lez v9, :cond_7

    int-to-float v6, p1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_6

    :cond_7
    add-int/2addr v7, v10

    add-int/2addr v8, v6

    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method private updateScreenOffset()V
    .locals 3

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    :goto_0
    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    :goto_1
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    return-void
.end method

.method private updateSeekPoints(II)V
    .locals 5

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v1

    :goto_0
    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v2, v3, :cond_0

    add-int v3, p1, v2

    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, p1, :cond_1

    add-int p1, p2, v1

    if-ge p1, v0, :cond_1

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 4

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

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

    if-gt v3, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int v0, v1, v2

    mul-int/2addr v0, p1

    sub-int/2addr v3, v1

    div-int p1, v0, v3

    :goto_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    add-int/2addr v2, p1

    invoke-virtual {v0, p1, v2}, Lmiui/widget/ScreenView$SlideBar;->setPosition(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 1

    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, -0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    invoke-direct {p0}, Lmiui/widget/ScreenView;->isRTL()Z

    move-result v1

    const/4 v2, 0x0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    sub-int v2, v0, p2

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iget-object p2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lmiui/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget p2, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    invoke-direct {p0}, Lmiui/widget/ScreenView;->refreshScrollBound()V

    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public allowLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    return p0
.end method

.method public computeScroll()V
    .locals 6

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x4e6e6b28    # 1.0E9f

    if-eqz v0, :cond_0

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

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

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapEnd(Lmiui/widget/ScreenView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v3, :cond_3

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget-object v4, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v4, p0, v2}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->updateSlidePointPosition(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->updateArrowIndicatorResource(I)V

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v2, :cond_1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    return v1

    :cond_0
    const/16 v2, 0x42

    if-ne p2, v2, :cond_1

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-direct {p0, p2}, Lmiui/widget/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 2

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->doGetScreen(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    :goto_0
    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->toOuterIndex(I)I

    move-result p0

    return p0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->doGetScreen(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenCount()I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    return p0
.end method

.method public getScreenTransitionType()I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    return p0
.end method

.method public getSeekPointView(I)Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method protected getTouchState()I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return p0
.end method

.method public getVisibleRange()I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->computeScroll()V

    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v3}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    :cond_2
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

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :goto_0
    invoke-direct {p0, p1, v4}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v1, v0, :cond_5

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    :cond_5
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-nez p1, :cond_6

    iget p0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz p0, :cond_7

    if-eq p0, v2, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result p1

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p3, p1, :cond_1

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v0, v1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v2, v3

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p5, p4, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget p3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int p4, p1, p3

    if-lez p4, :cond_2

    rem-int p3, p1, p3

    sub-int/2addr p1, p3

    :goto_1
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    goto :goto_2

    :cond_2
    iget p1, p0, Lmiui/widget/ScreenView;->mPrevScreenWidth:I

    if-lez p1, :cond_3

    iget p3, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    if-eq p1, p3, :cond_3

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    goto :goto_1

    :cond_3
    :goto_2
    iget p1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iput p1, p0, Lmiui/widget/ScreenView;->mPrevScreenWidth:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    iput p1, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    iput p2, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v2, v5, :cond_0

    add-int v5, v2, v0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    iget v9, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v8, v9

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v8, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    iget v6, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v4, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    invoke-static {v2, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v2

    invoke-static {v3, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p2, 0x1

    if-lez v0, :cond_3

    iput v5, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    invoke-direct {p0}, Lmiui/widget/ScreenView;->updateScreenOffset()V

    iget p1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez p1, :cond_2

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    int-to-float v2, p1

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    div-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    :cond_2
    iget p1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    :cond_3
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-lez p1, :cond_4

    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

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

    iget-object p0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lmiui/widget/ScreenView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iput p0, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    if-ne v3, v4, :cond_a

    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_5
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_a

    iget v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    iget v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p1

    iput p1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_7

    iget p1, p0, Lmiui/widget/ScreenView;->mTouchX:F

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    goto :goto_0

    :cond_8
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->snapByVelocity(I)V

    :cond_9
    invoke-direct {p0, p1, v2}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_a
    :goto_0
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    return v1
.end method

.method public removeAllScreens()V
    .locals 2

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->removeScreensInLayout(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method protected removeIndicator(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The view passed through the parameter must be indicator."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeScreen(I)V
    .locals 4

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-nez v2, :cond_0

    const/4 p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1, v3}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_1

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_2
    iget p1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    sub-int/2addr p1, v3

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :cond_3
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The view specified by the index must be a screen."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeScreensInLayout(II)V
    .locals 2

    invoke-direct {p0}, Lmiui/widget/ScreenView;->isRTL()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    :cond_0
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    :cond_2
    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewAt(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViews(II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2

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
    .locals 2

    iget v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiui/widget/ScreenView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float p1, v0

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    iget p1, p0, Lmiui/widget/ScreenView;->mTouchX:F

    float-to-int p1, p1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method public scrollToScreen(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->doScrollToScreen(IZ)V

    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x13

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v2, Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p0, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, p0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    iget-object p1, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    iput-object p1, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    :cond_2
    :goto_1
    return-void
.end method

.method public setArrowIndicatorResource(IIII)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    iput p2, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    iput p3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    iput p4, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->doSetCurrentScreen(IZ)V

    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSlideBarVisibility(I)V

    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    invoke-direct {p0}, Lmiui/widget/ScreenView;->refreshScrollBound()V

    return-void
.end method

.method public setOvershootTension(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    iget-object p0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->access$202(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F

    :cond_0
    return-void
.end method

.method public setScreenAlignment(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    return-void
.end method

.method public setScreenOffset(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    const/4 p1, 0x0

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The padding parameter can not be null."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScreenSnapDuration(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 5

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    const/16 v0, 0x10e

    const/16 v1, 0x12c

    const/16 v2, 0x14a

    const v3, 0x3fa66666    # 1.3f

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    :goto_0
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimationCacheEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    :cond_3
    :goto_1
    return-void
.end method

.method public setSeekBarVisibility(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setSeekPointResource(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_slide_bar:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_slide_bar_bg:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/widget/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .locals 2

    iput-boolean p4, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lmiui/widget/ScreenView$SlideBar;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    new-instance p2, Lmiui/widget/ScreenView$SliderTouchListener;

    invoke-direct {p2, p0, p4}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setAnimationCacheEnabled(Z)V

    iget-object p2, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, p2, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    iput-object p4, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSlideBarVisibility(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setVisibleExtentionRatio(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_0

    iget p2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, p2

    invoke-virtual {p0, v1, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    iget p2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    iget p2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    :goto_0
    invoke-virtual {p0, p2, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_2

    :cond_2
    iget p1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean p2, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    mul-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    shr-int/2addr p1, v0

    add-int/2addr p2, p1

    iget p1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr p2, p1

    const/4 p1, 0x0

    goto :goto_0

    :goto_2
    return-void
.end method

.method public snapToScreen(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    return-void
.end method

.method protected snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 9

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iput p1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget p1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapCancelled(Lmiui/widget/ScreenView;)V

    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput-object p4, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-eqz p3, :cond_4

    iget-object p3, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {p3, p1, p2}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {p3}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    :goto_1
    iget p3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget p4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr p3, p4

    iget p4, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p4

    sub-int v6, p3, p4

    if-nez v6, :cond_5

    return-void

    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr p3, p4

    iget p4, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    div-int/2addr p3, p4

    if-lez p2, :cond_6

    int-to-float p4, p3

    int-to-float p2, p2

    const v0, 0x451c4000    # 2500.0f

    div-float/2addr p2, v0

    div-float/2addr p4, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p4, p2

    float-to-int p2, p4

    add-int/2addr p3, p2

    :cond_6
    iget p2, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p1, v2, :cond_7

    iget p1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v8, p1

    goto :goto_2

    :cond_7
    move v8, p2

    :goto_2
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public snapToScreen(ILmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->toInnerIndex(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0, v0, p2}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    return-void
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0

    return-void
.end method
