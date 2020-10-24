.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final ALPHA_TIMEOUT:I = 0x5dc

.field public static final CENTER_CAPTURE:I = 0x2

.field public static final CENTER_CIRCLE:I = 0x1

.field public static final CENTER_LOCK:I = 0x5

.field public static final CENTER_MOON:I = 0x4

.field public static final CENTER_NONE:I = 0x0

.field public static final CENTER_SUN:I = 0x3

.field public static final CURSOR_GATHER:I = 0x1

.field public static final CURSOR_NORMAL:I = 0x0

.field public static final CURSOR_SLIDE_BACK:I = 0x2

.field private static final DISAPPEAR_TIME:I = 0x5dc

.field private static final DRAG_MODE_ADJUST_EV:I = 0x1

.field private static final DRAG_MODE_MOVE_EXPOSURE:I = 0x3

.field private static final DRAG_MODE_MOVE_FOCUS:I = 0x2

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final END_DISAPPEAR_TIMEOUT:I = 0x320

.field private static final GAP_NUM:F

.field public static final MAX_SLIDE_DISTANCE:I

.field private static final MODE_AUTO:I = 0x0

.field private static final MODE_FLAG_ANY:I = 0x0

.field private static final MODE_FLAG_EXPOSURE:I = 0x2

.field private static final MODE_FLAG_FOCUS:I = 0x1

.field private static final MODE_MANUAL_COMBO:I = 0x1

.field private static final MODE_MANUAL_METERING_ONLY:I = 0x3

.field private static final MODE_MANUAL_SPLIT:I = 0x2

.field private static final MSG_ALPHA:I = 0x8

.field private static final MSG_ANIMATE_EV_CENTER:I = 0x7

.field private static final MSG_FINISH_DISAPPEAR:I = 0x5

.field private static final MSG_RESET_CENTER:I = 0x6

.field private static final MSG_START_DISAPPEAR:I = 0x4

.field public static final NORMAL_CAPTURE:I = 0x0

.field public static final NORMAL_EV:I = 0x1

.field public static final SET_BY_AUTO_DISAPPEAR:I = 0x6

.field public static final SET_BY_AUTO_FOCUS_MOVING:I = 0x3

.field public static final SET_BY_CANCEL_PREVIOUS_FOCUS:I = 0x2

.field public static final SET_BY_CLEAR_VIEW:I = 0x7

.field public static final SET_BY_DEVICE_KEEP_MOVING:I = 0x4

.field public static final SET_BY_INITIALIZE:I = 0x8

.field public static final SET_BY_RESET_CENTER:I = 0x5

.field public static final SET_BY_RESET_TO_FACE_AREA:I = 0x9

.field public static final SET_BY_TOUCH_DOWN:I = 0x1

.field private static final START_DISAPPEAR_TIMEOUT:I = 0x1388

.field private static final STATE_CHANGE_TIME:I = 0x1f4

.field private static final STATE_FAIL:I = 0x3

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_START:I = 0x1

.field private static final STATE_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TRIANGLE_BASE_DIS:I

.field public static final ZERO_MINUS:I = 0x3

.field public static final ZERO_PLUS:I = 0x4


# instance fields
.field private final MIN_DRAG_DISTANCE:I

.field private mActivity:Lcom/android/camera/Camera;

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mAdjustedDoneTime:J

.field private mBeingDragged:Z

.field private mBeingEvAdjusted:Z

.field private mBottomRelative:I

.field private mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

.field private mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

.field private mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field private mCaptureTapableRect:Landroid/graphics/Rect;

.field private mCenterFlag:I

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDistanceY:I

.field private mCurrentItem:I

.field private mCurrentMinusCircleCenter:I

.field private mCurrentMinusCircleRadius:F

.field private mCurrentMode:I

.field private mCurrentRadius:I

.field private mCurrentRayBottom:I

.field private mCurrentRayHeight:I

.field private mCurrentRayWidth:I

.field private mCurrentViewState:I

.field private mCursorState:I

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDragMode:I

.field private mEVAnimationRatio:F

.field private mEVAnimationStartTime:J

.field private mEVCaptureRatio:F

.field private mEvValue:F

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mExposureX:I

.field private mExposureY:I

.field private mFailTime:J

.field private mFocusMode:Ljava/lang/String;

.field private mFocusMoving:Z

.field private mFocusX:I

.field private mFocusY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDown:Z

.field private volatile mIsDraw:Z

.field private mIsEvAdjustable:Z

.field private mIsRecording:Z

.field private mIsSplitFocusExposureDown:Z

.field private mIsTouchFocus:Z

.field private mLastItem:I

.field private mLockBodyBitmap:Landroid/graphics/Bitmap;

.field private mLockExposureBitmap:Landroid/graphics/Bitmap;

.field private mLockFocusBitmap:Landroid/graphics/Bitmap;

.field private mLockHeadBitmap:Landroid/graphics/Bitmap;

.field private mMode:I

.field private mRecordTapableRect:Landroid/graphics/Rect;

.field private mRotation:I

.field private mScrollDistanceY:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0OO()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const v0, 0x42dc999a    # 110.3f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mFocusMode:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    new-instance v0, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080073

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08048d

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/FocusView;->mLockHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08048c

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/FocusView;->mLockBodyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08022b

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08023c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mLockFocusBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08022a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mLockExposureBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mLockHeadBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mLockBodyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setLockIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mLockFocusBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setAeAfLockedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    return-void
.end method

.method static synthetic OooO00o(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/FocusView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/FocusView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->startAlphaAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/FocusView;FFF)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p0
.end method

.method static synthetic access$2302(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p0
.end method

.method static synthetic access$2402(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method static synthetic access$2500()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetAlpha()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/ui/FocusView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/FocusView;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/ui/FocusView;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetCenter()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method private calculateAttribute()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {v0, v1}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v1

    iget v2, v0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {v0, v2}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v2

    iget v3, v0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v4, 0xa7

    if-eq v3, v4, :cond_9

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v3, v0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const/high16 v5, 0x40c00000    # 6.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x40f00000    # 7.5f

    const/high16 v8, 0x3fc00000    # 1.5f

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_6

    const v14, 0x3e4ccccd    # 0.2f

    const v15, 0x3f69fbe7    # 0.914f

    const/high16 v16, 0x40400000    # 3.0f

    const/high16 v17, 0x3f800000    # 1.0f

    if-eq v3, v10, :cond_4

    if-eq v3, v9, :cond_2

    :cond_1
    :goto_0
    iput v4, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_3

    :cond_2
    iget v3, v0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v4, v3, v12

    if-gez v4, :cond_3

    mul-float/2addr v3, v13

    sub-float v17, v17, v2

    mul-float v17, v17, v3

    add-float v2, v2, v17

    mul-float/2addr v2, v13

    add-float/2addr v2, v5

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v2, v1

    mul-float/2addr v15, v3

    add-float/2addr v15, v12

    mul-float/2addr v2, v15

    float-to-int v2, v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    int-to-float v1, v1

    mul-float/2addr v3, v14

    add-float/2addr v3, v6

    mul-float/2addr v1, v3

    goto/16 :goto_1

    :cond_3
    sub-float/2addr v3, v12

    mul-float/2addr v3, v13

    invoke-static {v8}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    mul-float v2, v1, v3

    sub-float v17, v17, v3

    sub-float v2, v2, v17

    mul-float v4, v2, v13

    add-float/2addr v4, v11

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    mul-float v2, v2, v16

    add-float/2addr v2, v7

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    mul-float v17, v17, v16

    add-float v17, v17, v11

    mul-float/2addr v1, v13

    mul-float/2addr v1, v3

    add-float v17, v17, v1

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    goto/16 :goto_2

    :cond_4
    iget v3, v0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v4, v3, v12

    if-gtz v4, :cond_5

    mul-float/2addr v3, v13

    invoke-static {v8}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    sub-float v17, v17, v3

    mul-float v1, v2, v17

    sub-float/2addr v1, v3

    mul-float v4, v1, v13

    add-float/2addr v4, v11

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    mul-float v1, v1, v16

    add-float/2addr v1, v7

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    mul-float v3, v3, v16

    add-float/2addr v3, v11

    mul-float/2addr v2, v13

    mul-float v2, v2, v17

    add-float/2addr v3, v2

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    goto :goto_2

    :cond_5
    sub-float/2addr v3, v12

    mul-float/2addr v3, v13

    const/high16 v2, 0x41000000    # 8.0f

    sub-float v1, v17, v1

    mul-float/2addr v1, v3

    mul-float/2addr v1, v13

    sub-float/2addr v2, v1

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v2, v1

    sub-float v17, v17, v3

    mul-float v15, v15, v17

    add-float/2addr v15, v12

    mul-float/2addr v2, v15

    float-to-int v2, v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    int-to-float v1, v1

    mul-float v17, v17, v14

    add-float v17, v17, v6

    mul-float v1, v1, v17

    goto :goto_1

    :cond_6
    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, v0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-ge v2, v3, :cond_7

    mul-float/2addr v1, v13

    add-float/2addr v1, v5

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v2, v1

    mul-float/2addr v2, v12

    float-to-int v2, v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    :goto_1
    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iput v9, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_3

    :cond_7
    invoke-static {v8}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    invoke-static {v11}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    invoke-static {v11}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    :goto_2
    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iput v10, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_3

    :cond_8
    iget-boolean v1, v0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    goto/16 :goto_0

    :goto_3
    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelResetCenter()V

    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    iget v0, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iput v0, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    :cond_9
    :goto_4
    return-void
.end method

.method private clearMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getCurrentAngle()I
    .locals 7

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x168

    const/4 v5, 0x0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, v4

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {p0}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p0

    div-int/2addr v0, p0

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    invoke-static {v0, v5, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v0, p0

    sget p0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v0, v5, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v1, v0, 0x2

    if-lt p0, v1, :cond_2

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p0, v1

    mul-int/2addr p0, v4

    div-int/2addr v0, v3

    div-int/2addr p0, v0

    goto :goto_1

    :cond_2
    move p0, v5

    :goto_1
    invoke-static {p0, v5, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    :goto_2
    rsub-int v5, p0, 0x168

    goto :goto_4

    :cond_3
    const/16 v3, 0x87

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x43070000    # 135.0f

    if-ne v0, v2, :cond_4

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr p0, v4

    mul-float/2addr p0, v6

    float-to-int p0, p0

    :goto_3
    invoke-static {p0, v5, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    goto :goto_4

    :cond_4
    if-ne v0, v1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p0, v1

    mul-float/2addr p0, v4

    sub-float/2addr v0, p0

    mul-float/2addr v0, v6

    float-to-int p0, v0

    goto :goto_3

    :cond_5
    :goto_4
    return v5
.end method

.method private getInterpolation(F)F
    .locals 4

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    return p0
.end method

.method private getItemByCoordinate()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    sget v1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {p0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method private getItemRatio(I)F
    .locals 2

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {p0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-ltz v0, :cond_0

    sub-float/2addr p1, p0

    :cond_0
    mul-float/2addr p1, v1

    return p1
.end method

.method private handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mRecordTapableRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureTapableRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetAlpha()V

    iput-boolean v10, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v11, :cond_1

    sget p1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    int-to-float p1, p1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result p1

    if-eqz p1, :cond_4

    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_2

    :cond_1
    if-ne p1, v12, :cond_4

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v6, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v7, p1

    sget p1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    int-to-float v8, p1

    move-object v3, p0

    move v4, v1

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_2

    iput v12, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    iput-boolean v10, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    :goto_1
    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v6, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v7, p1

    sget p1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    int-to-float v8, p1

    move-object v3, p0

    move v4, v1

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_3

    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_1

    :cond_3
    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    :cond_4
    :goto_2
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne p1, v12, :cond_5

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    :goto_3
    int-to-float p1, p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto/16 :goto_8

    :cond_5
    if-ne p1, v9, :cond_12

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v12, :cond_10

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    sub-float/2addr v2, p1

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    if-nez p1, :cond_9

    const/4 p1, 0x0

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v3, v12, :cond_7

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v3, p1

    sub-float/2addr v3, v1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    :goto_4
    int-to-float v4, p1

    sub-float/2addr v4, v2

    int-to-float p1, p1

    sub-float/2addr p1, v2

    mul-float/2addr v4, p1

    add-float p1, v3, v4

    goto :goto_5

    :cond_7
    if-ne v3, v9, :cond_8

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v3, p1

    sub-float/2addr v3, v1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    goto :goto_4

    :cond_8
    :goto_5
    iget v3, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetAlpha()V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    const-wide/16 v4, 0x5dc

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v11, :cond_b

    iput v12, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v3, 0xa7

    if-ne p1, v3, :cond_a

    const-string p1, "M_manual_"

    goto :goto_6

    :cond_a
    const-string p1, "M_proVideo_"

    :goto_6
    const-string v3, "metering_focus_split"

    const-string v4, "on"

    invoke-static {p1, v3, v4}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070120

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f07012a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_c
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v4

    int-to-float p1, p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v1, v12, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isFocusLocked()Z

    move-result v1

    if-nez v1, :cond_e

    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    float-to-int p1, v0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-nez p1, :cond_d

    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    :cond_d
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1, v12}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setState(I)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setFocusCenter(II)V

    goto :goto_7

    :cond_e
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v1, v9, :cond_f

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isExposureLocked()Z

    move-result v1

    if-nez v1, :cond_f

    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    float-to-int p1, v0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1, v12}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setState(I)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setExposureCenter(II)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateExposureArea()V

    :cond_f
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v11, :cond_12

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne p1, v12, :cond_11

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isFocusLocked()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateFocusArea()V

    :cond_11
    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    iput-boolean v10, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    iput-boolean v10, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    :cond_12
    :goto_8
    return-void
.end method

.method private hideTipMessage(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips(I)V

    :cond_0
    return-void
.end method

.method private initRect()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getPreviewRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureTapableRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mRecordTapableRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v1, v3, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setCenter(II)V

    return-void
.end method

.method private isInCircle(FFF)Z
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    float-to-double p2, p3

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInCircle(FFFFF)Z
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    float-to-double p2, p5

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStableStart()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result p0

    return p0
.end method

.method private processParameterIfNeeded(F)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 0

    return-void
.end method

.method private reset(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/2addr v2, v1

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/2addr v3, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const p1, 0x7f1002e9

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->hideTipMessage(I)V

    const p1, 0x7f1002eb

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->hideTipMessage(I)V

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->reset()V

    return-void
.end method

.method private resetAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private resetCenter()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v0, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private resetEvValue()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->reset()V

    return-void
.end method

.method private setCenter(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 1

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, p2, :cond_2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xa9

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-nez p2, :cond_0

    sget-object p1, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string p2, "needEvPresenter"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_2
    return-void
.end method

.method private setDraw(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->cancelFocusingAnimation()V

    :cond_2
    return-void
.end method

.method private setTouchDown()V
    .locals 2

    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    return-void
.end method

.method private showTipMessage(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isPortraitHintVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->setPortraitHintVisible(I)V

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p0, p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    return-void
.end method

.method private startAlphaAnimation(Landroid/view/View;)V
    .locals 2

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/camera/ui/OooO0Oo;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/OooO0Oo;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method private startAnimation()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopEvAdjust()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xa9

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    :cond_0
    return-void
.end method

.method private updateEV()V
    .locals 3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRational()Landroid/util/Rational;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    :goto_0
    return-void
.end method

.method private updateExposureArea()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-interface {v0, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onMeteringAreaChanged(II)V

    return-void
.end method

.method private updateFocusArea()V
    .locals 2

    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "updateFocusArea"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mFocusMode:Ljava/lang/String;

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-interface {v0, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onFocusAreaChanged(II)V

    return-void
.end method


# virtual methods
.method public canLongPressReset()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canRestFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isFocusOrExposureLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V
    .locals 10

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/4 v1, 0x0

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa7

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, v3, v4, v5}, Lcom/android/camera/Util;->getTapableRectWithEdgeSlop(ZLandroid/graphics/Rect;ILandroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07012a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_5

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v2, :cond_3

    sget p1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v3, p1}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v7, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v8, p1

    sget p1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    int-to-float v9, p1

    move-object v4, p0

    move v5, v0

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v7, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v8, p1

    sget p1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RADIUS:I

    int-to-float v9, p1

    move-object v4, p0

    move v5, v0

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_6

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public clear(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public enableControls(Z)V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isEvAdjusted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return p0
.end method

.method public isEvAdjustedTime()Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v5, 0x5dc

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFocusViewMoving()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitFocusExposureDown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return p0
.end method

.method public onCameraOpen()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_1
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v3, 0xa7

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v2, p1, :cond_6

    :cond_4
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackEvAdjusted(F)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_6
    if-nez v0, :cond_7

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz p0, :cond_8

    :cond_7
    move v1, v3

    :cond_8
    :goto_0
    return v1
.end method

.method public processingFinish()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    return-void
.end method

.method public processingStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    return-void
.end method

.method public reInit()V
    .locals 5

    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "onCameraOpen>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->initRect()V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v2, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo:Z

    if-eqz v2, :cond_1

    const/4 v1, -0x3

    const/4 v0, 0x4

    :cond_1
    sget-boolean v2, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0:Z

    if-nez v2, :cond_2

    sget-boolean v2, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOoo:Z

    if-eqz v2, :cond_3

    :cond_2
    const/16 v1, -0xc

    const/16 v0, 0xc

    :cond_3
    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    new-instance v2, Lcom/android/camera/ui/FloatSlideAdapter;

    sget v3, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_5
    sub-int v4, v0, v1

    int-to-float v4, v4

    div-float v3, v4, v3

    :goto_0
    invoke-direct {v2, v1, v0, v3}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpen: adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusView;->setRotation(F)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/16 v1, 0x8

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusView;->setEvAdjustable(Z)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_8
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_9
    :goto_2
    return-void
.end method

.method public releaseListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-void
.end method

.method public setEVVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEvAdjustable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFocusType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setOrientation(I)V

    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setOrientation(I)V

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 1

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p3, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setCenter(II)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 p3, 0xa7

    if-eq p2, p3, :cond_1

    const/16 p3, 0xb4

    if-eq p2, p3, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xa9

    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->resetEvValue()V

    :cond_1
    :goto_0
    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz p2, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    :cond_2
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public showFail()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusFailAnimation()V

    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "showFail"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public showStart()V
    .locals 4

    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "showStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startTouchDownAnimation()V

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startTouchDownAnimation(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showSuccess()V
    .locals 7

    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "showSuccess"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    const-wide/16 v5, 0x5dc

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_2

    sget-object p0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string v0, "needExposurePresenter"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportAELockOnly()Z

    move-result v0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0000Oo0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_en_first_choice_lock_ae_af_toast_key"

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "en"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_3
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x0

    const-string v1, "3A_Locked"

    const-string v5, "CENTER_LOCK"

    invoke-static {v1, v5, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_5

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_1

    :cond_5
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :goto_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_7

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    goto :goto_3

    :cond_7
    :goto_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v1, p0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startFocusSuccessAnimation(IZI)V

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-ne v0, v2, :cond_9

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v1, v0, p0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startFocusSuccessAnimation(IZI)V

    :cond_9
    :goto_3
    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mFocusMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method
