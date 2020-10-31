.class Lmiui/app/transition/ScaleUpOrDown;
.super Landroid/transition/Transition;
.source "ScaleUpOrDown.java"


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
    .registers 6

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

    move-result-object v0

    iput-object v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mThumb:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lmiui/app/transition/ScaleUpOrDown;->mIsScaleUp:Z

    new-instance v0, Lmiui/app/transition/FragmentTransitionHelper;

    invoke-direct {v0, p1}, Lmiui/app/transition/FragmentTransitionHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Lmiui/app/transition/ScaleUpOrDown;->setDuration(J)Landroid/transition/Transition;

    sget-object v0, Lmiui/app/transition/FragmentTransitionHelper;->PHYSIC_BASED_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Lmiui/app/transition/ScaleUpOrDown;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    return-void
.end method

.method static synthetic access$000(Lmiui/app/transition/ScaleUpOrDown;)I
    .registers 2

    iget v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mRadius:I

    return v0
.end method

.method static synthetic access$100(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/View;FFFF)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lmiui/app/transition/ScaleUpOrDown;->animViewProgress(Landroid/view/View;FFFF)V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/transition/ScaleUpOrDown;Lmiui/view/RoundedFrameLayout;FFIIFF)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lmiui/app/transition/ScaleUpOrDown;->animOverlayViewProgress(Lmiui/view/RoundedFrameLayout;FFIIFF)V

    return-void
.end method

.method private animOverlayViewProgress(Lmiui/view/RoundedFrameLayout;FFIIFF)V
    .registers 12

    invoke-virtual {p1, p2}, Lmiui/view/RoundedFrameLayout;->setTranslationX(F)V

    invoke-virtual {p1, p3}, Lmiui/view/RoundedFrameLayout;->setTranslationY(F)V

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p6, v1, v2

    const/4 v2, 0x1

    aput p6, v1, v2

    const/4 v2, 0x2

    aput p6, v1, v2

    const/4 v2, 0x3

    aput p6, v1, v2

    const/4 v2, 0x4

    aput p7, v1, v2

    const/4 v2, 0x5

    aput p7, v1, v2

    const/4 v2, 0x6

    aput p7, v1, v2

    const/4 v2, 0x7

    aput p7, v1, v2

    invoke-virtual {p1, v0, v1}, Lmiui/view/RoundedFrameLayout;->setClipRoundedBounds(Landroid/graphics/RectF;[F)V

    return-void
.end method

.method private animViewProgress(Landroid/view/View;FFFF)V
    .registers 10

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    instance-of v0, p1, Lmiui/view/ClipRoundedBounds;

    if-eqz v0, :cond_4c

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    div-float v3, p4, p2

    aput v3, v1, v2

    const/4 v2, 0x1

    div-float v3, p4, p3

    aput v3, v1, v2

    const/4 v2, 0x2

    div-float v3, p4, p2

    aput v3, v1, v2

    const/4 v2, 0x3

    div-float v3, p4, p3

    aput v3, v1, v2

    const/4 v2, 0x4

    div-float v3, p5, p2

    aput v3, v1, v2

    const/4 v2, 0x5

    div-float v3, p5, p3

    aput v3, v1, v2

    const/4 v2, 0x6

    div-float v3, p5, p2

    aput v3, v1, v2

    const/4 v2, 0x7

    div-float v3, p5, p3

    aput v3, v1, v2

    move-object v2, p1

    check-cast v2, Lmiui/view/ClipRoundedBounds;

    invoke-interface {v2, v0, v1}, Lmiui/view/ClipRoundedBounds;->setClipRoundedBounds(Landroid/graphics/RectF;[F)V

    :cond_4c
    return-void
.end method

.method private createAnimator()Landroid/animation/ValueAnimator;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/app/transition/ScaleUpOrDown;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lmiui/app/transition/ScaleUpOrDown;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_1a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createOverlayView(Landroid/content/Context;Landroid/view/View;)Lmiui/view/RoundedFrameLayout;
    .registers 9

    new-instance v0, Lmiui/view/RoundedFrameLayout;

    invoke-direct {v0, p1}, Lmiui/view/RoundedFrameLayout;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lmiui/app/transition/ScaleUpOrDown;->mColor:I

    invoke-virtual {v0, v1}, Lmiui/view/RoundedFrameLayout;->setBackgroundColor(I)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lmiui/view/RoundedFrameLayout;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lmiui/view/RoundedFrameLayout;->layout(IIII)V

    iget-object v1, p0, Lmiui/app/transition/ScaleUpOrDown;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_70

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lmiui/app/transition/ScaleUpOrDown;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->measure(II)V

    iget-object v2, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual {v0, v1}, Lmiui/view/RoundedFrameLayout;->addView(Landroid/view/View;)V

    :cond_70
    return-object v0
.end method

.method private isScaleDownToCenter(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 26

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p0}, Lmiui/app/transition/ScaleUpOrDown;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lmiui/R$id;->fragment_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroupOverlay;

    invoke-direct {v8, v11, v12}, Lmiui/app/transition/ScaleUpOrDown;->createOverlayView(Landroid/content/Context;Landroid/view/View;)Lmiui/view/RoundedFrameLayout;

    move-result-object v14

    iget-object v0, v8, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v15, v0, v1

    iget-object v0, v8, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v16, v0, v1

    iget-object v0, v8, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v15

    div-float v7, v0, v2

    iget-object v0, v8, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v1, v1, v16

    div-float v6, v0, v1

    invoke-virtual {v9, v7}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, v8, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    invoke-virtual {v0}, Lmiui/app/transition/FragmentTransitionHelper;->getTopRoundedCorner()I

    move-result v17

    iget-object v0, v8, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    invoke-virtual {v0}, Lmiui/app/transition/FragmentTransitionHelper;->getBottomRoundedCorner()I

    move-result v18

    new-instance v5, Lmiui/app/transition/ScaleUpOrDown$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, v17

    move/from16 v3, v18

    move v4, v15

    move-object v9, v5

    move/from16 v5, v16

    move/from16 v19, v6

    move-object/from16 v6, p2

    move/from16 v20, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lmiui/app/transition/ScaleUpOrDown$1;-><init>(Lmiui/app/transition/ScaleUpOrDown;IIFFLandroid/view/View;Lmiui/view/RoundedFrameLayout;)V

    invoke-virtual {v10, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lmiui/app/transition/ScaleUpOrDown$2;

    invoke-direct {v0, v8, v13, v14}, Lmiui/app/transition/ScaleUpOrDown$2;-><init>(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/ViewGroupOverlay;Lmiui/view/RoundedFrameLayout;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v10
.end method

.method private onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 28

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    iget-object v11, v10, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lmiui/app/transition/ScaleUpOrDown;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v9, v13}, Lmiui/app/transition/ScaleUpOrDown;->isScaleDownToCenter(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewGroupOverlay;->clear()V

    move-object/from16 v8, p1

    invoke-direct {v9, v13, v8}, Lmiui/app/transition/ScaleUpOrDown;->createOverlayView(Landroid/content/Context;Landroid/view/View;)Lmiui/view/RoundedFrameLayout;

    move-result-object v7

    iget-object v0, v9, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v16, v0, v1

    iget-object v0, v9, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v17, v0, v1

    iget-object v0, v9, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v16

    div-float v6, v0, v2

    iget-object v0, v9, Lmiui/app/transition/ScaleUpOrDown;->mPositionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v2, v1, v17

    div-float v5, v0, v2

    if-eqz v14, :cond_66

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_6f

    :cond_66
    invoke-virtual {v11, v6}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v11, v5}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v15, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :goto_6f
    invoke-virtual {v15, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v0, v9, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    invoke-virtual {v0}, Lmiui/app/transition/FragmentTransitionHelper;->getTopRoundedCorner()I

    move-result v18

    iget-object v0, v9, Lmiui/app/transition/ScaleUpOrDown;->helper:Lmiui/app/transition/FragmentTransitionHelper;

    invoke-virtual {v0}, Lmiui/app/transition/FragmentTransitionHelper;->getBottomRoundedCorner()I

    move-result v19

    invoke-virtual {v11}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_8e

    invoke-virtual {v11}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a3

    :cond_8e
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setLeft(I)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setTop(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBottom(I)V

    :cond_a3
    new-instance v4, Lmiui/app/transition/ScaleUpOrDown$3;

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v11

    move-object v10, v4

    move/from16 v4, v18

    move/from16 v20, v5

    move/from16 v5, v19

    move/from16 v21, v6

    move/from16 v6, v16

    move-object/from16 v22, v7

    move/from16 v7, v17

    move-object/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lmiui/app/transition/ScaleUpOrDown$3;-><init>(Lmiui/app/transition/ScaleUpOrDown;ZLandroid/view/View;IIFFLmiui/view/RoundedFrameLayout;)V

    invoke-virtual {v12, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lmiui/app/transition/ScaleUpOrDown$4;

    move-object/from16 v1, v22

    invoke-direct {v0, v9, v15, v1}, Lmiui/app/transition/ScaleUpOrDown$4;-><init>(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/ViewGroupOverlay;Lmiui/view/RoundedFrameLayout;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v12
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 4

    const-string v0, "ScaleUpOrDown"

    const-string v1, "not used method:captureEndValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 4

    const-string v0, "ScaleUpOrDown"

    const-string v1, "not used method:captureStartValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    iget-boolean v0, p0, Lmiui/app/transition/ScaleUpOrDown;->mIsScaleUp:Z

    if-eqz v0, :cond_b

    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/app/transition/ScaleUpOrDown;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/app/transition/ScaleUpOrDown;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
