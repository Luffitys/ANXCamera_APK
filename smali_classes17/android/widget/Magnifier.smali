.class public final Landroid/widget/Magnifier;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Magnifier$Callback;,
        Landroid/widget/Magnifier$SourceBound;,
        Landroid/widget/Magnifier$Builder;,
        Landroid/widget/Magnifier$InternalPopupWindow;,
        Landroid/widget/Magnifier$SurfaceInfo;
    }
.end annotation


# static fields
.field private static final FISHEYE_RAMP_WIDTH:F = 12.0f

.field private static final NONEXISTENT_PREVIOUS_CONFIG_VALUE:I = -0x1

.field public static final SOURCE_BOUND_MAX_IN_SURFACE:I = 0x0

.field public static final SOURCE_BOUND_MAX_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Magnifier"

.field private static final sPixelCopyHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mBottomContentBound:I

.field private mCallback:Landroid/widget/Magnifier$Callback;

.field private final mClampedCenterZoomCoords:Landroid/graphics/Point;

.field private final mClippingEnabled:Z

.field private mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private final mDefaultHorizontalSourceToMagnifierOffset:I

.field private final mDefaultVerticalSourceToMagnifierOffset:I

.field private final mDestroyLock:Ljava/lang/Object;

.field private mDirtyState:Z

.field private mIsFishEyeStyle:Z

.field private mLeftBound:I

.field private mLeftContentBound:I

.field private mLeftCutWidth:I

.field private final mLock:Ljava/lang/Object;

.field private final mOverlay:Landroid/graphics/drawable/Drawable;

.field private mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

.field private final mPixelCopyRequestRect:Landroid/graphics/Rect;

.field private final mPrevShowSourceCoords:Landroid/graphics/PointF;

.field private final mPrevShowWindowCoords:Landroid/graphics/PointF;

.field private final mPrevStartCoordsInSurface:Landroid/graphics/Point;

.field private final mRamp:I

.field private mRightBound:I

.field private mRightContentBound:I

.field private mRightCutWidth:I

.field private mSourceHeight:I

.field private mSourceWidth:I

.field private mTopContentBound:I

.field private final mView:Landroid/view/View;

.field private final mViewCoordinatesInSurface:[I

.field private mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

.field private final mWindowCoords:Landroid/graphics/Point;

.field private final mWindowCornerRadius:F

.field private final mWindowElevation:F

.field private mWindowHeight:I

.field private final mWindowWidth:I

.field private mZoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "magnifier pixel copy result handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/widget/Magnifier;->createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Magnifier;-><init>(Landroid/widget/Magnifier$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/Magnifier$Builder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier;->mDestroyLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    iput v0, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/Magnifier;->mLeftBound:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/Magnifier;->mRightBound:I

    # getter for: Landroid/widget/Magnifier$Builder;->mView:Landroid/view/View;
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$1300(Landroid/widget/Magnifier$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    # getter for: Landroid/widget/Magnifier$Builder;->mWidth:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$000(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    # getter for: Landroid/widget/Magnifier$Builder;->mHeight:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$100(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    # getter for: Landroid/widget/Magnifier$Builder;->mZoom:F
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$400(Landroid/widget/Magnifier$Builder;)F

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mZoom:F

    # getter for: Landroid/widget/Magnifier$Builder;->mIsFishEyeStyle:Z
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$1400(Landroid/widget/Magnifier$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    # getter for: Landroid/widget/Magnifier$Builder;->mSourceWidth:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$1500(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    if-lez v0, :cond_83

    # getter for: Landroid/widget/Magnifier$Builder;->mSourceHeight:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$1600(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    if-lez v0, :cond_83

    # getter for: Landroid/widget/Magnifier$Builder;->mSourceWidth:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$1500(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    # getter for: Landroid/widget/Magnifier$Builder;->mSourceHeight:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$1600(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    goto :goto_9b

    :cond_83
    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    :goto_9b
    # getter for: Landroid/widget/Magnifier$Builder;->mElevation:F
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$200(Landroid/widget/Magnifier$Builder;)F

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowElevation:F

    # getter for: Landroid/widget/Magnifier$Builder;->mCornerRadius:F
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$300(Landroid/widget/Magnifier$Builder;)F

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    # getter for: Landroid/widget/Magnifier$Builder;->mOverlay:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$700(Landroid/widget/Magnifier$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;

    nop

    # getter for: Landroid/widget/Magnifier$Builder;->mHorizontalDefaultSourceToMagnifierOffset:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$500(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mDefaultHorizontalSourceToMagnifierOffset:I

    nop

    # getter for: Landroid/widget/Magnifier$Builder;->mVerticalDefaultSourceToMagnifierOffset:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$600(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mDefaultVerticalSourceToMagnifierOffset:I

    # getter for: Landroid/widget/Magnifier$Builder;->mClippingEnabled:Z
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$800(Landroid/widget/Magnifier$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Magnifier;->mClippingEnabled:Z

    # getter for: Landroid/widget/Magnifier$Builder;->mLeftContentBound:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$900(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mLeftContentBound:I

    # getter for: Landroid/widget/Magnifier$Builder;->mTopContentBound:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$1000(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mTopContentBound:I

    # getter for: Landroid/widget/Magnifier$Builder;->mRightContentBound:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$1100(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mRightContentBound:I

    # getter for: Landroid/widget/Magnifier$Builder;->mBottomContentBound:I
    invoke-static {p1}, Landroid/widget/Magnifier$Builder;->access$1200(Landroid/widget/Magnifier$Builder;)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mBottomContentBound:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v0, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Magnifier;->mRamp:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Magnifier$Builder;Landroid/widget/Magnifier$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Magnifier;-><init>(Landroid/widget/Magnifier$Builder;)V

    return-void
.end method

.method static createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;
    .registers 8

    new-instance v0, Landroid/widget/Magnifier$Builder;

    invoke-direct {v0, p0}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Magnifier:[I

    const/4 v3, 0x0

    const v4, 0x1120079

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    # setter for: Landroid/widget/Magnifier$Builder;->mWidth:I
    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->access$002(Landroid/widget/Magnifier$Builder;I)I

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    # setter for: Landroid/widget/Magnifier$Builder;->mHeight:I
    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->access$102(Landroid/widget/Magnifier$Builder;I)I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    # setter for: Landroid/widget/Magnifier$Builder;->mElevation:F
    invoke-static {v0, v6}, Landroid/widget/Magnifier$Builder;->access$202(Landroid/widget/Magnifier$Builder;F)F

    invoke-static {v1}, Landroid/widget/Magnifier;->getDeviceDefaultDialogCornerRadius(Landroid/content/Context;)F

    move-result v6

    # setter for: Landroid/widget/Magnifier$Builder;->mCornerRadius:F
    invoke-static {v0, v6}, Landroid/widget/Magnifier$Builder;->access$302(Landroid/widget/Magnifier$Builder;F)F

    const/4 v6, 0x6

    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    # setter for: Landroid/widget/Magnifier$Builder;->mZoom:F
    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->access$402(Landroid/widget/Magnifier$Builder;F)F

    nop

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    # setter for: Landroid/widget/Magnifier$Builder;->mHorizontalDefaultSourceToMagnifierOffset:I
    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->access$502(Landroid/widget/Magnifier$Builder;I)I

    nop

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    # setter for: Landroid/widget/Magnifier$Builder;->mVerticalDefaultSourceToMagnifierOffset:I
    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->access$602(Landroid/widget/Magnifier$Builder;I)I

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    # setter for: Landroid/widget/Magnifier$Builder;->mOverlay:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v4}, Landroid/widget/Magnifier$Builder;->access$702(Landroid/widget/Magnifier$Builder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    # setter for: Landroid/widget/Magnifier$Builder;->mClippingEnabled:Z
    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->access$802(Landroid/widget/Magnifier$Builder;Z)Z

    # setter for: Landroid/widget/Magnifier$Builder;->mLeftContentBound:I
    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->access$902(Landroid/widget/Magnifier$Builder;I)I

    # setter for: Landroid/widget/Magnifier$Builder;->mTopContentBound:I
    invoke-static {v0, v5}, Landroid/widget/Magnifier$Builder;->access$1002(Landroid/widget/Magnifier$Builder;I)I

    # setter for: Landroid/widget/Magnifier$Builder;->mRightContentBound:I
    invoke-static {v0, v3}, Landroid/widget/Magnifier$Builder;->access$1102(Landroid/widget/Magnifier$Builder;I)I

    # setter for: Landroid/widget/Magnifier$Builder;->mBottomContentBound:I
    invoke-static {v0, v5}, Landroid/widget/Magnifier$Builder;->access$1202(Landroid/widget/Magnifier$Builder;I)I

    return-object v0
.end method

.method private getCurrentClampedWindowCoordinates()Landroid/graphics/Point;
    .registers 8

    iget-boolean v0, p0, Landroid/widget/Magnifier;->mClippingEnabled:Z

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mIsMainWindowSurface:Z
    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$2300(Landroid/widget/Magnifier$SurfaceInfo;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget-object v3, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/widget/Magnifier$SurfaceInfo;->access$2000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget-object v4, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;
    invoke-static {v4}, Landroid/widget/Magnifier$SurfaceInfo;->access$2000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I
    invoke-static {v4}, Landroid/widget/Magnifier$SurfaceInfo;->access$1700(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v4

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;
    invoke-static {v5}, Landroid/widget/Magnifier$SurfaceInfo;->access$2000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I
    invoke-static {v5}, Landroid/widget/Magnifier$SurfaceInfo;->access$2100(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v5

    iget v6, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;
    invoke-static {v6}, Landroid/widget/Magnifier$SurfaceInfo;->access$2000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    goto :goto_71

    :cond_5f
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I
    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->access$1700(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I
    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->access$2100(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_71
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private static getDeviceDefaultDialogCornerRadius(Landroid/content/Context;)F
    .registers 5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010571

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method public static getMagnifierDefaultSize()Landroid/graphics/PointF;
    .registers 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    const v3, 0x1050103

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    const v3, 0x1050100

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method private obtainContentCoordinates(FF)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    iget-object v6, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInSurface([I)V

    iget-object v1, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v6, v1, v2

    if-ne v6, v3, :cond_19

    aget v1, v1, v4

    if-eq v1, v5, :cond_1b

    :cond_19
    iput-boolean v4, v0, Landroid/widget/Magnifier;->mDirtyState:Z

    :cond_1b
    iget-object v1, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2a

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto :goto_40

    :cond_2a
    iget-object v1, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v1, v1, v2

    int-to-float v1, v1

    add-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v6, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v6, v6, v4

    int-to-float v6, v6

    add-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_40
    const/4 v7, 0x2

    new-array v8, v7, [Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I
    invoke-static {v10}, Landroid/widget/Magnifier$SurfaceInfo;->access$1700(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v10

    iget-object v11, v0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I
    invoke-static {v11}, Landroid/widget/Magnifier$SurfaceInfo;->access$2100(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v11

    invoke-direct {v9, v2, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v2

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v11, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    if-eqz v11, :cond_79

    iget-object v11, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    :cond_79
    iget-object v11, v0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v11, v11, Landroid/view/SurfaceView;

    if-eqz v11, :cond_8a

    iget-object v11, v0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v2, v11, v2

    neg-int v2, v2

    aget v11, v11, v4

    neg-int v11, v11

    invoke-virtual {v10, v2, v11}, Landroid/graphics/Rect;->offset(II)V

    :cond_8a
    aput-object v10, v8, v4

    const/high16 v2, -0x80000000

    iget v4, v0, Landroid/widget/Magnifier;->mLeftContentBound:I

    :goto_90
    if-ltz v4, :cond_9d

    aget-object v11, v8, v4

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_90

    :cond_9d
    const/high16 v4, -0x80000000

    iget v11, v0, Landroid/widget/Magnifier;->mTopContentBound:I

    :goto_a1
    if-ltz v11, :cond_ae

    aget-object v12, v8, v11

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v11, v11, -0x1

    goto :goto_a1

    :cond_ae
    const v11, 0x7fffffff

    iget v12, v0, Landroid/widget/Magnifier;->mRightContentBound:I

    :goto_b3
    if-ltz v12, :cond_c0

    aget-object v13, v8, v12

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v12, -0x1

    goto :goto_b3

    :cond_c0
    const v12, 0x7fffffff

    iget v13, v0, Landroid/widget/Magnifier;->mBottomContentBound:I

    :goto_c5
    if-ltz v13, :cond_d2

    aget-object v14, v8, v13

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v13, -0x1

    goto :goto_c5

    :cond_d2
    iget-object v13, v0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I
    invoke-static {v13}, Landroid/widget/Magnifier$SurfaceInfo;->access$1700(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v13

    iget v14, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    sub-int/2addr v13, v14

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v13, v0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I
    invoke-static {v13}, Landroid/widget/Magnifier$SurfaceInfo;->access$2100(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v13

    iget v14, v0, Landroid/widget/Magnifier;->mSourceHeight:I

    sub-int/2addr v13, v14

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ltz v2, :cond_f0

    if-gez v4, :cond_f7

    :cond_f0
    const-string v13, "Magnifier"

    const-string v14, "Magnifier\'s content is copied from a surface smaller thanthe content requested size. The magnifier will be dismissed."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    iget v13, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    add-int/2addr v13, v2

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v13, v0, Landroid/widget/Magnifier;->mSourceHeight:I

    add-int/2addr v13, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v13, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget-boolean v14, v0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    if-eqz v14, :cond_114

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_124

    :cond_114
    iget v14, v0, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v15, v14, 0x2

    add-int/2addr v15, v2

    div-int/2addr v14, v7

    sub-int v14, v11, v14

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_124
    iput v14, v13, Landroid/graphics/Point;->x:I

    iget-object v13, v0, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v14, v0, Landroid/widget/Magnifier;->mSourceHeight:I

    div-int/lit8 v15, v14, 0x2

    add-int/2addr v15, v4

    div-int/2addr v14, v7

    sub-int v7, v12, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v13, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private obtainSurfaces()V
    .registers 15

    sget-object v0, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v9, :cond_46

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    nop

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWidth()I

    move-result v2

    iget v3, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v10, Landroid/graphics/Rect;->right:I

    add-int v11, v2, v3

    nop

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getHeight()I

    move-result v2

    iget v3, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    add-int v12, v2, v3

    new-instance v13, Landroid/widget/Magnifier$SurfaceInfo;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v8, 0x1

    move-object v2, v13

    move-object v4, v9

    move v5, v11

    move v6, v12

    move-object v7, v10

    invoke-direct/range {v2 .. v8}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V

    move-object v0, v13

    :cond_46
    sget-object v1, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v3, v2, Landroid/view/SurfaceView;

    if-eqz v3, :cond_7f

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v11

    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v12

    new-instance v13, Landroid/widget/Magnifier$SurfaceInfo;

    iget v6, v12, Landroid/graphics/Rect;->right:I

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    move-object v3, v13

    move-object v4, v2

    move-object v5, v11

    invoke-direct/range {v3 .. v9}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V

    move-object v1, v13

    :cond_7f
    sget-object v2, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq v0, v2, :cond_85

    move-object v2, v0

    goto :goto_86

    :cond_85
    move-object v2, v1

    :goto_86
    iput-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v2, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_90

    move-object v2, v1

    goto :goto_91

    :cond_90
    move-object v2, v0

    :goto_91
    iput-object v2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    return-void
.end method

.method private obtainWindowCoordinates(FF)V
    .registers 10

    iget-object v0, p0, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_25

    :cond_11
    iget-object v0, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v0, v0, v2

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v3, v3, v1

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    :goto_25
    iget-object v4, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v5, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v5, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    iget-object v5, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    if-eq v4, v5, :cond_55

    iget-object v4, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v2, v6, v2

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/widget/Magnifier;->mWindowCoords:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v1, v5, v1

    add-int/2addr v4, v1

    iput v4, v2, Landroid/graphics/Point;->y:I

    :cond_55
    return-void
.end method

.method private onPixelCopyFailed()V
    .registers 3

    const-string v0, "Magnifier"

    const-string v1, "Magnifier failed to copy content from the view Surface. It will be dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/widget/-$$Lambda$Magnifier$esRj9C7NyDvOX8eqqqLKuB6jpTw;

    invoke-direct {v1, p0}, Landroid/widget/-$$Lambda$Magnifier$esRj9C7NyDvOX8eqqqLKuB6jpTw;-><init>(Landroid/widget/Magnifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performPixelCopy(IIZ)V
    .registers 16

    iget-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$2200(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Landroid/widget/Magnifier$SurfaceInfo;->access$2200(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_7c

    :cond_15
    invoke-direct {p0}, Landroid/widget/Magnifier;->getCurrentClampedWindowCoordinates()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    iget-object v7, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget-object v1, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget v2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v3, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    return-void

    :cond_4f
    iget v1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v2, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v1, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mSurface:Landroid/view/Surface;
    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->access$2200(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    new-instance v11, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v7

    move v4, p3

    move-object v5, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/-$$Lambda$Magnifier$K0um0QSTAb4wXwua60CgJIIwGaI;-><init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v9, v10, v8, v11, v1}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void

    :cond_7c
    :goto_7c
    invoke-direct {p0}, Landroid/widget/Magnifier;->onPixelCopyFailed()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_2c

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_2f

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1

    :cond_2f
    :goto_2f
    return-void
.end method

.method public getContent()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    # getter for: Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->access$2800(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    # getter for: Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->access$2900(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getCornerRadius()F
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    return v0
.end method

.method public getDefaultHorizontalSourceToMagnifierOffset()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mDefaultHorizontalSourceToMagnifierOffset:I

    return v0
.end method

.method public getDefaultVerticalSourceToMagnifierOffset()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mDefaultVerticalSourceToMagnifierOffset:I

    return v0
.end method

.method public getElevation()F
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mWindowElevation:F

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    return v0
.end method

.method public getOriginalContent()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    # getter for: Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->access$2800(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    # getter for: Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->access$3000(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getOverlay()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/Point;
    .registers 4

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-direct {p0}, Landroid/widget/Magnifier;->getCurrentClampedWindowCoordinates()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;
    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->access$2000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->access$2000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v1
.end method

.method public getSourceHeight()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    return v0
.end method

.method public getSourcePosition()Landroid/graphics/Point;
    .registers 4

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/Magnifier;->mPixelCopyRequestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;
    invoke-static {v1}, Landroid/widget/Magnifier$SurfaceInfo;->access$2000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/Magnifier$SurfaceInfo;->access$2000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v1
.end method

.method public getSourceWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    return v0
.end method

.method public getZoom()F
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier;->mZoom:F

    return v0
.end method

.method public isClippingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Magnifier;->mClippingEnabled:Z

    return v0
.end method

.method public synthetic lambda$onPixelCopyFailed$2$Magnifier()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/Magnifier;->dismiss()V

    iget-object v0, p0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/widget/Magnifier$Callback;->onOperationComplete()V

    :cond_a
    return-void
.end method

.method public synthetic lambda$performPixelCopy$1$Magnifier(Landroid/widget/Magnifier$InternalPopupWindow;ZLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V
    .registers 14

    if-eqz p5, :cond_6

    invoke-direct {p0}, Landroid/widget/Magnifier;->onPixelCopyFailed()V

    return-void

    :cond_6
    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eq v1, p1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    if-eqz p2, :cond_1a

    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget v2, p3, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Magnifier$InternalPopupWindow;->setContentPositionForNextDraw(II)V

    :cond_1a
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    if-ge v1, v2, :cond_50

    iget v1, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/widget/Magnifier;->mLeftCutWidth:I

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v7, p0, Landroid/widget/Magnifier;->mRightCutWidth:I

    sub-int/2addr v6, v7

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v2, p4, v4, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    goto :goto_55

    :cond_50
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-virtual {v1, p4}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContent(Landroid/graphics/Bitmap;)V

    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public synthetic lambda$show$0$Magnifier(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/graphics/Point;)V
    .registers 7

    iget-object v0, p0, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eq v1, p1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Magnifier$InternalPopupWindow;->setContentPositionForNextDraw(II)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public setOnOperationCompleteCallback(Landroid/widget/Magnifier$Callback;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_9

    # setter for: Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;
    invoke-static {v0, p1}, Landroid/widget/Magnifier$InternalPopupWindow;->access$2502(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)Landroid/widget/Magnifier$Callback;

    :cond_9
    return-void
.end method

.method setSourceHorizontalBounds(II)V
    .registers 3

    iput p1, p0, Landroid/widget/Magnifier;->mLeftBound:I

    iput p2, p0, Landroid/widget/Magnifier;->mRightBound:I

    return-void
.end method

.method public setZoom(F)V
    .registers 4

    const-string v0, "Zoom should be positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iput p1, p0, Landroid/widget/Magnifier;->mZoom:F

    iget-boolean v0, p0, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    goto :goto_16

    :cond_e
    iget v0, p0, Landroid/widget/Magnifier;->mWindowWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_16
    iput v0, p0, Landroid/widget/Magnifier;->mSourceWidth:I

    iget v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    return-void
.end method

.method public show(FF)V
    .registers 5

    iget v0, p0, Landroid/widget/Magnifier;->mDefaultHorizontalSourceToMagnifierOffset:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Landroid/widget/Magnifier;->mDefaultVerticalSourceToMagnifierOffset:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/Magnifier;->show(FFFF)V

    return-void
.end method

.method public show(FFFF)V
    .registers 38

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    invoke-direct/range {p0 .. p2}, Landroid/widget/Magnifier;->obtainContentCoordinates(FF)V

    iget-object v0, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget-object v4, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/widget/Magnifier;->mSourceHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-boolean v5, v1, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_ed

    iget-object v5, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v8, v1, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v8, v8, v7

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iget-object v8, v1, Landroid/widget/Magnifier;->mClampedCenterZoomCoords:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, v1, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v9, v9, v6

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v1, Landroid/widget/Magnifier;->mSourceWidth:I

    int-to-float v10, v9

    iget v11, v1, Landroid/widget/Magnifier;->mRamp:I

    mul-int/lit8 v12, v11, 0x2

    sub-int v12, v9, v12

    int-to-float v12, v12

    iget v13, v1, Landroid/widget/Magnifier;->mZoom:F

    div-float/2addr v12, v13

    sub-float/2addr v10, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, v2, v9

    int-to-float v12, v11

    add-float/2addr v12, v9

    const/4 v14, 0x0

    cmpl-float v15, v14, v12

    if-lez v15, :cond_5b

    sub-float v11, v2, v14

    div-float/2addr v11, v13

    sub-float v14, v2, v11

    goto :goto_68

    :cond_5b
    cmpl-float v13, v14, v9

    if-lez v13, :cond_68

    add-float v13, v9, v10

    sub-float v15, v12, v14

    mul-float/2addr v15, v10

    int-to-float v11, v11

    div-float/2addr v15, v11

    sub-float v14, v13, v15

    :cond_68
    :goto_68
    float-to-int v11, v14

    iget v13, v1, Landroid/widget/Magnifier;->mLeftBound:I

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v13, v1, Landroid/widget/Magnifier;->mRightBound:I

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v13, v1, Landroid/widget/Magnifier;->mSourceWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float/2addr v13, v2

    iget v15, v1, Landroid/widget/Magnifier;->mRamp:I

    int-to-float v15, v15

    sub-float v15, v13, v15

    iget-object v6, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v16, v6, v15

    if-gez v16, :cond_96

    sub-float v16, v6, v2

    iget v7, v1, Landroid/widget/Magnifier;->mZoom:F

    div-float v16, v16, v7

    add-float v6, v2, v16

    move/from16 p3, v5

    goto :goto_ac

    :cond_96
    cmpg-float v7, v6, v13

    if-gez v7, :cond_aa

    sub-float v7, v13, v10

    sub-float v16, v6, v15

    mul-float v16, v16, v10

    move/from16 p3, v5

    iget v5, v1, Landroid/widget/Magnifier;->mRamp:I

    int-to-float v5, v5

    div-float v16, v16, v5

    add-float v6, v7, v16

    goto :goto_ac

    :cond_aa
    move/from16 p3, v5

    :goto_ac
    float-to-int v5, v6

    iget v7, v1, Landroid/widget/Magnifier;->mRightBound:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v1, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    move/from16 v16, v6

    const/4 v6, 0x0

    aget v7, v7, v6

    add-int/2addr v7, v11

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v11, v1, Landroid/widget/Magnifier;->mViewCoordinatesInSurface:[I

    aget v11, v11, v6

    add-int/2addr v11, v5

    iget-object v6, v1, Landroid/widget/Magnifier;->mContentCopySurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I
    invoke-static {v6}, Landroid/widget/Magnifier$SurfaceInfo;->access$1700(Landroid/widget/Magnifier$SurfaceInfo;)I

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, v7, v0

    const/4 v11, 0x0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v1, Landroid/widget/Magnifier;->mLeftCutWidth:I

    iget v6, v1, Landroid/widget/Magnifier;->mSourceWidth:I

    add-int/2addr v6, v0

    sub-int/2addr v6, v5

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v1, Landroid/widget/Magnifier;->mRightCutWidth:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v5, p3

    move v6, v0

    goto :goto_f2

    :cond_ed
    move/from16 v5, p3

    move/from16 v8, p4

    move v6, v0

    :goto_f2
    invoke-direct {v1, v5, v8}, Landroid/widget/Magnifier;->obtainWindowCoordinates(FF)V

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_13b

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v3, v0

    if-nez v0, :cond_13b

    iget-boolean v0, v1, Landroid/widget/Magnifier;->mDirtyState:Z

    if-eqz v0, :cond_10a

    goto :goto_13b

    :cond_10a
    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v5, v0

    if-nez v0, :cond_121

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_11b

    goto :goto_121

    :cond_11b
    move/from16 v17, v5

    move/from16 v16, v8

    goto/16 :goto_1b9

    :cond_121
    :goto_121
    invoke-direct/range {p0 .. p0}, Landroid/widget/Magnifier;->getCurrentClampedWindowCoordinates()Landroid/graphics/Point;

    move-result-object v0

    iget-object v7, v1, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    sget-object v9, Landroid/widget/Magnifier;->sPixelCopyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Landroid/widget/-$$Lambda$Magnifier$sEUKNU2_gseoDMBt_HOs-JGAfZ8;

    invoke-direct {v10, v1, v7, v0}, Landroid/widget/-$$Lambda$Magnifier$sEUKNU2_gseoDMBt_HOs-JGAfZ8;-><init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;Landroid/graphics/Point;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move/from16 v17, v5

    move/from16 v16, v8

    goto/16 :goto_1b9

    :cond_13b
    :goto_13b
    iget-object v0, v1, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-nez v0, :cond_1b1

    iget-object v7, v1, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_142
    new-instance v0, Landroid/widget/Magnifier$InternalPopupWindow;

    iget-object v9, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v9, v1, Landroid/widget/Magnifier;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v20

    iget-object v9, v1, Landroid/widget/Magnifier;->mParentSurface:Landroid/widget/Magnifier$SurfaceInfo;

    # getter for: Landroid/widget/Magnifier$SurfaceInfo;->mSurfaceControl:Landroid/view/SurfaceControl;
    invoke-static {v9}, Landroid/widget/Magnifier$SurfaceInfo;->access$1800(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/SurfaceControl;

    move-result-object v21

    iget v9, v1, Landroid/widget/Magnifier;->mWindowWidth:I

    iget v10, v1, Landroid/widget/Magnifier;->mWindowHeight:I

    iget v11, v1, Landroid/widget/Magnifier;->mZoom:F

    iget v12, v1, Landroid/widget/Magnifier;->mRamp:I

    iget v13, v1, Landroid/widget/Magnifier;->mWindowElevation:F

    iget v14, v1, Landroid/widget/Magnifier;->mWindowCornerRadius:F

    iget-object v15, v1, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;
    :try_end_164
    .catchall {:try_start_142 .. :try_end_164} :catchall_1a8

    if-eqz v15, :cond_173

    :try_start_166
    iget-object v15, v1, Landroid/widget/Magnifier;->mOverlay:Landroid/graphics/drawable/Drawable;
    :try_end_168
    .catchall {:try_start_166 .. :try_end_168} :catchall_16d

    move/from16 v16, v8

    move-object/from16 v28, v15

    goto :goto_17d

    :catchall_16d
    move-exception v0

    move/from16 v17, v5

    move/from16 v16, v8

    goto :goto_1ad

    :cond_173
    :try_start_173
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;
    :try_end_175
    .catchall {:try_start_173 .. :try_end_175} :catchall_1a8

    move/from16 v16, v8

    const/4 v8, 0x0

    :try_start_178
    invoke-direct {v15, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v28, v15

    :goto_17d
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v29

    iget-object v8, v1, Landroid/widget/Magnifier;->mLock:Ljava/lang/Object;

    iget-object v15, v1, Landroid/widget/Magnifier;->mCallback:Landroid/widget/Magnifier$Callback;
    :try_end_185
    .catchall {:try_start_178 .. :try_end_185} :catchall_1a4

    move/from16 v17, v5

    :try_start_187
    iget-boolean v5, v1, Landroid/widget/Magnifier;->mIsFishEyeStyle:Z

    move-object/from16 v18, v0

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v30, v8

    move-object/from16 v31, v15

    move/from16 v32, v5

    invoke-direct/range {v18 .. v32}, Landroid/widget/Magnifier$InternalPopupWindow;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceControl;IIFIFFLandroid/graphics/drawable/Drawable;Landroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;Z)V

    iput-object v0, v1, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    monitor-exit v7

    goto :goto_1b5

    :catchall_1a4
    move-exception v0

    move/from16 v17, v5

    goto :goto_1ad

    :catchall_1a8
    move-exception v0

    move/from16 v17, v5

    move/from16 v16, v8

    :goto_1ad
    monitor-exit v7
    :try_end_1ae
    .catchall {:try_start_187 .. :try_end_1ae} :catchall_1af

    throw v0

    :catchall_1af
    move-exception v0

    goto :goto_1ad

    :cond_1b1
    move/from16 v17, v5

    move/from16 v16, v8

    :goto_1b5
    const/4 v0, 0x1

    invoke-direct {v1, v6, v4, v0}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    :goto_1b9
    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iput v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    move/from16 v5, v17

    iput v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, v1, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    move/from16 v8, v16

    iput v8, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public update()V
    .registers 5

    iget-object v0, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Landroid/widget/Magnifier;->obtainSurfaces()V

    iget-boolean v0, p0, Landroid/widget/Magnifier;->mDirtyState:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevStartCoordsInSurface:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/Magnifier;->performPixelCopy(IIZ)V

    goto :goto_2b

    :cond_18
    iget-object v0, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Landroid/widget/Magnifier;->mPrevShowSourceCoords:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Landroid/widget/Magnifier;->mPrevShowWindowCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Magnifier;->show(FFFF)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method updateSourceFactors(IF)V
    .registers 5

    iput p2, p0, Landroid/widget/Magnifier;->mZoom:F

    iput p1, p0, Landroid/widget/Magnifier;->mSourceHeight:I

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Magnifier;->mWindowHeight:I

    iget-object v1, p0, Landroid/widget/Magnifier;->mWindow:Landroid/widget/Magnifier$InternalPopupWindow;

    if-eqz v1, :cond_10

    # invokes: Landroid/widget/Magnifier$InternalPopupWindow;->updateContentFactors(IF)V
    invoke-static {v1, v0, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->access$1900(Landroid/widget/Magnifier$InternalPopupWindow;IF)V

    :cond_10
    return-void
.end method
