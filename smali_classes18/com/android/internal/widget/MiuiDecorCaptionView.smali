.class public Lcom/android/internal/widget/MiuiDecorCaptionView;
.super Lcom/android/internal/widget/DecorCaptionView;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final LAYER_COUNTS:I = 0x5

.field private static final SHOW_BORDER_REMINDER:I = 0x1

.field private static final SHOW_NOTHING:I = 0x3

.field private static final SHOW_NOTHING_DELAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiuiDecorCaptionView"

.field private static final UPDATE_CAPTION_COLOR:I = 0x4


# instance fields
.field private mActivityManager:Landroid/app/IActivityTaskManager;

.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mBottomCaption:Landroid/view/View;

.field private final mBottomCaptionRect:Landroid/graphics/Rect;

.field private mBottomImage:Landroid/graphics/drawable/Drawable;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mContent:Landroid/view/View;

.field private mDragSlop:I

.field private mDragging:Z

.field private mFreeFormGestureControlHelper:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mResizeBorder:Landroid/graphics/drawable/Drawable;

.field private mResizeBorderReminderAlpha:I

.field private mResizeBorderReminderShowing:Z

.field private mResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

.field private mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

.field private mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

.field private mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

.field private mScaledResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mShow:Z

.field private mTopCaption:Landroid/view/View;

.field private final mTopCaptionRect:Landroid/graphics/Rect;

.field private mTopImage:Landroid/graphics/drawable/Drawable;

.field private final mTopMoveRect:Landroid/graphics/Rect;

.field private mTopMoveRegion:Landroid/view/View;

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateBorderReminder()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/MiuiDecorCaptionView;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJ)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/MiuiDecorCaptionView;I)I
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/widget/MiuiDecorCaptionView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/policy/PhoneWindow;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->sendWindowClosedIntent()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->showCaptionView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/MiuiDecorCaptionView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method private dipToPx(F)F
    .registers 4

    nop

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private hideCaptionView()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private inFreeformWindowingMode()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mActivityManager:Landroid/app/IActivityTaskManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFillingScreen()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getWindowSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xa05

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private passedSlop(II)Z
    .registers 5

    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    if-gt v0, v1, :cond_1b

    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    if-le v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private scaledDrawable(Landroid/graphics/drawable/BitmapDrawable;F)Landroid/graphics/drawable/BitmapDrawable;
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    int-to-float v4, v1

    div-float/2addr v4, p2

    float-to-int v4, v4

    int-to-float v5, v2

    div-float/2addr v5, p2

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method private sendWindowClosedIntent()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.FREEFORM_WINDOW_CLOSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "window_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showCaptionView()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private startAlphaAnimating(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJZ)V

    return-void
.end method

.method private startAlphaAnimating(IJZ)V
    .registers 11

    const-wide/16 v0, 0x12c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p1, v2, :cond_c8

    if-eq p1, v4, :cond_8e

    const/4 v5, 0x3

    if-eq p1, v5, :cond_49

    const/4 v2, 0x4

    if-eq p1, v2, :cond_11

    goto/16 :goto_10e

    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_20
    new-array v2, v4, [F

    fill-array-data v2, :array_110

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$10;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/widget/MiuiDecorCaptionView$10;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mUpdateCaptionColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_10e

    :cond_49
    new-array v4, v4, [I

    iget v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    aput v5, v4, v3

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$8;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$8;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$9;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_87
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_10e

    :cond_8e
    new-array v4, v4, [I

    iget v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    aput v5, v4, v3

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$6;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$7;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_10e

    :cond_c8
    new-array v4, v4, [I

    iget v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    aput v5, v4, v3

    const/16 v3, 0xff

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$4;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$5;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_108

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomOutDelayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_108
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeZoomInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    nop

    :goto_10e
    return-void

    nop

    :array_110
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateBorderReminder()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    return-void
.end method

.method private updateCaptionVisibility(Z)V
    .registers 14

    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getCurrentFreeFormWindowMode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCaptionVisibility freefromWindowState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " invisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiDecorCaptionView"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v1, :cond_2f

    if-eqz v0, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->showCaptionView()V

    goto :goto_32

    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->hideCaptionView()V

    :goto_32
    if-eqz p1, :cond_46

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-static/range {v5 .. v11}, Landroid/util/MiuiMultiWindowAdapter;->updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/internal/policy/PhoneWindow;)V

    :cond_46
    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_56

    :cond_4f
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_56
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    const/4 v0, 0x3

    if-ge p2, v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_10

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiuiDecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addViewWithoutAttached(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 7

    const/4 v0, 0x3

    if-ge p2, v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_10

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3, v0}, Lcom/android/internal/widget/DecorCaptionView;->addViewWithoutAttached(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiuiDecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    return-object v0
.end method

.method public getCaptionHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-static {p0}, Landroid/util/MiuiMultiWindowAdapter;->getCaptionHeight(Lcom/android/internal/widget/MiuiDecorCaptionView;)I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getDecorView()Lcom/android/internal/policy/DecorView;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCaptionShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 8

    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowAdapter;->updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->registerMiuiGestureControlHelper()V

    return-void
.end method

.method public onConfigurationChanged(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getCaptionHeight()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setCaptionInsetsHeight(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 15

    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onFinishInflate()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11070066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11070054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11070053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11070068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11070069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6b

    move v5, v0

    goto :goto_6c

    :cond_6b
    move v5, v1

    :goto_6c
    invoke-static {v3, v5}, Landroid/util/MiuiMultiWindowUtils;->getOriFreeformScale(Landroid/content/Context;Z)F

    move-result v3

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v5, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->scaledDrawable(Landroid/graphics/drawable/BitmapDrawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " mResizeReminder.getIntrinsicWidth(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  mResizeReminder.getIntrinsicHeight():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiuiDecorCaptionView"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iput v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v0, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/16 v4, 0x51

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v0, 0x42980000    # 76.0f

    div-float/2addr v0, v3

    float-to-int v13, v0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/16 v1, 0x31

    invoke-virtual {v0, v6, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x413a3d71    # 11.64f

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v7, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x419d1eb8    # 19.64f

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    return v2

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderShowing:Z

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/widget/MiuiDecorCaptionView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3e
    const/4 v2, 0x0

    return v2
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sget v4, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRegion:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_3d

    :cond_32
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_3d
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_67

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_6c

    :cond_67
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_6c
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_73

    invoke-static {p0, v1, v0}, Landroid/util/MiuiMultiWindowAdapter;->layoutContentView(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/view/View;I)V

    :cond_73
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateBorderReminder()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    sget v0, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_31

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v2, :cond_44

    invoke-static {p0, v0, v1}, Landroid/util/MiuiMultiWindowAdapter;->getheightUsed(Lcom/android/internal/widget/MiuiDecorCaptionView;II)I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/MiuiDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_14

    if-ne v0, v2, :cond_17

    :cond_14
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaptionRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2a

    return v3

    :cond_2a
    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v2, :cond_3e

    move v6, v3

    goto :goto_3f

    :cond_3e
    move v6, v1

    :goto_3f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_48

    move v7, v3

    goto :goto_49

    :cond_48
    move v7, v1

    :goto_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eqz v8, :cond_77

    if-eq v8, v3, :cond_6c

    const/4 v9, 0x2

    if-eq v8, v9, :cond_57

    if-eq v8, v2, :cond_6c

    goto :goto_88

    :cond_57
    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    if-nez v2, :cond_88

    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    if-eqz v2, :cond_88

    if-nez v6, :cond_67

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/MiuiDecorCaptionView;->passedSlop(II)Z

    move-result v2

    if-eqz v2, :cond_88

    :cond_67
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    iput-boolean v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    goto :goto_88

    :cond_6c
    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    if-nez v2, :cond_71

    goto :goto_88

    :cond_71
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    xor-int/2addr v1, v3

    return v1

    :cond_77
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    if-nez v2, :cond_7e

    return v1

    :cond_7e
    if-eqz v6, :cond_82

    if-eqz v7, :cond_88

    :cond_82
    iput-boolean v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    iput v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownX:I

    iput v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownY:I

    :cond_88
    :goto_88
    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    if-nez v2, :cond_90

    iget-boolean v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    if-eqz v2, :cond_91

    :cond_90
    move v1, v3

    :cond_91
    return v1

    :cond_92
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasWindowFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiDecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_33

    const-wide/16 v1, 0x0

    const/4 v3, 0x4

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->registerMiuiGestureControlHelper()V

    const/4 v0, 0x1

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJZ)V

    goto :goto_33

    :cond_30
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJZ)V

    :cond_33
    :goto_33
    return-void
.end method

.method public registerMiuiGestureControlHelper()V
    .registers 7

    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$3;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeFormGestureControlHelper:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    :try_start_7
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "registerMiuiFreeFormGestureControlHelper"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "unregisterMiuiFreeFormGestureControlHelper"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    nop

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeFormGestureControlHelper:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    aput-object v4, v2, v5

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_49} :catch_4a

    :cond_49
    goto :goto_4e

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4e
    return-void
.end method

.method public removeContentView()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    :cond_a
    return-void
.end method

.method public setFreeformPackageName(Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setFreeformPackageName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :cond_23
    goto :goto_28

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_28
    return-void
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean p2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getCaptionHeight()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setCaptionInsetsHeight(I)V

    const v0, 0x1020393

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopMoveRegion:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility(Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterMiuiGestureControlHelper()V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "unregisterMiuiFreeFormGestureControlHelper"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1d

    nop

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    goto :goto_22

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method
