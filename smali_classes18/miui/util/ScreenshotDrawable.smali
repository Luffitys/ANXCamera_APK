.class public Lmiui/util/ScreenshotDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScreenshotDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenshotDrawable"

.field private static isdDisplayOled:Z

.field private static sHasRealBlur:Z

.field private static sTempLoc:[I


# instance fields
.field private mBgColor:I

.field private mBluredBitmap:Landroid/graphics/Bitmap;

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOwnerView:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const-string v0, "ro.miui.has_real_blur"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/ScreenshotDrawable;->sHasRealBlur:Z

    const-string v0, "ro.vendor.display.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "oled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "ro.display.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    const/4 v1, 0x1

    :cond_29
    sput-boolean v1, Lmiui/util/ScreenshotDrawable;->isdDisplayOled:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lmiui/util/ScreenshotDrawable;->isdDisplayOled:Z

    if-eqz v1, :cond_20

    const v1, 0x1105004d

    goto :goto_23

    :cond_20
    const v1, 0x1105004c

    :goto_23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lmiui/util/ScreenshotDrawable;->mBgColor:I

    return-void
.end method

.method static synthetic access$000(Lmiui/util/ScreenshotDrawable;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/ScreenshotDrawable;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/util/ScreenshotDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private mixColor(II)I
    .registers 5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p2

    div-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static processBlurBehindFlag(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lmiui/util/ScreenshotDrawable;

    if-nez v0, :cond_35

    new-instance v0, Lmiui/util/ScreenshotDrawable;

    invoke-direct {v0, p0}, Lmiui/util/ScreenshotDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/util/ScreenshotDrawable;->setOriginalDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_35

    :cond_21
    if-eqz p2, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lmiui/util/ScreenshotDrawable;

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lmiui/util/ScreenshotDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/util/ScreenshotDrawable;->startVisibilityAnimator(Z)V

    :cond_35
    :goto_35
    return-void
.end method

.method private rebuildBluredBitmap()V
    .registers 5

    sget-boolean v0, Lmiui/util/ScreenshotDrawable;->sHasRealBlur:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    sget v2, Lmiui/util/ScreenshotUtils;->REAL_BLUR_RADIUS:I

    int-to-float v2, v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    goto :goto_37

    :catchall_2f
    move-exception v0

    const-string v1, "ScreenshotDrawable"

    const-string v2, "Screenshot and fastblur failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    return-void
.end method

.method private startVisibilityAnimator(Z)V
    .registers 5

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_f
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v1}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    goto :goto_3d

    :cond_22
    new-array v0, v0, [I

    iget-object v2, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    aput v2, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/util/ScreenshotDrawable$2;

    invoke-direct {v1, p0}, Lmiui/util/ScreenshotDrawable$2;-><init>(Lmiui/util/ScreenshotDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_3d
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_50
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    sget-object v1, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v0, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget v1, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int/2addr v0, v1

    sget-object v1, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sget v2, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int/2addr v1, v2

    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v3, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    add-int v5, v0, v2

    add-int v6, v1, v3

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_42
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4f
    iget v0, p0, Lmiui/util/ScreenshotDrawable;->mBgColor:I

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/util/ScreenshotDrawable;->mixColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_65

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_65
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getOriginalDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    return-void
.end method

.method processShow()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_38

    iget-object v2, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    sget-object v4, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_38

    const/4 v0, 0x1

    :cond_38
    if-eqz v0, :cond_4f

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_49
    const/16 v1, 0xff

    invoke-virtual {p0, v1}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    goto :goto_53

    :cond_4f
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/util/ScreenshotDrawable;->startVisibilityAnimator(Z)V

    :goto_53
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_c
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_f
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setOriginalDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiui/util/ScreenshotDrawable$1;

    invoke-direct {v1, p0}, Lmiui/util/ScreenshotDrawable$1;-><init>(Lmiui/util/ScreenshotDrawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_22

    :cond_1f
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->processShow()V

    :goto_22
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lmiui/util/ScreenshotDrawable;->rebuildBluredBitmap()V

    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
