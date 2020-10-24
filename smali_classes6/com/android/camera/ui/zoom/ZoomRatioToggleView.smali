.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final ANIMATOR_TYPE_IMAGE_IMAGE:I = 0x6

.field private static final ANIMATOR_TYPE_IMAGE_NONE:I = 0x3

.field private static final ANIMATOR_TYPE_IMAGE_TEXT:I = 0x4

.field private static final ANIMATOR_TYPE_NONE_IMAGE:I = 0x1

.field private static final ANIMATOR_TYPE_NONE_TEXT:I = 0x0

.field private static final ANIMATOR_TYPE_TEXT_IMAGE:I = 0x5

.field private static final ANIMATOR_TYPE_TEXT_NONE:I = 0x2

.field private static final ANIMATOR_TYPE_TEXT_TEXT:I = 0x7

.field private static final ANIMATOR_TYPE_TEXT_TEXT_IMMERSIVE_OUT:I = 0x8

.field private static final INVALID_INDEX:I = -0x1

.field private static final INVALID_ZOOM_RATIO:F = -1.0f

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ZoomRatioToggleView"

.field private static final TOUCH_SCROLL_THRESHOLD:I = 0xa

.field private static final TOUCH_STATE_CLICK:I = 0x1

.field private static final TOUCH_STATE_IDLE:I = 0x0

.field private static final TOUCH_STATE_LONG_CLICK:I = 0x3

.field private static final TOUCH_STATE_SCROLL:I = 0x2

.field private static final TOUCH_STATE_SHOWVIEW:I = 0x4

.field private static final UI_DEBUG_ENABLED:Z

.field private static final VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field private mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

.field private mCurrentModule:I

.field private mCurrentSelectedChildIndex:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIndexUpdater:Ljava/lang/Runnable;

.field private mIsImmersive:Z

.field private mIsSuppressed:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mTouchState:I

.field private mUseSliderType:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mZoomArray:[F

.field private mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mZoomRatio:F

.field private mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

.field private myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZoomRatioToggleView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    const/16 p2, 0xa3

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$7;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$7;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->init()V

    return-void
.end method

.method static synthetic OooO00o(Landroid/animation/AnimatorSet;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAtIndex(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSelectedChildIndex()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->longClickChild(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private announceCurrentZoomRatioForAccessibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clickChildAt(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAtIndex(I)V

    return-void
.end method

.method private clickChildAtIndex(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onClick(Lcom/android/camera/ui/zoom/ZoomRatioView;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomRatioView;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->showZoomChildView(ZII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static debugUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    if-nez v0, :cond_0

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo0:Z

    if-nez v0, :cond_0

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo:Z

    if-nez v0, :cond_0

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOooO:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private endTouch(F)V
    .locals 4

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    invoke-interface {p1, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomRatioView;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return-void
.end method

.method private getContainingChildIndex(II)I
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method private getDimensionPixelSize(I)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V
    .locals 4

    sget-object p0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v0, v2, [F

    fill-array-data v0, :array_4

    invoke-static {p3, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    new-array p3, v2, [F

    fill-array-data p3, :array_5

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_6

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_7

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_8

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_9

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v0, v2, [F

    fill-array-data v0, :array_a

    invoke-static {p3, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    new-array p3, v2, [F

    fill-array-data p3, :array_b

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_c

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_d

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_e

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_f

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v0, v2, [F

    fill-array-data v0, :array_10

    invoke-static {p3, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    new-array p3, v2, [F

    fill-array-data p3, :array_11

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_12

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_13

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_14

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_15

    invoke-static {p3, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_16

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    new-array p3, v2, [F

    fill-array-data p3, :array_17

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_18

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_19

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_1a

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_1b

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v0, v2, [F

    fill-array-data v0, :array_1c

    invoke-static {p3, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    new-array p3, v2, [F

    fill-array-data p3, :array_1d

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_1e

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_1f

    invoke-static {p3, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_20

    invoke-static {p3, p0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_21

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_22

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    new-array p3, v2, [F

    fill-array-data p3, :array_23

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_24

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_25

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_26

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_27

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v0, v2, [F

    fill-array-data v0, :array_28

    invoke-static {p3, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    new-array p3, v2, [F

    fill-array-data p3, :array_29

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_2a

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v3, v2, [F

    fill-array-data v3, :array_2b

    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_2c

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_2d

    invoke-static {p3, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    new-array v1, v2, [F

    fill-array-data v1, :array_2e

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    new-array p3, v2, [F

    fill-array-data p3, :array_2f

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_f
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_11
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_14
    .array-data 4
        0x3fd5c28f    # 1.67f
        0x3f800000    # 1.0f
    .end array-data

    :array_15
    .array-data 4
        0x3fd5c28f    # 1.67f
        0x3f800000    # 1.0f
    .end array-data

    :array_16
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_17
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1b
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x3f800000    # 1.0f
        0x3e2b020c    # 0.167f
    .end array-data

    :array_20
    .array-data 4
        0x3f800000    # 1.0f
        0x3e2b020c    # 0.167f
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_23
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_27
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_29
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2c
    .array-data 4
        0x3e2b020c    # 0.167f
        0x3f800000    # 1.0f
    .end array-data

    :array_2d
    .array-data 4
        0x3e2b020c    # 0.167f
        0x3f800000    # 1.0f
    .end array-data

    :array_2e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2f
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020002

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiui/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Landroid/view/View;Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private isLayoutRTL()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method private isSupportUseSlider(I)Z
    .locals 4

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private longClickChild(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomRatioView;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method

.method private resetAnimators()V
    .locals 3

    const-string v0, "ZoomRatioToggleView"

    const-string v1, "resetAnimators"

    invoke-static {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/android/camera/ui/zoom/OooO00o;->OooO00o:Lcom/android/camera/ui/zoom/OooO00o;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setSelectedChildIndex()V
    .locals 4

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {v0, v1}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isLayoutRTL()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    :cond_0
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    xor-int/2addr v1, v2

    invoke-direct {p0, v1, v0, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->showZoomChildView(ZII)V

    return-void
.end method

.method private showZoomChildView(ZII)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v2, p2}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-static {v3, v4}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_2

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    :cond_0
    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    if-ne p3, v5, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    goto :goto_4

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    :goto_1
    if-ge v4, v6, :cond_6

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-ne v4, p2, :cond_4

    if-ne p3, v5, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    :goto_2
    invoke-virtual {v7, v8}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    const/4 v8, 0x4

    goto :goto_3

    :cond_4
    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ne v4, v8, :cond_5

    invoke-virtual {v7, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    const/4 v8, 0x5

    goto :goto_3

    :cond_5
    const/4 v8, 0x6

    :goto_3
    invoke-direct {p0, p1, v7, v8}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomRatioView;Lcom/android/camera/ui/zoom/ZoomRatioView;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    :goto_4
    if-ne p3, v5, :cond_8

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onClick(Lcom/android/camera/ui/zoom/ZoomRatioView;)V

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    return-void
.end method

.method private startLongPressCheck()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$5;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$5;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startScrollIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    add-int/lit8 v2, v1, -0xa

    if-lt v0, v2, :cond_1

    add-int/lit8 v1, v1, 0xa

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    add-int/lit8 v1, v0, -0xa

    if-lt p1, v1, :cond_1

    add-int/lit8 v0, v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    const/4 p0, 0x1

    return p0
.end method

.method private startTouch(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startLongPressCheck()V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return-void
.end method

.method private toShowView(F)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomRatioView;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSuppressed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZoomRatioToggleView"

    const-string v0, "UI AUTOMATIC TEST: CLICKED"

    invoke-static {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAt(II)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "ZoomRatioToggleView"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->endTouch(F)V

    return v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent() MOVE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent() DOWN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startTouch(Landroid/view/MotionEvent;)V

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    move p3, p2

    goto :goto_0

    :cond_1
    div-int/lit8 p3, p1, 0x2

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isLayoutRTL()Z

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p5, v1

    mul-int/2addr p3, v0

    if-nez p4, :cond_2

    sub-int/2addr p5, p3

    goto :goto_1

    :cond_2
    add-int/2addr p5, p3

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    :goto_2
    if-ge p2, p1, :cond_4

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr v1, p5

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    add-int/2addr v2, p3

    invoke-virtual {v0, p5, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    if-nez p4, :cond_3

    add-int/2addr p5, v0

    goto :goto_3

    :cond_3
    sub-int/2addr p5, v0

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZoomRatioToggleView"

    const-string v0, "UI AUTOMATIC TEST: LONGCLICKED"

    invoke-static {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->longClickChild(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    div-int v0, v4, v3

    :goto_1
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    iput v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p1, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v0, p2, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v2, "ZoomRatioToggleView"

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v0, v3, :cond_6

    if-eq v0, v6, :cond_3

    const/4 v7, 0x3

    if-eq v0, v7, :cond_6

    :cond_2
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->endTouch(F)V

    goto/16 :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent() MOVE: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v6, :cond_f

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->toShowView(F)V

    goto/16 :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTouchEvent() UP: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAt(II)V

    :cond_7
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_8

    return v3

    :cond_8
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent() DOWN: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v4, :cond_b

    goto :goto_1

    :cond_b
    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    return v1

    :cond_c
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eq v0, v2, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    :cond_e
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startTouch(Landroid/view/MotionEvent;)V

    :cond_f
    :goto_2
    return v3
.end method

.method public setActionListener(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCaptureCount(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setCaptureCount(I)V

    :cond_3
    return-void
.end method

.method public setCapturingMode(IZ)Z
    .locals 8

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-array p1, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p1, v1

    :cond_0
    array-length v2, p1

    if-gtz v2, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomArray:[F

    if-eqz v3, :cond_3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSuppressed(ZZ)V

    return v1

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomArray:[F

    if-eqz p2, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v3}, Lcom/android/camera/HybridZoomingSystem;->getDefaultOpticalZoomRatioIndex(I)I

    move-result v3

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->resetAnimators()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c0127

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v5}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    aget v6, p1, v4

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatioIndex(I)V

    if-eq v4, v3, :cond_5

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iput v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    aget p1, p1, v3

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p0, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSuppressed(ZZ)V

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEnabled(): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomRatioToggleView"

    invoke-static {p1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImmersive(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setImmersive(ZZZ)V

    return-void
.end method

.method public setImmersive(ZZZ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImmersive(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setImmersive() ignored: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {p2, v0}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result p2

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    div-int/2addr v0, v3

    const/4 v5, 0x3

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v4

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    if-ne v3, p2, :cond_2

    const/4 v7, 0x7

    invoke-direct {p0, p1, v6, v7}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v6, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v6, v4

    :goto_2
    if-ge v6, v0, :cond_6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    div-int/lit8 v8, v0, 0x2

    if-ne v6, v8, :cond_4

    const/4 v8, 0x4

    invoke-direct {p0, p1, v7, v8}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_3

    :cond_4
    if-ne v6, p2, :cond_5

    invoke-direct {p0, p1, v7, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, v7, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;

    invoke-direct {v0, p0, p3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_4
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_a

    :cond_7
    iget-boolean p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez p3, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    div-int/2addr p3, v3

    const/4 v0, 0x1

    if-ne p2, p3, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v1, v4

    :goto_5
    if-ge v1, p3, :cond_9

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    if-ne v1, p2, :cond_8

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    const/16 v3, 0x8

    invoke-direct {p0, p1, v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_6

    :cond_8
    invoke-direct {p0, p1, v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x190

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_9

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v3, v4

    :goto_7
    if-ge v3, p3, :cond_d

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    div-int/lit8 v6, p3, 0x2

    if-ne v3, v6, :cond_b

    const/4 v6, 0x5

    invoke-direct {p0, p1, v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_8

    :cond_b
    if-ne v3, p2, :cond_c

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    invoke-direct {p0, p1, v5, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_8

    :cond_c
    invoke-direct {p0, p1, v5, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_9
    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    :cond_e
    :goto_a
    return-void
.end method

.method public setRotation(F)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSuppressed(ZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppressed(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSuppressed() ignored: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {p1, v0}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-ne v1, p1, :cond_2

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    invoke-virtual {v2, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    :goto_1
    invoke-virtual {v2, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public setUseSliderAllowed(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/Util;->viewVisibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->resetAnimators()V

    :cond_0
    return-void
.end method

.method public setZoomRatio(FI)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v0, p1}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomRatio(): zooming action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomRatioToggleView"

    invoke-static {v2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio():  current index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio():   current zoom = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio():   target index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomRatio():    target zoom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    const-string p0, "setZoomRatio(): mIsSuppressed"

    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    const-string p0, "setZoomRatio(): mIsImmersive"

    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string p0, "setZoomRatio(): ignored as source is toggle button"

    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-boolean p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setZoomRatio() must be called on main ui thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startTranslationAnimationShow()V
    .locals 11

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v4, v7, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v7}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isLayoutRTL()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_0
    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    sub-int v7, v4, v7

    :goto_1
    new-array v8, v8, [F

    iget v10, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    mul-int/2addr v7, v10

    int-to-float v7, v7

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    aput v7, v8, v3

    aput v6, v8, v9

    invoke-static {v5, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    new-array v7, v8, [F

    aput v6, v7, v3

    aput v6, v7, v9

    invoke-static {v5, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    :goto_2
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomRatioView;F)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
