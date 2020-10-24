.class Lmiui/app/transition/ScaleUpOrDown;
.super Landroid/transition/Transition;
.source ""


# static fields
.field private static final DEFAULT_BACK_TO_SCREEN_CENTER_SCALE:F = 0.6f

.field private static final DEFAULT_ZOOMLESS_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ScaleUpOrDown"


# instance fields
.field private helper:Lmiui/app/transition/FragmentTransitionHelper;

.field private final mColor:I

.field private mIsScaleUp:Z

.field private final mPositionRect:Landroid/graphics/Rect;

.field private final mRadius:I

.field private final mThumb:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/app/transition/FragmentOptions;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    invoke-virtual {p2}, Lmiui/app/transition/FragmentOptions;->getPositionRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lmiui/app/transition/FragmentOptions;->getColor()I

    move-result v0

    iput v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mColor:I

    invoke-virtual {p2}, Lmiui/app/transition/FragmentOptions;->getRadius()I

    move-result v0

    iput v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mRadius:I

    invoke-virtual {p2}, Lmiui/app/transition/FragmentOptions;->getThumb()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiui/app/transition/ScaleUpOrDown;->mThumb:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lmiui/app/transition/ScaleUpOrDown;->mIsScaleUp:Z

    new-instance p2, Lmiui/app/transition/FragmentTransitionHelper;

    invoke-direct {p2, p1}, Lmiui/app/transition/FragmentTransitionHelper;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    const-wide/16 p1, 0x15e

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    sget-object p1, Lmiui/app/transition/FragmentTransitionHelper;->PHYSIC_BASED_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    return-void
.end method

.method static synthetic access$000(Lmiui/app/transition/ScaleUpOrDown;)I
    .locals 0

    iget p0, p0, Lmiui/app/transition/ScaleUpOrDown;->mRadius:I

    return p0
.end method

.method static synthetic access$100(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/View;FFFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiui/app/transition/ScaleUpOrDown;->animViewProgress(Landroid/view/View;FFFF)V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/transition/ScaleUpOrDown;Lmiui/view/RoundedFrameLayout;FFIIFF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lmiui/app/transition/ScaleUpOrDown;->animOverlayViewProgress(Lmiui/view/RoundedFrameLayout;FFIIFF)V

    return-void
.end method

.method private animOverlayViewProgress(Lmiui/view/RoundedFrameLayout;FFIIFF)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    new-instance p0, Landroid/graphics/RectF;

    int-to-float p2, p4

    int-to-float p3, p5

    const/4 p4, 0x0

    invoke-direct {p0, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 p2, 0x8

    new-array p2, p2, [F

    const/4 p3, 0x0

    aput p6, p2, p3

    const/4 p3, 0x1

    aput p6, p2, p3

    const/4 p3, 0x2

    aput p6, p2, p3

    const/4 p3, 0x3

    aput p6, p2, p3

    const/4 p3, 0x4

    aput p7, p2, p3

    const/4 p3, 0x5

    aput p7, p2, p3

    const/4 p3, 0x6

    aput p7, p2, p3

    const/4 p3, 0x7

    aput p7, p2, p3

    invoke-virtual {p1, p0, p2}, Lmiui/view/RoundedFrameLayout;->setClipRoundedBounds(Landroid/graphics/RectF;[F)V

    return-void
.end method

.method private animViewProgress(Landroid/view/View;FFFF)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    instance-of p0, p1, Lmiui/view/ClipRoundedBounds;

    if-eqz p0, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    div-float v2, p4, p2

    aput v2, v0, v1

    const/4 v1, 0x1

    div-float/2addr p4, p3

    aput p4, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 p4, 0x4

    div-float p2, p5, p2

    aput p2, v0, p4

    const/4 p4, 0x5

    div-float/2addr p5, p3

    aput p5, v0, p4

    const/4 p3, 0x6

    aput p2, v0, p3

    const/4 p2, 0x7

    aput p5, v0, p2

    check-cast p1, Lmiui/view/ClipRoundedBounds;

    invoke-interface {p1, p0, v0}, Lmiui/view/ClipRoundedBounds;->setClipRoundedBounds(Landroid/graphics/RectF;[F)V

    :cond_0
    return-void
.end method

.method private createAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createOverlayView(Landroid/content/Context;Landroid/view/View;)Lmiui/view/RoundedFrameLayout;
    .locals 5

    new-instance v0, Lmiui/view/RoundedFrameLayout;

    invoke-direct {v0, p1}, Lmiui/view/RoundedFrameLayout;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lmiui/app/transition/ScaleUpOrDown;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {v0, v1, v3, v4, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p2, p0, Lmiui/app/transition/ScaleUpOrDown;->mThumb:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lmiui/app/transition/ScaleUpOrDown;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v1, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/widget/ImageView;->measure(II)V

    iget-object p1, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p1, p0}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method private isScaleDownToCenter(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 9

    invoke-direct {p0}, Lmiui/app/transition/ScaleUpOrDown;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p4

    sget v0, Lmiui/R$id;->fragment_bottom:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroupOverlay;

    invoke-direct {p0, p1, p4}, Lmiui/app/transition/ScaleUpOrDown;->createOverlayView(Landroid/content/Context;Landroid/view/View;)Lmiui/view/RoundedFrameLayout;

    move-result-object p1

    iget-object p4, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v5, p4, v1

    iget-object p4, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v6, p4, v1

    iget-object p4, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    iget v1, p4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v5

    div-float/2addr v1, v3

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    sub-float/2addr v2, v6

    div-float/2addr p4, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setPivotY(F)V

    iget-object p4, p0, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    invoke-virtual {p4}, Lmiui/app/transition/FragmentTransitionHelper;->getTopRoundedCorner()I

    move-result v3

    iget-object p4, p0, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    invoke-virtual {p4}, Lmiui/app/transition/FragmentTransitionHelper;->getBottomRoundedCorner()I

    move-result v4

    new-instance p4, Lmiui/app/transition/ScaleUpOrDown$1;

    move-object v1, p4

    move-object v2, p0

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lmiui/app/transition/ScaleUpOrDown$1;-><init>(Lmiui/app/transition/ScaleUpOrDown;IIFFLandroid/view/View;Lmiui/view/RoundedFrameLayout;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lmiui/app/transition/ScaleUpOrDown$2;

    invoke-direct {p2, p0, v0, p1}, Lmiui/app/transition/ScaleUpOrDown$2;-><init>(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/ViewGroupOverlay;Lmiui/view/RoundedFrameLayout;)V

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p3
.end method

.method private onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 9

    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p0}, Lmiui/app/transition/ScaleUpOrDown;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3}, Lmiui/app/transition/ScaleUpOrDown;->isScaleDownToCenter(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewGroupOverlay;->clear()V

    invoke-direct {p0, p3, p1}, Lmiui/app/transition/ScaleUpOrDown;->createOverlayView(Landroid/content/Context;Landroid/view/View;)Lmiui/view/RoundedFrameLayout;

    move-result-object p3

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v6

    div-float/2addr v1, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v5, v4, v7

    div-float/2addr v0, v5

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p4, p3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p4, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    invoke-virtual {v0}, Lmiui/app/transition/FragmentTransitionHelper;->getTopRoundedCorner()I

    move-result v5

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    invoke-virtual {v0}, Lmiui/app/transition/FragmentTransitionHelper;->getBottomRoundedCorner()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setLeft(I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setTop(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setRight(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setBottom(I)V

    :cond_2
    new-instance p1, Lmiui/app/transition/ScaleUpOrDown$3;

    move-object v0, p1

    move-object v1, p0

    move v4, v5

    move v5, v8

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lmiui/app/transition/ScaleUpOrDown$3;-><init>(Lmiui/app/transition/ScaleUpOrDown;ZLandroid/view/View;IIFFLmiui/view/RoundedFrameLayout;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lmiui/app/transition/ScaleUpOrDown$4;

    invoke-direct {p1, p0, p4, p3}, Lmiui/app/transition/ScaleUpOrDown$4;-><init>(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/ViewGroupOverlay;Lmiui/view/RoundedFrameLayout;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    const-string p0, "ScaleUpOrDown"

    const-string p1, "not used method:captureEndValues"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    const-string p0, "ScaleUpOrDown"

    const-string p1, "not used method:captureStartValues"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    iget-boolean v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mIsScaleUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/app/transition/ScaleUpOrDown;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/app/transition/ScaleUpOrDown;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
